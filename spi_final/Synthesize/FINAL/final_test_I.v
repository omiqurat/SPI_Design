`timescale 1 ns / 1 ps
module final_test_I;


reg m_clk;
reg n_reset;
reg [7:0] data_in,add_byte;
wire  spi_mosi_out;
reg data_av;

event end_first_pass;
     spi_final O(spi_mosi_out,m_clk,n_reset,data_in,data_av,add_byte);

always #50 m_clk = ~m_clk;

	// Setting the initial input values
	initial
	begin
	m_clk=0;
	add_byte=8'd45;
data_av=0;
        
n_reset=0;

#100
n_reset=1;
#50
n_reset=0;
#100
n_reset=1;

#200


data_av=~data_av;
#50
data_av=~data_av;

#3000
data_av=~data_av;
#100
data_av=~data_av;

#3000
data_av=~data_av;
#100
data_av=~data_av;

#3000
data_av=~data_av;
#100
data_av=~data_av;

#80000
 # 80000
#80000
#80000
#80000

#3000
data_av=~data_av;
#100
data_av=~data_av;
   
#3000
data_av=~data_av;
#100
data_av=~data_av;
#3000
data_av=~data_av;
#100
data_av=~data_av;
#3000
data_av=~data_av;
#100
data_av=~data_av;
#3000
data_av=~data_av;
#100
data_av=~data_av;
	#3000
data_av=~data_av;
#100
data_av=~data_av;
#3000
data_av=~data_av;
#100
data_av=~data_av;
#3000
data_av=~data_av;
#100
data_av=~data_av;
	
#80000

#80000


#3000
data_av=~data_av;
#100
data_av=~data_av;
   
#3000
data_av=~data_av;
#100
data_av=~data_av;
#3000
data_av=~data_av;
#100
data_av=~data_av;
#3000
data_av=~data_av;
#100
data_av=~data_av;
#3000
data_av=~data_av;
#100
data_av=~data_av;
	#3000
data_av=~data_av;
#100
data_av=~data_av;
#3000
data_av=~data_av;
#100
data_av=~data_av;
#3000
data_av=~data_av;
#100
data_av=~data_av;
	

	end

	
	initial 
	begin
      $dumpfile("final_I_waveform_result.vcd");
     $dumpvars(0,final_test_I);
      end 
/*  
initial begin
		$shm_open("final_I.shm");
		$shm_probe("AS"); // AS = all signals
	end
*/
	initial begin
		$display ("time m_clk, data_in,n_reset,data_av,spi_mosi_out");
		$monitor ("at time %0d n_reset = %b  m_clk = %b  data_av =%b spi_mosi_out=%b", $time, n_reset,  m_clk, data_av,spi_mosi_out);
	end




initial
begin

begin
     
  
# 200

    #100 data_in=8'd2;
    #100 data_in=8'd3;
    #100 data_in=8'd4;
    #100 data_in=8'd5;
 
 
 #100 data_in=8'd6;
 #100 data_in=8'd7;
 #100 data_in=8'd8;
 
    

 #100 data_in=8'd9;
    #100 data_in=8'd10;
 #100 data_in=8'd11;
 #100 data_in=8'd12;
 #100 data_in=8'd13;


 #100 data_in=8'd14;
 #100 data_in=8'd15;


 #100 data_in=8'd16;
 #100 data_in=8'd17;
    #100 data_in=8'd18;

 #100 data_in=8'd18;
 #100 data_in=8'd19;

 #100 data_in=8'd20;


#1000000


#100000 ->end_first_pass;
   end
   $finish;
end
endmodule
