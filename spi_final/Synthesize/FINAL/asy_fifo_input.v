`timescale 1 ns / 1 ps
module asy_fifo_input (data_to_mosi, spi_cs,wdata,clk,rst,data_av,control_clk);
   parameter MEMDEPTH = 30;
  parameter DSIZE = 8;
  parameter ASIZE = 4;
  output [7:0] data_to_mosi;
  output spi_cs;
  input  [DSIZE-1:0] wdata;
  input               clk,data_av,control_clk;
  input              rst;
  reg    [ASIZE-1:0]   w_pointer;
  reg    [ASIZE-1:0]   r_pointer;
  reg [DSIZE-1:0] rdata;
  reg winc,rinc;
  reg spi_cs;
  reg w_full,r_empty;
  reg data_en;
 
  reg [DSIZE-1:0] ex_mem[MEMDEPTH-1:0];
 reg [7:0] data_to_mosi;



always @(posedge data_av or negedge rst)
if(!rst) begin
            data_en<=0;
         end

           else  begin

                 if(w_full==0 ||r_empty==1)
                           begin
                               data_en<=1;
                           end
                 else
                           begin
                              data_en<=0;
                           end
 
             end
  
always @(posedge clk or negedge rst)
if(!rst) begin
           spi_cs<=0;
         end

         else  begin

                   if (w_full==1 || r_empty==1) begin
	  					    spi_cs<=0;
	  					end
     	  
    		   else
	 		begin
	  			spi_cs<=1;
	 		end
	       end

// for control increment for write and read
always @(posedge clk or negedge rst )

if (!rst) begin
             winc<=0;
             rinc<=0;
	end

         else  begin
               
                  if(data_en==1 && w_full==0)                          // input data depend on data_av because winc and rinc depend on data_av
                                            begin	
                                              winc<=1;
                                              rinc<=0;
	                                                    // $display ("at time %0d winc=%b rinc=%b", $time, winc,rinc);
                                            end
                  else if(w_full==1)
                                           begin
                                              winc<=0;
                                              rinc<=1;
                                           end
                  else
                            begin
                               winc<=0;
                               rinc<=0;
                                                         //$display ("at time %0d winc=%b rinc=%b", $time, winc,rinc);
                            end

               end


  
//*****writing Data in FIFO


 always @(posedge clk or negedge rst)

  
       if (!rst) 
                 begin
                    w_pointer <= 4'b0000;
                    w_full<=0;
         
	             end

           else   begin
                     if (r_empty==1 && data_en==0) begin
                                                       w_full<=0;
                                                   end
	            else   if(winc==1 && w_pointer==4'b1111 ) begin
		    						   w_full<=1;		 
        	    						   w_pointer <= 4'b0000;
	   
	 	 						end

	            else if (winc==1 && !w_full ) begin
   
		    					w_pointer<= w_pointer+1;

		    					ex_mem[w_pointer]<=  wdata;
 

                                                                  //$display ("at time %0d w_pointer=%b", $time, w_pointer);
                                                                    //$display ("at time %0d  ex_mem[w_pointer]=%d", $time,  ex_mem[w_pointer]);
                				      end

		    end

//****** Reading Data from FIFO

always @(posedge control_clk or negedge rst)


if (!rst) begin
               r_pointer <= 4'b0000;
               r_empty<=1;
               rdata<=0;
               data_to_mosi<=0;
            end
          
        else  begin
  
             
              
		  if(rinc==1 && r_pointer==4'b1111)
				
                   			      begin
						r_empty<=1;
						r_pointer <= 4'b0000;
						                       //$display ("at time %0d rempty=%b", $time, r_empty);
				
                   				   end
              
		else if(rinc==1 && !r_empty)
						begin
                                                        
							r_pointer<= r_pointer+1;

							rdata<=ex_mem[r_pointer];
							data_to_mosi<=rdata;
                                             					
                                                    end           	//$display ("at time %0d rdata=%b", $time, rdata);
		 else if(w_full==1 && rinc==1 && winc==0)begin
                                                    r_empty<=0;
                                                end				
				
			
              end

  endmodule
