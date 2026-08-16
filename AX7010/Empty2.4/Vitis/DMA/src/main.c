#include <math.h>
#include <stdlib.h>
#include "xaxidma.h"
#include "xgpio.h"
#include "xil_cache.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "kiss_fftr.h"

#define BUF_RX      0x0A000000
#define PKT         16384
#define N           (PKT * 4)
#define FFT_LEN     10000
#define FS          20000000.0f

#define GPIO1_DEVICE_ID    XPAR_AXI_GPIO_1_DEVICE_ID

static XAxiDma          dma;
static XGpio            gpio;
static volatile u32    *rx = (u32 *)BUF_RX;

static float            fft_in  [FFT_LEN];
static float            fft_out [FFT_LEN + 2];
static float            fft_mag [FFT_LEN / 2 + 1];
static kiss_fftr_cfg    fft_cfg;

void DMA_Init(void) {
    XAxiDma_CfgInitialize(&dma, XAxiDma_LookupConfig(XPAR_AXIDMA_0_DEVICE_ID));
    XAxiDma_IntrDisable(&dma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
    Xil_DCacheDisable();
}

void GPIO_Init(void) {
    XGpio_Initialize(&gpio, GPIO1_DEVICE_ID);
    XGpio_SetDataDirection(&gpio, 1, 0x00000000);
    XGpio_DiscreteWrite(&gpio, 1, 0x00000000);
}

static inline void Gate_Set(int val) {
    XGpio_DiscreteWrite(&gpio, 1, val ? 0x00000001 : 0x00000000);
}

void DMA_Sample(void) {
    XAxiDma_SimpleTransfer(&dma, (UINTPTR)rx, N, XAXIDMA_DEVICE_TO_DMA);
    Gate_Set(1);
    while (XAxiDma_Busy(&dma, XAXIDMA_DEVICE_TO_DMA));
    Gate_Set(0);
}

void FFT_Calc(void) {
    for (int i = 0; i < FFT_LEN; i++)
        fft_in[i] = (float)(rx[i] & 0xFFFF);

    kiss_fftr(fft_cfg, fft_in, fft_out);

    fft_mag[0] = fabsf(fft_out[0]) / FFT_LEN;
    fft_mag[FFT_LEN / 2] = fabsf(fft_out[FFT_LEN]) / FFT_LEN;
    for (int i = 1; i < FFT_LEN / 2; i++) {
        float re = fft_out[2 * i];
        float im = fft_out[2 * i + 1];
        fft_mag[i] = sqrtf(re * re + im * im) * 2.0f / FFT_LEN;
    }
}

void Print_Spectrum(void) {
    int step = (int)(FS / FFT_LEN);
    for (int i = 0; i <= FFT_LEN / 2; i++)
        xil_printf("%d, %d.%02d\r\n",
                   i * step,
                   (int)fft_mag[i], ((int)(fft_mag[i] * 100) % 100));
}

int main(void) {
    DMA_Init();
    GPIO_Init();
    fft_cfg = kiss_fftr_alloc(FFT_LEN, 0, NULL, NULL);

    xil_printf("=== DMA FFT Loop Start ===\r\n");
    xil_printf("FS=%d Hz  FFT_LEN=%d  Res=%d Hz\r\n",
               (int)FS, FFT_LEN, (int)(FS / FFT_LEN));

    while (1) {
        DMA_Sample();
        FFT_Calc();
        Print_Spectrum();

        for (volatile int d = 0; d < 2000000; d++);
    }
    return 0;
}
