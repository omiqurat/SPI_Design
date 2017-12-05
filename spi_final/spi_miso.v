`timescale 1 ns / 1 ps
module spi_miso (control_clk_miso,spi_mosi_out,spi_miso_out,spi_cs,spi_clk,spi_miso_in);

 parameter DSIZE = 8;
output control_clk_miso;
output spi_mosi_out;
 output  [DSIZE-1:0] spi_miso_out;
 input spi_cs;
 input  spi_clk;
input spi_miso_in;

	
reg control_clk_miso;
reg [DSIZE-1:0] spi_miso_out;
reg spi_mosi_out;
reg [DSIZE-1:0] data,final_data,add_byte;
reg[2:0] point,point_add;
      
reg [2:0] control;

	



initial
            begin
              spi_miso_out<=0;
	           point<=3'b000;
		       point_add<=3'b000;
               data<=8'd0;
			   final_data<=8'd0;
               control<=3'b010;
               control_clk_miso<=1'b0;
             
			   add_byte<=10000101; // address byte
 
		                end
	


// create control clock for sending data to asy_fifo_output


always@(posedge spi_clk)


        begin
           if(control==3'd7)
               begin
   		
                        control_clk_miso<=~control_clk_miso;
   		       control<=0;
   
			end
		else
				
                       begin
			control=control+1;
		            end
        end
	


// spi_clk read data bit by bit from slave and keep it in final data

always @(posedge spi_clk)

	 if(spi_cs) 
             begin
           spi_mosi_out<=0;
            point<=0;
           data<= 8'd0;
               
               end

	  else if (!spi_cs )
	   begin
	   if(point_add==3'b111)
	       begin
	          if (point==3'b111)
                   begin      
                    final_data<=data;
                         point<=0;
                     	point_add<=0;
					 
                    end
               else
                   begin
		    data[point]<=spi_miso_in;	
		
             spi_mosi_out<=0;
 $display ("at time %0d data=%b  ", $time, data);
 $display ("at time %0d point=%d  ", $time, point);

                     point<= point+1;

		    end
		
			end
	 else
	 begin
	  spi_mosi_out<=add_byte[point_add];	  /// assign address byte.... adress byte send through mosi
		data<=8'd0;

 $display ("at time %0d spi_mosi_out=%b  ", $time, spi_mosi_out);
 $display ("at time %0d point_add=%d  ", $time, point_add);

                     point_add<= point_add+1;
					 end
	 
		   end 
 // control clock control final data and push it to spi_miso_out

always @(posedge control_clk_miso)


if(spi_cs)
spi_miso_out<=0;
else                
   begin

               
                spi_miso_out<=final_data;
                 
            
          		end	

		

		endmodule

