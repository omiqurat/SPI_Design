  `timescale 1 ns / 1 ps
module asy_fifo_output_test;
  
  parameter MEMDEPTH = 30;

reg [7:0] wdata;
 reg  clk, rst,read_req,spi_clk,control_clk_miso;
 wire [119:0] data_out;
 wire spi_cs;

//`define stim #10 wdata=8'd
event end_first_pass;


    asy_fifo_output A1(data_out,spi_cs, wdata,clk,control_clk_miso ,rst,read_req);




initial begin
$dumpfile("asy_fifo_output_waveform_result.vcd");
$dumpvars(0,asy_fifo_output_test);
end

/*initial begin
		$shm_open("asy_fifo_output.shm");
		$shm_probe("AS"); // AS = all signals
	end

*/
initial
begin
    
    rst=0;
      control_clk_miso=0; 
  
    clk=0;
 read_req=0;
#400
read_req=~read_req;
#50
read_req=~read_req;

#1000
read_req=~read_req;
#50
read_req=~read_req;
#1000
read_req=~read_req;
#50
read_req=~read_req;

    
end


always  #50 control_clk_miso=~control_clk_miso;
always  #10 clk= ~clk;



always
begin
#50 ;
$display ("at time %0d clk = %b   control_clk_miso = %b rst= %b  read_req=%b wdata=%d  datat_out=%b ", $time,      
     clk,control_clk_miso,rst,read_req,wdata,data_out);

end

initial
begin
begin

#50
rst=1;
        
        wdata=8'd1;    

    #100 wdata=8'd2;
    #100 wdata=8'd20;
    #100 wdata=8'd30;
    #100 wdata=8'd40;
 
 
 #100 wdata=8'd50;
 #100 wdata=8'd60;
 #100 wdata=8'd70;
 
    

 #100 wdata=8'd100;
    #100 wdata=8'd120;
 #100 wdata=8'd130;
 #100 wdata=8'd140;
 #100 wdata=8'd150;


#4000 read_req=1;
 #100 wdata=8'd55;
 #100 wdata=8'd200;
 #100 wdata=8'd15;

 #100 wdata=8'd16;
    #100 wdata=8'd17;
 #100 wdata=8'd18;
 #100 wdata=8'd19;
 #100 wdata=8'd20;

#5000 ->end_first_pass;
   end
   $finish;
end
endmodule
