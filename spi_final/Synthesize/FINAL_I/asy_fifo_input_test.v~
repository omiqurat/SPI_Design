   `timescale 1 ns / 1 ps
module asy_fifo_input_test;
  
  parameter MEMDEPTH = 30;

reg [7:0] wdata;
 reg  clk, rst,data_av,control_clk;
 wire [7:0] data_to_mosi;
 wire spi_cs;

//`define stim #10 wdata=8'd
event end_first_pass;


    asy_fifo_input A1(data_to_mosi,spi_cs, wdata,clk ,rst,data_av,control_clk);




/*initial begin
$dumpfile("asy_fifo_input_waveform_result.vcd");
$dumpvars(0,asy_fifo_input_test);
end*/
initial begin
		$shm_open("asy_fifo_input.shm");
		$shm_probe("AS"); // AS = all signals
	end

initial
begin
    
    rst=0;
#50   
 rst=1;
 #50 
rst=0;
#50
rst=1; 

    clk=0;
control_clk=0;
data_av=0;

data_av=~data_av;
#50
data_av=~data_av;

#1000
data_av=~data_av;
#100
data_av=~data_av;

#1000
data_av=~data_av;
#100
data_av=~data_av;

#1000
data_av=~data_av;
#100
data_av=~data_av;

#1000
data_av=~data_av;
#100
data_av=~data_av;
    
end


always  #50 control_clk=~control_clk;
always  #10 clk= ~clk;



always
begin
#50 ;
$display ("at time %0d clk = %b   control_clk = %b rst= %b  data_av=%b wdata=%d  datat_out=%b spi_cs=%b ", $time,      
     clk,control_clk,rst,data_av,wdata,data_to_mosi,spi_cs);

end

initial
begin
begin


#100
        
        wdata=8'd1;   



    #31 wdata=8'd2;



    #20 wdata=8'd3;


    #20 wdata=8'd4;


    #20 wdata=8'd5;
 
 

 #20 wdata=8'd6;

 #20 wdata=8'd7;

 #20 wdata=8'd8;


 
    

 #20 wdata=8'd100;
    #20 wdata=8'd120;
 #20 wdata=8'd130;
 #20 wdata=8'd140;
 #20 wdata=8'd150;

 #20 wdata=8'd55;
 #20 wdata=8'd200;
 #20 wdata=8'd15;
data_av=1;
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
