//test the vga_sync.v

`timescale      1ns/1ns

module vga_sync_tb;
    reg         clk_tb;
    reg         rst_n_tb;
    wire        v_video_en_tb;
    wire        h_video_en_tb;
    wire        hsync_tb;
    wire        vsync_tb;
    wire  [9:0] pixel_x_tb;
    wire  [9:0] pixel_y_tb;


    initial
    begin
        clk_tb = 1'b0;
        rst_n_tb = 1'b0;
        
        #100
        rst_n_tb = 1'b1;
    end 
    
    always #20 clk_tb = ~clk_tb;
    
    
vga_sync vga_sync_inst(
        .clk           (clk_tb),
        .rst_n         (rst_n_tb),
        .v_video_en    (v_video_en_tb),
        .h_video_en    (h_video_en_tb),
        .hsync         (hsync_tb),
        .vsync         (vsync_tb),
        .pixel_x       (pixel_x_tb),
        .pixel_y       (pixel_y_tb)
                   
    );


endmodule

