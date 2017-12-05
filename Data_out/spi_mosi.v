`timescale 1 ns / 1 ps
module spi_mosi(spi_mosi_out,spi_cs,spi_clk,data_av,read_req,spi_mosi_in);

  parameter DSIZE = 8;


    output  spi_mosi_out;
    input spi_cs;
    input  spi_clk;
	input [DSIZE-1:0] spi_mosi_in;
input data_av,read_req;
	reg spi_mosi_out;
	reg[2:0] point;
      reg[DSIZE-1:0] data;
   reg x;
     

	initial
    begin
	     point<=3'b000;
		end
	
	
	always @(posedge spi_clk)

	 if(spi_cs && data_av && !read_req) 
             begin
           spi_mosi_out<=0;
            x<=1;
               
               end

	  else if(!spi_cs && x )
	   begin
	    
		//spi_mosi_out=0;
		  //for(count=0;count<8;count=count+1)
		  //$display ("at time %0d count=%d  ", $time, count);
		   if(point==0)
	                begin 
                         data<=spi_mosi_in;
		         spi_mosi_out<=spi_mosi_in[0];
                          end
	     
                  else begin
		    spi_mosi_out<=data[point];	
		         end
	  point<= point+1;
		    	
          $display ("at time %0d point=%d  ", $time, point);
           $display ("at time %0d data=%b  ", $time, data);


			end

		endmodule

			
