`timescale 1 ns / 1 ps
module spi_mosi (control_clk,spi_mosi_out,spi_cs,spi_clk,,n_reset,spi_mosi_in);

  parameter DSIZE = 8;


    output  spi_mosi_out,control_clk;
    input spi_cs;
    input n_reset;
    input  spi_clk;
	input [DSIZE-1:0] spi_mosi_in;
    reg control_clk;

	reg spi_mosi_out;
    
	reg[3:0] point_add;
      reg[7:0] data ,add_byte;
 
      reg [2:0] point,control ;	


     
initial
     
            begin
              
              
                control<=3'b010;
               control_clk<=0;
               spi_mosi_out<=0;
                 add_byte<=01000110;   // address byte        
               data<=8'd0;
               point_add<=4'd5;
	       point<=3'd0;
			   
		end


// control clock : control smooth transiction of Data from asy_fifo_to spi_mosi
	

always@(posedge spi_clk)


        begin
           if(control==3'd7)
               begin
   				control_clk<=~control_clk;
   				control<=0;
   
					end
			else
				begin
					control=control+1;
				end
        end
// data from asy fifo come to spi_mosi with the control clock

always@(posedge spi_clk)
       begin
           if(spi_cs) 
               begin
               
                 data<=8'd0;  // address
                 
            
               
                    	end

	  else 
         	begin
 		data<=spi_mosi_in;
               
              			end  
		end



// spi clk manage data to send slave bit by bit
// every data byte also send e address byte by spi_mosi
// 
	
always@(posedge spi_clk)
    begin
 		if(spi_cs ) 
             begin
        		   spi_mosi_out<=0;
                             
                              data<=8'd0;
                              point<=3'd0;
		              point_add<=4'd0;
            
               
             end

	  else if(!spi_cs)
begin
	   if(point_add==4'd8)
	begin
         
          if(point==3'd7)	
                begin
          
                    point_add<=4'd0;
                   point<=3'b000;
		             end
	 
                   
               
         
	         else
                     begin
                      spi_mosi_out<=data[point];
                     point<= point+1;
                     	
                    end
	end
          

	
else
	     begin
	  spi_mosi_out<=add_byte[point_add];	  // assign address byte
		

 $display ("at time %0d spi_mosi_out=%b  ", $time, spi_mosi_out);
 $display ("at time %0d point_add=%d  ", $time, point_add);

                     point_add<= point_add+1;
					 end
	 
end

end
   


		endmodule

			
