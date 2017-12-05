`timescale 1 ns / 1 ps
module spi_miso_test;
  
reg read_req; 
reg data_av;
reg  spi_miso_in;
 reg  spi_clk,spi_cs;
 wire [7:0] spi_miso_out;
wire spi_mosi_out;

//`define stim #10 wdata=8'd
event end_first_pass;


    spi_miso A1(spi_mosi_out,spi_miso_out,spi_cs,spi_clk,data_av,read_req,spi_miso_in);
	

/*initial begin
  $shm_open("spi_miso.shm");
  $shm_probe("AS");
end
*/
initial begin
$dumpfile("spi_miso_waveform_result.vcd");
$dumpvars(0,spi_miso_test);
end
initial
begin
    
     spi_clk=0;
     spi_cs=1;
    data_av=0;
#50
     read_req=0;
     read_req=1;
  #50
     read_req=0;
#50
    spi_cs=0;
end



always  #50 spi_clk= ~spi_clk;
always
begin
#50 ;
$display ("at time %0d spi_clk = %b   spi_cs= %b  data_av=%b read_req=%b spi_miso_in=%b spi_miso_out=%d spi_mosi_out=%d ", $time,      
     spi_clk,spi_cs,data_av,read_req,spi_miso_in,spi_miso_out,spi_mosi_out);

end
initial
begin
begin
   #100 spi_miso_in =1'b1;
#100 spi_miso_in =1'b0;
#100 spi_miso_in =1'b1;
#100 spi_miso_in =1'b0;
#100 spi_miso_in =1'b1;
#100 spi_miso_in =1'b0;
#100 spi_miso_in =1'b1;
#100 spi_miso_in =1'b0;


 #100 spi_miso_in =1'b1;
#100 spi_miso_in =1'b1;
#100 spi_miso_in =1'b1;
#100 spi_miso_in =1'b0;
#100 spi_miso_in =1'b0;
#100 spi_miso_in =1'b0;
#100 spi_miso_in =1'b0;
#100 spi_miso_in =1'b1;



    
    
	//#1700 spi_mosi_in=8'b11001010;
	
	
	
	
	#1700->end_first_pass;
   end
   $finish;
end
endmodule
	
	
	
 
