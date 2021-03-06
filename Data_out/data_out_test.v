 `timescale 1 ns / 1 ps
module data_out_test;
  
 
wire[7:0] data_out [14:0];
reg [7:0] data_buffer;
reg  Mclk,read_req,n_reset;


//`define stim #10 wdata=8'd
event end_first_pass;


    data_out A1(data_out,read_req,Mclk,write_req,n_reset,data_buffer);




initial begin
$dumpfile("asy_fifo_waveform_result.vcd");
$dumpvars(0,asy_fifo_test);
end
initial

begin
    
    n_reset=0;
    n_resetst=1;
    n_reset=0;
    =0;
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
