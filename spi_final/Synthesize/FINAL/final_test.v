`timescale 1 ns / 1 ps
module final_test;


reg Mclk;
reg nReset;
reg [7:0] Data_in;
reg spi_miso,Read_request,Data_available;
wire  spi_mosi,spi_cs,spi_clk;
wire[119:0] Data_out; 

event end_first_pass;



 final_spi S(Data_out,spi_clk,spi_cs,spi_mosi,Mclk,nReset,Data_available,Read_request,spi_miso,Data_in);


always #50 Mclk = ~Mclk;


initial
	begin
	Mclk=0;
	
Data_available=1;
Read_request=0;
        
nReset=0;
spi_miso<=0;
#100
nReset=1;
#50
nReset=0;
#100
nReset=1;




#1000

Data_available=~Data_available;
#50
Data_available=~Data_available;

#3000
Data_available=~Data_available;
#100
Data_available=~Data_available;

#3000
Data_available=~Data_available;
#100
Data_available=~Data_available;

#3000
Data_available=~Data_available;
#100
Data_available=~Data_available;

#80000
 # 80000
#80000
#80000
#80000

#3000
Data_available=~Data_available;
#100
Data_available=~Data_available;
   
#3000
Data_available=~Data_available;
#100
Data_available=~Data_available;
#3000
Data_available=~Data_available;
#100
Data_available=~Data_available;
#3000
Data_available=~Data_available;
#100
Data_available=~Data_available;
#3000
Data_available=~Data_available;
#100
Data_available=~Data_available;
	#3000
Data_available=~Data_available;
#100
Data_available=~Data_available;
#3000
Data_available=~Data_available;
#100
Data_available=~Data_available;
#3000
Data_available=~Data_available;
#100
Data_available=~Data_available;
	
#80000

#80000


#3000
Data_available=~Data_available;
#100
Data_available=~Data_available;
   
#3000
Data_available=~Data_available;
#100
Data_available=~Data_available;
#3000
Data_available=~Data_available;
#100
Data_available=~Data_available;
#3000
Data_available=~Data_available;
#100
Data_available=~Data_available;
#3000
Data_available=~Data_available;
#100
Data_available=~Data_available;
	#3000
Data_available=~Data_available;
#100
Data_available=~Data_available;
#3000
Data_available=~Data_available;
#100
Data_available=~Data_available;
#3000
Data_available=~Data_available;
#100
Data_available=~Data_available;
	

	end


initial 
	begin
      $dumpfile("final_waveform_result.vcd");
     $dumpvars(0,final_test);
      end 
  

/*

initial begin
		$shm_open("final.shm");
		$shm_probe("AS"); // AS = all signals
	end
*/


initial begin
		$display ("time Data_out,spi_clk,spi_cs,spi_mosi,Mclk,nReset,Data_available,Read_request,spi_miso,Data_in");
		$monitor ("at time %0d Data_out= %b  spi_clk = %b  spi_cs =%b spi_mosi=%b  Mclk=%b nReset=%b Data_available=%b Read_request=%b spi_miso=%b Data_in=%d", $time,                           Data_out,spi_clk,spi_cs,spi_mosi,Mclk,nReset,Data_available,Read_request,spi_miso,Data_in);
	end






initial
begin

begin
 
# 1000

    #100 Data_in=8'd2;
    #100 Data_in=8'd3;
    #100 Data_in=8'd4;
    #100 Data_in=8'd5;
 
 
 #100 Data_in=8'd6;
 #100 Data_in=8'd7;
 #100 Data_in=8'd8;
 
    

 #100 Data_in=8'd9;
    #100 Data_in=8'd10;
 #100 Data_in=8'd11;
 #100 Data_in=8'd12;
 #100 Data_in=8'd13;


 #100 Data_in=8'd14;
 #100 Data_in=8'd15;


 #100 Data_in=8'd16;
 #100 Data_in=8'd17;
    #100 Data_in=8'd18;

 #100 Data_in=8'd18;
 #100 Data_in=8'd19;

 #100 Data_in=8'd20;


#10000000


#400
Read_request=~Read_request;
#100
Read_request=~Read_request;

#10000
Read_request=~Read_request;
#100
Read_request=~Read_request;
#6000
Read_request=~Read_request;
#100
Read_request=~Read_request;
#10000
Read_request=~Read_request;
#100
Read_request=~Read_request;
#20000
Read_request=~Read_request;
#100
Read_request=~Read_request;


#19100



spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;


#18000

 spi_miso =1'b0;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;

#18000




 spi_miso =1'b1;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;

#18000




 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;

#18000




 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;

#18000




 spi_miso =1'b0;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;

#18000




 spi_miso =1'b1;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;

#18000




 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;

#18000




 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;

#18000




 spi_miso =1'b0;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;

#18000




 spi_miso =1'b1;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;

#18000




 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;

#18000




 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;

#18000




 spi_miso =1'b0;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;

#18000




 spi_miso =1'b1;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;

#18000




 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;

#18000




 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;


#400
Read_request=~Read_request;
#100
Read_request=~Read_request;

#10000
Read_request=~Read_request;
#100
Read_request=~Read_request;
#6000
Read_request=~Read_request;
#100
Read_request=~Read_request;
#10000
Read_request=~Read_request;
#100
Read_request=~Read_request;

#400
Read_request=~Read_request;
#100
Read_request=~Read_request;

#10000
Read_request=~Read_request;
#100
Read_request=~Read_request;
#6000
Read_request=~Read_request;
#100
Read_request=~Read_request;
#10000
Read_request=~Read_request;
#100
Read_request=~Read_request;



#18000




 spi_miso =1'b1;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;

#18000




 spi_miso =1'b1;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;

#18000




 spi_miso =1'b1;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000



 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;

#18000




 spi_miso =1'b0;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;

#18000




 spi_miso =1'b1;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;

#18000




 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;

#18000




 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;

#2000




 spi_miso =1'b0;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;

#2000




 spi_miso =1'b1;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;

#2000




 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;

#2000




 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;

#2000




 spi_miso =1'b1;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;

#2000




 spi_miso =1'b1;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;

#2000




 spi_miso =1'b1;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;

#2000




 spi_miso =1'b1;
#2000 spi_miso =1'b1;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b0;
#2000 spi_miso =1'b1;
#400
Read_request=~Read_request;
#100
Read_request=~Read_request;

#10000
Read_request=~Read_request;
#100
Read_request=~Read_request;
#6000
Read_request=~Read_request;
#100
Read_request=~Read_request;
#10000
Read_request=~Read_request;
#100
Read_request=~Read_request;





#1000000 ->end_first_pass;
   end
   $finish;
end
endmodule
