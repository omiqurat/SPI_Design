  `timescale 1 ns / 1 ps
module asy_fifo_test;
  
 

reg [7:0] wdata;
 reg  winc, clk, rst ,rinc;
 wire [7:0] rdata;

//`define stim #10 wdata=8'd
event end_first_pass;


    asy_fifo A1(rdata, wdata,
                  winc, clk, rst, rinc);




initial begin
$dumpfile("asy_fifo_waveform_result.vcd");
$dumpvars(0,asy_fifo_test);
end
initial
begin
    
    rst=0;
    rst=1;
    rst=0;
    clk=0;
    winc=0;
    rinc=0;
    
end



always  #50 clk= ~clk;



always
begin
#50 ;
$display ("at time %0d clk = %b   rst= %b  winc=%b rinc=%b wdata=%d rdata=%d ", $time,      
     clk,rst,winc,rinc,wdata,rdata);

end

initial
begin
begin
        
        wdata=8'd1;    
 winc=1;
 rinc=0; 
    #50 wdata=8'd1;
    #100 wdata=8'd20;
    #150 wdata=8'd30;
    #160 wdata=8'd40;
 
 winc=0;
 rinc=1;
 #170 wdata=8'd50;
 #180 wdata=8'd60;
 #190 wdata=8'd70;
 
    
winc=1;
rinc=0;
 #300 wdata=8'd100;
    #310 wdata=8'd120;
 #320 wdata=8'd130;
 #330 wdata=8'd140;
 #340 wdata=8'd150;

 winc=0;
 rinc=1;
 #170 wdata=8'd55;
 #180 wdata=8'd200;
 #190 wdata=8'd300;
 winc=1;
rinc=0;
 #300 wdata=8'd1000;
    #310 wdata=8'd1020;
 #320 wdata=8'd1300;
 #330 wdata=8'd1040;
 #340 wdata=8'd1050;
winc=0;
rinc=1;
#500 ->end_first_pass;
   end
   $finish;
end
endmodule
