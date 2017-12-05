`timescale 1 ns / 1 ps
module spi_miso (spi_mosi_out,spi_miso_out,spi_cs,spi_clk,data_av,read_req,spi_miso_in);

 parameter DSIZE = 8;

output spi_mosi_out;
    output  [DSIZE-1:0] spi_miso_out;
       input spi_cs;
       input  spi_clk;
	input spi_miso_in;
        input data_av,read_req;
	reg [DSIZE-1:0] spi_miso_out;
        reg spi_mosi_out;
	reg [DSIZE-1:0] data;
      reg[2:0] point;
      
     reg x;
     


	initial
    begin
	     point<=3'b000;
 
		end
	
	
	always @(posedge spi_clk)

	 if(spi_cs && !data_av && read_req) 
             begin
           spi_mosi_out<=1;
            x<=0;
               
               end

	  else if (!spi_cs )
	   begin
	    
		 //spi_miso_out=0;
		  //for(count=0;count<8;count=count+1)
		  //$display ("at time %0d count=%d  ", $time, count);
		  // if(point==0)
	            //    begin 
                         //data<=spi_miso_in;
		         //spi_miso_out[0]<=spi_miso_in;

                          //end
	     
                  //else begin
               
              // spi_miso_out[0]<=spi_miso_in;
         
		    data[point]<=spi_miso_in;	
 $display ("at time %0d data=%b  ", $time, data);
                     point<= point+1;
 $display ("at time %0d point=%d  ", $time, point);
		         end
	 
		    
           always @(posedge spi_clk)
                    if(point==0)
       spi_miso_out<=data;
          


		

		endmodule

