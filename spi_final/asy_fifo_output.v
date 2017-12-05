`timescale 1 ns / 1 ps
module asy_fifo_output(data_out,spi_cs, wdata,clk,control_clk_miso,rst,read_req);
   parameter MEMDEPTH = 30;
  parameter DSIZE = 8;
  parameter ASIZE = 4;
  output [119:0] data_out;
  output spi_cs;
  input control_clk_miso;
  input  [DSIZE-1:0] wdata;
  input               clk,read_req;
  input              rst;
  reg    [ASIZE-1:0]   w_pointer;
  reg    [ASIZE-1:0]   r_pointer;
  reg [DSIZE-1:0] rdata;
  reg winc,rinc;
 reg spi_cs;
  reg w_full,r_empty;
  reg read_en;
 
  reg [DSIZE-1:0] ex_mem[MEMDEPTH-1:0];
 reg [119:0] data_out;

  initial
      begin
       rdata<=8'd0;
       read_en<=0;
       w_pointer <= 5'b0000;
       r_pointer <= 5'b0000;
       w_full <=0;
       r_empty<=1;
       spi_cs<=0;
       data_out<=120'd0;
      end

 always @(posedge read_req)
      if(w_full==1)
        begin
           read_en<=1;
        end
      else
         begin
           read_en<=0;
         end
 
 
always @(posedge clk)

     if (w_full==0)
	 begin
	  spi_cs<=0;
	  r_empty<=0;
	  end
	  else if (r_empty==1)
	  begin
	  spi_cs<=0;
	  end
    else
	 begin
	  spi_cs<=1;
	 
	 end
	  

// control read and write operation
always @(posedge clk)
     if(read_en==1 && w_full==1)
         begin	
           winc<=0;
           rinc<=1;
	                                                                //$display ("at time %0d winc=%b rinc=%b", $time, winc,rinc);
        end
     else if (w_full==0) 
        begin
           winc<=1;
           rinc<=0;
                                                             //$display ("at time %0d winc=%b rinc=%b", $time, winc,rinc);
        end
     else
        begin
          winc<=0;
          rinc<=0;
        end

// control_clk_miso use for writing in Fifo

 always @(posedge control_clk_miso )

  
      if (!rst) 
         begin
           w_pointer <= 4'b0000;
        
	end

     else if(winc==1 && w_pointer==4'b1111)
       begin
	   w_full=1;		 
           w_pointer <= 4'b0000;
	  
        end

     else if (winc==1 && !w_full)
   
           begin
   
            w_pointer= w_pointer+1;

            ex_mem[w_pointer]<=  wdata;
 

//$display ("at time %0d w_pointer=%b", $time, w_pointer);
//$display ("at time %0d  ex_mem[w_pointer]=%d", $time,  ex_mem[w_pointer]);
  
           end
    else if (r_empty==1)
           begin
	     w_full<=0;
	   end

// clk use for reading from fifo

always @(posedge clk)

 if(rinc==1 && r_pointer==4'b1111)
         begin
		 r_empty=1;
		 r_pointer <= 4'b0000;
		 $display ("at time %0d rempty=%b", $time, r_empty);
		// w_full=0;
		    end

 else if(rinc==1 && !r_empty)
    begin

      r_pointer= r_pointer+1;

   rdata=ex_mem[r_pointer];
   
$display ("at time %0d rdata=%b", $time, rdata);
end

// making a 120 bit buffer output and output data deliver without delay---

always @(posedge clk)

 if(r_pointer==15)
begin

data_out[7:0]=ex_mem[1];
data_out[15:8]=ex_mem[2];
data_out[23:16]=ex_mem[3];
data_out[31:24]=ex_mem[4];
data_out[39:32]=ex_mem[5];
data_out[47:40]=ex_mem[6];
data_out[55:48]=ex_mem[7];
data_out[63:56]=ex_mem[8];
data_out[71:64]=ex_mem[9];
data_out[79:72]=ex_mem[10];
data_out[87:80]=ex_mem[11];
data_out[95:88]=ex_mem[12];
data_out[103:96]=ex_mem[13];
data_out[111:104]=ex_mem[14];
data_out[119:112]=ex_mem[15];


$display ("at time %0d data_out=%b", $time, data_out);
end



 //  data_out=rdata;
//data_out=data_out<<8;
	
  endmodule
