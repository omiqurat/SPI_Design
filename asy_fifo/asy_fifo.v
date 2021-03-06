`timescale 1 ns / 1 ps
module asy_fifo (rdata,  wdata,winc, clk, rst, rinc);

  parameter DSIZE = 8;
  parameter ASIZE = 4;
  output [DSIZE-1:0] rdata;
  
  input  [DSIZE-1:0] wdata;
  input              winc, clk;
  input              rinc,rst;
  reg    [ASIZE:0]   w_pointer;
  reg    [ASIZE:0]   r_pointer;
  reg [DSIZE-1:0] rdata;
  
  reg w_full,r_empty;
  parameter MEMDEPTH = 15;
 
  reg [DSIZE-1:0] ex_mem[MEMDEPTH-1:0];

  initial
begin
       
     
       w_pointer <= 5'b00000;
         r_pointer <= 5'b00000;
		 w_full =0;
		 r_empty=0;
end


always @(posedge clk )

  
      if (rst) 
         begin
         w_pointer <= 5'b00000;
         r_pointer <= 5'b00000;
	end
else if(rinc && r_pointer==5'b11111)
         begin
		 r_empty=1;
		 r_pointer <= 5'b00000;
		 $display ("at time %0d rempty=%b", $time, r_empty);
		    end
else if(winc && w_pointer==5'b11111)
       begin
	   w_full=1;		 
       w_pointer <= 5'b00000;
             end

else if (winc && !w_full)
   
  begin
   
 w_pointer= w_pointer+1;

 ex_mem[w_pointer]<=  wdata;
 

$display ("at time %0d w_pointer=%d", $time, w_pointer);
   end

else if(rinc && !r_empty)
    begin

      r_pointer= r_pointer+1;

    rdata<=ex_mem[r_pointer];
	

$display ("at time %0d r_pointer=%d", $time, r_pointer);
    end
  endmodule
