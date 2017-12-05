`timescale 1 ns / 1 ps
module spi_miso_test;
  

reg  spi_miso_in;
 reg  spi_clk,spi_cs;
 wire [7:0] spi_miso_out;
wire spi_mosi_out;
wire control_clk_miso;

//`define stim #10 wdata=8'd
event end_first_pass;


    spi_miso A1(control_clk_miso,spi_mosi_out,spi_miso_out,spi_cs,spi_clk,spi_miso_in);
	

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


   
end



always  #50 spi_clk= ~spi_clk;
always
begin
#50 ;
$display ("at time %0d spi_clk = %b   control_clk_miso=%b spi_cs= %b  spi_miso_in=%b spi_miso_out=%d spi_mosi_out=%d ", $time,      
     control_clk_miso,spi_clk,spi_cs,spi_miso_in,spi_miso_out,spi_mosi_out);

end
initial
begin
begin


 spi_cs=0;
#2100
#100 spi_miso_in =1'b1;
#100 spi_miso_in =1'b0;
#100 spi_miso_in =1'b0;
#100 spi_miso_in =1'b0;
#100 spi_miso_in =1'b0;
#100 spi_miso_in =1'b0;
#100 spi_miso_in =1'b0;
#100 spi_miso_in =1'b0;


#800
 spi_miso_in =1'b0;
#100 spi_miso_in =1'b1;
#100 spi_miso_in =1'b0;
#100 spi_miso_in =1'b0;
#100 spi_miso_in =1'b0;
#100 spi_miso_in =1'b0;
#100 spi_miso_in =1'b0;
#100 spi_miso_in =1'b0;



#800

 spi_miso_in =1'b1;
#100 spi_miso_in =1'b1;
#100 spi_miso_in =1'b0;
#100 spi_miso_in =1'b0;
#100 spi_miso_in =1'b0;
#100 spi_miso_in =1'b0;
#100 spi_miso_in =1'b0;
#100 spi_miso_in =1'b0;


    
    
	//#1700 spi_mosi_in=8'b11001010;
	
	
	
	
	#3000->end_first_pass;
   end
   $finish;
end
endmodule
	
	
	
 
