`timescale 1ns/1ns


module vga_test_tb;

reg         sys_clk_tb;
reg         sys_rst_n_tb;

wire        hsync_tb;
wire        vsync_tb;
wire        v_video_en;
wire        h_video_en;

wire [2:0]  rgb_tb;

initial begin
    
    sys_clk_tb = 1'b0;
    sys_rst_n_tb = 1'b0;    
    #200
    
    sys_rst_n_tb = 1'b1;

end 

always #20 sys_clk_tb = ~sys_clk_tb;


vga_test vga_test_inst(
                    .sys_clk            (sys_clk_tb),
                    .sys_rst_n          (sys_rst_n_tb),
                    .hsync              (hsync_tb),
                    .vsync              (vsync_tb),
						        .v_video_en         (v_video_en),   //内部信号
                    .h_video_en         (h_video_en),   //内部信号
                    .rgb                (rgb_tb)
                );


endmodule