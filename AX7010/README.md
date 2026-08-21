# AX7010 — ADC 采集 + DMA 搬运 + FFT 频谱分析

基于 **ALINX AX7010**（黑金 Zynq-7000，`xc7z010clg400-2`）开发板。
PL 端完成 ADC 采样与 AXI-Stream 打包，经 AXI DMA 搬运至 DDR；PS 端（ARM Cortex-A9）
对数据做 FFT 频谱分析，结果经串口打印。

## 工程结构

| 路径 | 说明 |
|---|---|
| `Empty2.41/` | 当前版本：真实 ADC 数据采集，100 MHz 采样（AD/DA/AXI-Stream 同源） |
| `Empty2.4/` | 上一版本：DDS 作测试源，125 MHz 采样 |

## 环境

- Vivado / Vitis **2022.2**
- 器件：`xc7z010clg400-2`（Zynq-7000：双核 ARM Cortex-A9 + Artix-7 PL）

## PL 端（Vivado 工程）

顶层 `Empty.v` 例化 Block Design 与自定义逻辑：

| 模块 | 说明 |
|---|---|
| Block Design `Hardware` | Zynq PS7 + AXI DMA + AXI GPIO + AXI-Stream FIFO + SmartConnect |
| `clk_wiz_0` | 50 MHz 板载时钟 → 100 / 125 / 200 / 250 / 20 MHz（当前仅用 100 MHz） |
| ADC 采集 | 两路 16-bit ADC（A/B），`clk_100` 上升沿锁存，`o_AD_CLK = 100 MHz` |
| 数据转换 | `{~data[15], data[14:0]}` 偏移二进制 → 补码，供 packer / DAC 使用 |
| DAC 回环 | `o_DA_CLK = 100 MHz`（下降沿输出），`wave_sel` 切换原码 / 补码输出 |
| `adc_axis_packer` | 两路 16-bit 拼成 32-bit AXI-Stream，包长 16384 |
| `vio_0` | 在线调试（`wave_sel` DAC 波形选择；幅度 / 频率步进为保留项） |

### 数据通路

```
ADC（A/B 两路，偏移二进制 → 补码）→ adc_axis_packer → S_AXIS → axis_data_fifo → AXI DMA → DDR
```

> 相较 `Empty2.4`：去掉了 DDS 测试源、`ila_0` 及注释掉的 `mult_gen_0` 幅度调制，
> 改为采集真实 ADC 数据；AD/DA 与 AXI-Stream 时钟由 125 MHz 统一改为 100 MHz。
> `DDS.v` / `SINROM_4096_16` 保留在工程中但未例化，可按需作测试源。

## PS 端（Vitis 工程）

- 平台：`Vitis/ADC_AXI/`（由 `ADC_AXI.xsa` 生成，含 FSBL 源码）
- 应用：`Vitis/DMA/`（主程序 `src/main.c`，依赖 kissfft + CMSIS-DSP）

主循环：**DMA 采样 → 10000 点实数 FFT（kiss_fftr）→ 打印频谱**。

- 串口：`UART1`（MIO 48/49）。`UART_Init()` 中 `XUartPs_SetBaudRate(&uart, 921600)` 将波特率由默认 115200 改为 **921600**。

| 参数 | 值 |
|---|---|
| 采样率 FS | 100 MHz |
| FFT 点数 | 10000 |
| 每包点数 PKT | 16384 |
| 采集缓存地址 | 0x0A000000（DDR） |

## 其他文件

| 文件 | 说明 |
|---|---|
| `coe_creater.m` | MATLAB 脚本，生成 DDS 正弦查找表 `.coe` |
| `waveform_4096x16bit.coe` | 4096×16 正弦波初始化文件（SINROM 用） |
| `ADC_AXI.xsa` | 导出给 Vitis 的硬件平台描述（含比特流） |

## 重建步骤

1. Vivado 2022.2 打开 `Empty.xpr`，生成 Block Design，综合 / 实现出比特流
2. File → Export Hardware 导出 `.xsa`
3. Vitis 2022.2 导入 `.xsa` 创建平台，导入 `Vitis/DMA` 应用
4. 编译应用，JTAG 下载到板卡运行
