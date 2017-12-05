`timescale 1 ns / 1 ps
module spi_mosi_test;
  
reg read_req; 
reg data_av;
reg [7:0] spi_mosi_in;
 reg  spi_clk,spi_cs;
 wire  spi_mosi_out;

//`define stim #10 wdata=8'd
event end_first_pass;


    spi_mosi A1(spi_mosi_out,spi_cs,spi_clk,data_av,read_req,spi_mosi_in);
	

/*initial begin
  $shm_open("spi_mosi.shm");
  $shm_probe("AS");
end*/

initial begin
$dumpfile("spi_mosi_waveform_result.vcd");
$dumpvars(0,spi_mosi_test);
end
initial
begin
    
     spi_clk=0;
     spi_cs=1;
read_req=0;
#50
     data_av=0;
     data_av=1;
  #50
     data_av=0;
#50
    spi_cs=0;
end



always  #50 spi_clk= ~spi_clk;
always
begin
#50 ;
$display ("at time %0d spi_clk = %b   spi_cs= %b  data_av=%b read_req=%b spi_mosi_in=%b spi_mosi_out=%b  ", $time,      
     spi_clk,spi_cs,data_av,read_req,spi_mosi_in,spi_mosi_out);

end
initial
begin
begin
 #50 spi_mosi_in =8'd1;
 
    #800 spi_mosi_in =8'b00001100;
    
	//#1700 spi_mosi_in=8'b11001010;
	
	
	
	
	#2000 ->end_first_pass;
   end
   $finish;
end
endmodule
	
	
	
 
