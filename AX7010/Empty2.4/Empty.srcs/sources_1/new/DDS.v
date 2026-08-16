`timescale 1ns / 1ps

module DDS#
(
    parameter                           DWIDTH = 16                ,
    parameter                           PWIDTH = 48                ,
    parameter                           AWIDTH = 12                
)
(
    input                               i_clk                      ,
    input                               i_rst_n                    ,

    input              [PWIDTH-1:0]     i_STEP                     ,

    output reg         [DWIDTH-1:0]     o_dds_out                  ,
    output reg         [DWIDTH-1:0]     o_dds_out_signed            
);

wire [AWIDTH-1:0] addr;
reg [PWIDTH-1:0] phase_acc = 0;
assign addr = phase_acc[PWIDTH-1:PWIDTH-AWIDTH];

always @(posedge i_clk or negedge i_rst_n) begin
    if(!i_rst_n) begin
        phase_acc <= 0;
    end
    else begin
        phase_acc <= phase_acc + i_STEP;
    end
end

wire [DWIDTH-1:0] douta;
SINROM_4096_16 sinrom
(
    .clka(i_clk),
    .addra(addr),
    .douta(douta)
);

always @(posedge i_clk or negedge i_rst_n) begin
    if(!i_rst_n) begin
        o_dds_out <= 0;
        o_dds_out_signed <= 0;
    end
    else begin
        o_dds_out <= douta;
        o_dds_out_signed <= {~douta[DWIDTH-1], douta[DWIDTH-2:0]};
    end
end

endmodule
