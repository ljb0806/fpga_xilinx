`timescale 1ns / 1ps

module adc_axis_packer#
(
    parameter                           AD_WIDTH = 16              ,
    parameter                           PKT = 16384
)
(
    input                               i_clk                      ,
    input                               i_rst_n                    ,

    input              [AD_WIDTH-1:0]   i_adc_data_a               ,
    input              [AD_WIDTH-1:0]   i_adc_data_b               ,

    output reg         [AD_WIDTH*2-1:0] o_m_axis_tdata             ,
    output reg                          o_m_axis_tvalid            ,
    output wire                         o_m_axis_tlast             ,
    input                               i_m_axis_tready            ,

    input                               i_gate_enable
);

reg [$clog2(PKT)-1:0]  cnt;
reg                    gate_d1;

wire gate_rise  = i_gate_enable && !gate_d1;
wire is_last    = (cnt == (PKT - 1));
assign o_m_axis_tlast = is_last;

always @(posedge i_clk or negedge i_rst_n) begin
    if (!i_rst_n) begin
        cnt             <= 0;
        o_m_axis_tdata  <= 0;
        o_m_axis_tvalid <= 1'b0;
        gate_d1         <= 1'b0;
    end
    else begin
        gate_d1 <= i_gate_enable;

        if (!o_m_axis_tvalid && gate_rise)
            o_m_axis_tvalid <= 1'b1;
        else if (o_m_axis_tvalid && i_m_axis_tready && is_last)
            o_m_axis_tvalid <= 1'b0;

        if (o_m_axis_tvalid && i_m_axis_tready)
            cnt <= is_last ? 0 : (cnt + 1);
        else if (!o_m_axis_tvalid)
            cnt <= 0;

        o_m_axis_tdata <= {i_adc_data_b, i_adc_data_a};
    end
end

endmodule
