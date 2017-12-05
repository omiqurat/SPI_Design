`timescale 1 ns / 1 ps
module spi_miso (control_clk_miso,spi_mosi_out,spi_miso_out,spi_cs,spi_clk,spi_miso_in,n_reset,add_byte);

 parameter DSIZE = 8;
output control_clk_miso;
output spi_mosi_out;
 output  [DSIZE-1:0] spi_miso_out;
 input spi_cs;
 input  spi_clk,n_reset;
input spi_miso_in;
input [7:0] add_byte;

	
reg control_clk_miso;
reg [DSIZE-1:0] spi_miso_out;
reg spi_mosi_out;
reg [DSIZE-1:0] data,final_data;
reg[3:0] point,point_add;
      
reg [2:0] control;

	





// create control clock for sending data to asy_fifo_output


always@(posedge spi_clk or negedge n_reset)
if(! n_reset)begin
                 
                 control<=3'b010;
                 control_clk_miso<=1'b0;
			 end
else  begin
                      if(control==3'd7) begin
   		
                                             control_clk_miso<=~control_clk_miso;
   		                                     control<=0;
   
			                             end
		              else
				
                          begin
			                    control<=control+1;
		                  end
                   end
	


// spi_clk read data bit by bit from slave and keep it in final data

always @(posedge spi_clk or negedge n_reset)
if (!n_reset) begin
                       
	                point<=4'd0;
		            point_add<=4'd0;
					data<=8'd0;
				    final_data<=8'd0;
					
				end
else  begin

					 if(spi_cs) 
                               begin
                                    spi_mosi_out<=0;
                                    point<=4'd0;
                                    data<= 8'd0;
               
                                end

	                 else if (!spi_cs )
	                              begin
	                                  if(point_add==4'd7)
	                                                       begin
	                                                           if (point==4'd8)
                                                                                begin      
                                                                                    final_data<=data;
                                                                                    point<=4'd0;
										    point_add<=4'd0;
										end
								else //if (control_clk_miso==1)
										begin
										      data[point]<=spi_miso_in;	
		
										      spi_mosi_out<=0;
 //$display ("at time %0d data=%b  ", $time, data);
 //$display ("at time %0d point=%d  ", $time, point);

								           		point<= point+1;

										end
		
								end
					else if (control_clk_miso==0)
								begin
								  spi_mosi_out<=add_byte[point_add];	  /// assign address byte.... adress byte send through mosi
								   data<=8'd0;

 $display ("at time %0d spi_mosi_out=%b  ", $time, spi_mosi_out);
 $display ("at time %0d point_add=%d  ", $time, point_add);

								   point_add<= point_add+1;
								end
	 
					end 
		 end
 // control clock control final data and push it to spi_miso_out

always @(posedge control_clk_miso or negedge n_reset)


 if (!n_reset) begin
                  spi_miso_out<=0;
               end
else begin

                      if(spi_cs) begin
                                     spi_miso_out<=0;
								    end
									
                     else                
                          begin

               
                             spi_miso_out<=final_data;
                 
            
          		          end	

		            end

		endmodule

