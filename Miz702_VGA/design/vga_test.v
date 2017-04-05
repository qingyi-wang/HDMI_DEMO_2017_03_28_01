//time:2015-11-17 11:25:50
//author:rzjm
//ÓÃmiz702¿ª·¢°å(¼æÈÝzedboard)ÉÏµÄVGAÏÔÊ¾¾²Ì¬Í¼Ïñ£¬
module vga_test(
                    input   wire            sys_clk,
                    input   wire            sys_rst_n,
                    output  wire            hsync,
                    output  wire            vsync,
                    output  wire            [11:0]   rgb,
				    output	 reg			 led
                );
//ºì_ÂÌ_ÉB
parameter	BLACK   = 12'b0000_0000_0000;  
parameter	BLUE    = 12'b0000_0000_1111;
parameter	GREEN   = 12'b0000_1111_0000;
parameter	DIAN	= 12'b0000_1111_1111;
parameter	RED     = 12'b1111_0000_0000;
parameter	PURPLE  = 12'b1111_0000_1111;
parameter	YELLOW  = 12'b1111_1111_0000;
parameter	WHITE   = 12'b1111_1111_1111;
					 
wire    [9:0]   pixel_x;
wire    [9:0]   pixel_y;
wire 	         clk_25mhz;
reg	 [11:0]rgb_reg;

/*
always @ (posedge clk_25mhz or negedge sys_rst_n)
    if(!sys_rst_n)
        begin
            rgb_reg <= 12'b0;
        end 
    else
	 begin				//ÏÔÊ¾²ÊÌõ
			if(pixel_x < 10'd80)
						rgb_reg = BLACK;
					else if(pixel_x < 10'd160)
						rgb_reg = BLUE;     		
					else if(pixel_x < 10'd240)
						rgb_reg = GREEN;	 			
					else if(pixel_x < 10'd320)
						rgb_reg = DIAN;		
					else if(pixel_x < 10'd400)
						rgb_reg = RED;				
					else if(pixel_x < 10'd480)
						rgb_reg = PURPLE;					
					else if(pixel_x < 10'd560)
						rgb_reg = YELLOW;			
					else	
						rgb_reg = WHITE;   
	end
*/

//ÏÔÊ¾¾²Ì¬Í¼Ïñ640*480
reg		[23:0] cnt;
always @(posedge clk_25mhz or negedge sys_rst_n)
	if(!sys_rst_n)
		begin
			cnt <= 0;
			led <= 0;
		end 
	else
		begin
			cnt <= cnt + 1'b1;
			if(cnt == 24'd12500000)
				begin 
					cnt <= 24'b0;
					led <= ~led;
				end 
		end 
always @ (posedge clk_25mhz or negedge sys_rst_n)
    if(!sys_rst_n)
        begin
            rgb_reg <= 12'b0;
        end 
    else
		begin				//ÏÔÊ¾Í¼Ïñ
			//rgb_reg <= q_sig;			
			rgb_reg[7:4] <= q_sig[7:4];
			rgb_reg[3:0] <= q_sig[3:0];
			rgb_reg[11:8] <= q_sig[11:8];	
		end		
always @ (posedge clk_25mhz or negedge sys_rst_n)
    if(!sys_rst_n)
        begin
            address_sig <= 19'b0;
        end 
    else
		begin				
			if(pixel_x>=0 && pixel_x<= 639 && pixel_y>=0 && pixel_y<=479)
				address_sig = (pixel_x + 640*pixel_y);
		end	



//////////////////////////////////////////////////////////////		
assign rgb = (video_en == 1'b1) ? rgb_reg:12'b0;

vga_sync vga_syn_inst(
            .clk            (clk_25mhz),
            .rst_n          (sys_rst_n),
            .video_en       (video_en),
            .hsync          (hsync),
            .vsync          (vsync),
            .pixel_x        (pixel_x),
            .pixel_y        (pixel_y)
                       
        );

reg     [18:0]  address_sig;
wire    [11:0]  q_sig;

rom_pic rom_pic_inst (
  .clka(clk_25mhz),    // input wire clka
  .addra(address_sig),  // input wire [18 : 0] addra
  .douta(q_sig)  // output wire [11 : 0] douta
);

clk_wiz_0 clk_wiz_0_inst 
       (
       // Clock in ports
        .clk_in1(sys_clk),
        // Clock out ports
        .clk_out1(clk_25mhz)
       );
               
endmodule