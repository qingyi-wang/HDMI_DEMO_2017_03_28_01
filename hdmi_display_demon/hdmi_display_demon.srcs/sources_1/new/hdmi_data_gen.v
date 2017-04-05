`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/12/26 10:52:47
// Design Name: 
// Module Name: hdmi_data_gen
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


module hdmi_data_gen
	(
	input			pix_clk,
	output [7:0]	VGA_R,
	output [7:0]	VGA_G,
	output [7:0]	VGA_B,
	output			VGA_HS,
	output			VGA_VS,
	output			VGA_DE
	);

	/*
//---------------------------------//
// 水平扫描参数的设定1280*720  60HZ
//--------------------------------//
parameter H_Total		=	1650;
parameter H_Sync		=	40;
parameter H_Back		=	220;
parameter H_Active		=	1280;
parameter H_Front		=	110;
parameter H_Start		=	260;
parameter H_End			=	1540;
//-------------------------------//
// 垂直扫描参数的设定1280*720	60HZ  	
//-------------------------------//
parameter V_Total		=	750;
parameter V_Sync		=	5;
parameter V_Back		=	20;
parameter V_Active		=	720;
parameter V_Front		=	5;
parameter V_Start		=	25;
parameter V_End			=	745;

	*/
	
//红_绿_蓝
parameter	BLACK   = 16'b00000_000000_00000;  
parameter	BLUE    = 16'b00000_000000_11111;
parameter	GREEN   = 16'b00000_111111_00000;
parameter	DIAN	= 16'b00000_111111_11111;
parameter	RED     = 16'b11111_000000_00000;
parameter	PURPLE  = 16'b11111_000000_11111;
parameter	YELLOW  = 16'b11111_111111_00000;
parameter	WHITE   = 16'b11111_111111_11111;
	
//---------------------------------//
// 水平扫描参数的设定640*480  60HZ
//--------------------------------//
parameter H_Total		=	800;
parameter H_Sync		=	96;
parameter H_Back		=	48;
parameter H_Active		=	640;
parameter H_Front		=	16;
parameter H_Start		=	144;
parameter H_End			=	784;
//-------------------------------//
// 垂直扫描参数的设定640*480	60HZ  	
//-------------------------------//
parameter V_Total		=	524;
parameter V_Sync		=	2;
parameter V_Back		=	31;
parameter V_Active		=	480;
parameter V_Front		=	11;
parameter V_Start		=	33;
parameter V_End			=	513;


reg[11:0]	x_cnt;
always @(posedge pix_clk)		//水平计数
begin
	if(1'b0)				x_cnt <= 1;
	else if(x_cnt==H_Total) x_cnt <= 1;
	else					x_cnt <= x_cnt + 1;
end

reg	hsync_r;
reg	hs_de;
always @(posedge pix_clk)
begin
	if(1'b0) 			   hsync_r <= 1'b1;
	else if(x_cnt==1) 	   hsync_r <= 1'b0;
	else if(x_cnt==H_Sync) hsync_r <= 1'b1;
	else; 
	
	if(1'b0)                hs_de <= 1'b0;
	else if(x_cnt==H_Start) hs_de <= 1'b1;
	else if(x_cnt==H_End)   hs_de <= 1'b0;
	else;
end

reg[11:0]	y_cnt;
always @(posedge pix_clk)
begin
 // 垂直计数，有两个条件判断，先判断 y 是否计数计满，再判断 x 计数满的情况下增加 y_cnt 的垂直计数
	if(1'b0) 				y_cnt <= 1; 
	else if(y_cnt==V_Total) y_cnt <= 1;
	else if(x_cnt==H_Total) y_cnt <= y_cnt + 1;
	else;
end

reg	vsync_r;
reg	vs_de;
always @(posedge pix_clk)
begin
	if(1'b0) 				vsync_r <= 1'b1;
	else if(y_cnt==1)       vsync_r <= 1'b0;
	else if(y_cnt==V_Sync)  vsync_r <= 1'b1;
	else;
	
	if(1'b0)   				vs_de <= 1'b0;
	else if(y_cnt==V_Start) vs_de <= 1'b1;
	else if(y_cnt==V_End)   vs_de <= 1'b0;
	else;
end


reg[16:0]	VGA_rgb;
/*
always @(posedge pix_clk)		//传输图像
begin  
	if(1'b0) 
		begin 
			VGA_rgb <= 16'b0; 	 
		end
   else
		begin
			VGA_rgb[4:0]   <= q_sig[4:0];
			VGA_rgb[10:5]  <= q_sig[10:5];
			VGA_rgb[15:11] <= q_sig[15:11];
		end 	
end
*/
		
// 测试图像
always @ (posedge pix_clk)
 
	if(1'b0)
        begin
            VGA_rgb <= 16'b0;
        end 
    else
	 begin				//显示彩条
			if(x_cnt < 10'd144)      VGA_rgb = BLACK;
			else if(x_cnt < 10'd224) VGA_rgb = BLUE;     		
			else if(x_cnt < 10'd304) VGA_rgb = GREEN;	 			
			else if(x_cnt < 10'd384) VGA_rgb = DIAN;		
			else if(x_cnt < 10'd464) VGA_rgb = RED;				
			else if(x_cnt < 10'd544) VGA_rgb = PURPLE;
			else if(x_cnt < 10'd624) VGA_rgb = YELLOW;
			else	                 VGA_rgb = WHITE;   
	end
/*
		
		begin
			VGA_rgb <= 16'h00_ff_ff;                 //传输图像测试
		end
*/

reg [14:0]address;
// 内存地址进行选址
always @ (posedge pix_clk)
    if(1'b0)
        begin
			address <= 14'b0;
        end 
    else
		begin				
			if(x_cnt >= 0 && x_cnt <= 639 && y_cnt >= 0 && y_cnt <= 479)
				address = (x_cnt + 640*y_cnt);
		end	



// 存储图像的 IP
wire    [14:0]  address_sig; 	// 地址和数据
wire    [15:0]  q_sig;
assign address_sig = address;

// 这个是 RGB88 的模式，消耗的rom 资源很多， 7010 跑不动
/*
rom_pic rom_pic_inst (
  .clka(pix_clk),    // input wire clka
  .addra(address_sig),  // input wire[18 : 0] addra
  .douta(q_sig)  // output wire [11 : 0] douta
);*/

image_rom u_image_rom
(	
	.clka(pix_clk),
	.addra(address_sig),
	.douta(q_sig)
);



assign VGA_HS	=	hsync_r;
assign VGA_VS	=	vsync_r;
assign VGA_DE	=	hs_de	&	vs_de;

assign VGA_R	=	VGA_DE?VGA_rgb[15:11]:5'h0;
assign VGA_G	=	VGA_DE?VGA_rgb[10:5]:6'h0;
assign VGA_B	=	VGA_DE?VGA_rgb[4:0]:5'h0;


/*
assign VGA_R	=	8'hff;
assign VGA_G	=	8'hff;
assign VGA_B	=	8'hff;
*/
endmodule
