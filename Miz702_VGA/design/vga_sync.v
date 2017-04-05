// vga_sync
//author:rzjm
//email:fengshuaiemail@163.com
//time:2015-11-16 18:52:18

 
module vga_sync(
        input   wire            clk,
        input   wire            rst_n,
		output	wire		    video_en/*synthesis noprune*/,
        output  reg             hsync/*synthesis noprune*/,
        output  reg             vsync/*synthesis noprune*/,
        output  wire    [9:0]   pixel_x,
        output  wire    [9:0]   pixel_y            
        );
         
        reg     [9:0] pixel_cnt;
        reg     [9:0] line_cnt;
		  
		  
        reg             v_video_en/*synthesis noprune*/;
        reg             h_video_en/*synthesis noprune*/;
        
   //��ͬ��     
        always @(posedge clk or negedge rst_n)
            if(!rst_n)
                begin
                    pixel_cnt <= 10'b0;
                end
            else
                begin
                    pixel_cnt <= pixel_cnt + 1'b1;
						  if(pixel_cnt == 10'd799)
						  begin
								 pixel_cnt <= 10'b0;
						  end
                end
                
               
         always @(posedge clk or negedge rst_n)
            if(!rst_n)
                begin
                     h_video_en <= 1'b1;
							hsync <= 1'b1;
                end
            else
                begin
                    case (pixel_cnt) 
                        10'd0:
                            begin
                                h_video_en <= 1'b1;
                            end
                        10'd639:
                            begin
                                h_video_en <= 1'b0;
                            end 
                        10'd655:
                            begin
                                hsync <= 1'b0;
                            end 
                        10'd751:
                            begin
                                hsync <= 1'b1;
                            end             
                    endcase
                end
                
                
        //��ͬ��        
         always @(posedge clk or negedge rst_n)
            if(!rst_n)
                begin
                    line_cnt <= 10'b0;
                end
            else
                begin
                    if(pixel_cnt == 10'd799)
                        begin
                            line_cnt <= line_cnt + 1'b1;
                        end 
                    
                      if(line_cnt == 10'd524)
                      begin
                            line_cnt <= 10'b0;
                      end 
                end
                
        always @(posedge clk or negedge rst_n)
            if(!rst_n)
                begin
                    v_video_en <= 1'b1;
				    vsync <= 1'b1;
                end
            else
                begin
                    case(line_cnt)
                        10'd0:
                            begin
                                v_video_en <= 1'b1;
                            end 
                        10'd479:
                            begin
                                v_video_en <= 1'b0;
                            end 
                        10'd489:
                            begin
                                vsync <= 1'b0;
                            end 
                        10'd491:
                            begin
                                vsync <= 1'b1;
                            end 
                    endcase
                end               
 
        assign pixel_x = pixel_cnt;
        assign pixel_y = line_cnt;
		  
		assign video_en = ((h_video_en == 1'b1) &&  (v_video_en == 1'b1)); 

            
endmodule