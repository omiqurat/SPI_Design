`timescale 1 ns / 1 ps
module final_test_O;

reg [7:0] add_byte;
reg m_clk;
reg n_reset;
reg  spi_miso_in;
wire[119:0] data_out;
wire spi_mosi_out;
reg read_req;

event end_first_pass;
     spi_final_O T(data_out,spi_mosi_out,spi_miso_in,read_req,m_clk,n_reset,add_byte);

always #50 m_clk = ~m_clk;

	// Setting the initial input values
	initial
	begin
	m_clk=0;
      add_byte=8'd45; 
n_reset=0;

read_req<=0; 
   
	

	end
	
	initial 
	begin
      $dumpfile("final_O_waveform_result.vcd");
     $dumpvars(0,final_test_O);
      end    
/*initial begin
		$shm_open("final_O.shm");
		$shm_probe("AS"); // AS = all signals
	end
	*/
	initial begin
		$display ("time spi_miso_in, n_reset,m_clk,read_req,data_out");
		$monitor ("at time %0d spi_mosi_out=%b spi_miso_in =%b n_reset = %b  m_clk = %b  read_req =%b data_out=%b", $time, spi_mosi_out,spi_miso_in,n_reset,m_clk, read_req,data_out);
	end





initial
begin

begin
 #2500
n_reset=1;


spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;


#2000

 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;

#2000




 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;

#2000




 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;

#2000




 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;

#2000




 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;

#2000




 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;

#2000




 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;

#2000




 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;

#2000




 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;

#2000




 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;

#2000




 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;

#2000




 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;

#2000




 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;

#2000




 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;

#2000




 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;

#2000




 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;

#2000




 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;

#2000




 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;

#2000




 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;
#2000



 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;

#2000




 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;

#2000




 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;

#2000




 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;

#2000




 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;

#2000




 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;

#2000




 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;

#2000




 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;

#2000




 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;

#2000




 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;

#2000




 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;

#2000




 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;

#2000




 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b1;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b0;
#2000 spi_miso_in =1'b1;


read_req=0;
#400
read_req=~read_req;
#50
read_req=~read_req;

#10000
read_req=~read_req;
#50
read_req=~read_req;
#6000
read_req=~read_req;
#50
read_req=~read_req;
#10000
read_req=~read_req;
#50
read_req=~read_req;
#20000
read_req=~read_req;
#50
read_req=~read_req;


#100000 ->end_first_pass;
   end
   $finish;
end
endmodule
