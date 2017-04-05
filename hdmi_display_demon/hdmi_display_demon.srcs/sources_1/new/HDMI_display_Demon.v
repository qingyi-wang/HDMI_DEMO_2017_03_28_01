`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/12/26 11:05:30
// Design Name: 
// Module Name: HDMI_display_Demon
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module HDMI_display_Demon(
    input       clk_100M,
    output      HDMI_CLK_P,
    output      HDMI_CLK_N,
    output      HDMI_D2_P,
    output      HDMI_D2_N,
    output      HDMI_D1_P,
    output      HDMI_D1_N,
    output      HDMI_D0_P,
    output      HDMI_D0_N,
    output     reg[1:0] LED
);

wire pixclk;
wire[7:0]   R,G,B;
wire HS,VS,DE;
hdmi_data_gen u_hdmi_data_gen
(
    .pix_clk            (pixclk),
    .VGA_R              (R),
    .VGA_G              (G),
    .VGA_B              (B),
    .VGA_HS             (HS),
    .VGA_VS             (VS),
    .VGA_DE             (DE)
);

wire serclk;
wire lock;
wire[23:0]  RGB;
assign RGB={R,G,B};
HDMI_FPGA_ML_0 u_HDMI
(
    .PXLCLK_I           (pixclk),
    .PXLCLK_5X_I        (serclk),
    .LOCKED_I           (lock),
    .RST_N              (1'b1),
    .VGA_HS             (HS),
    .VGA_VS             (VS),
    .VGA_DE             (DE),
    .VGA_RGB            (RGB),
    .HDMI_CLK_P         (HDMI_CLK_P),
    .HDMI_CLK_N         (HDMI_CLK_N),
    .HDMI_D2_P          (HDMI_D2_P),
    .HDMI_D2_N          (HDMI_D2_N),
    .HDMI_D1_P          (HDMI_D1_P),
    .HDMI_D1_N          (HDMI_D1_N),
    .HDMI_D0_P          (HDMI_D0_P),
    .HDMI_D0_N          (HDMI_D0_N)
); 

clk_wiz_0   u_clk
(
    .clk_in1            (clk_100M),
    .resetn             (1'b1),
    .clk_out1           (pixclk),
    .clk_out2           (serclk),
    .locked             (lock)
);

always @(clk_100M)
	begin
		LED[0] = 0;
		LED[1] = 1;
	end

endmodule
