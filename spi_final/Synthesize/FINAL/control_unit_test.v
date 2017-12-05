 `timescale 1 ns / 1 ps
 module control_unit_test;
 reg spi_mosi_I,spi_mosi_O;
 reg data_available, read_request,m_clk,n_reset;
 wire data_av,read_req;
 wire [0:7] add_byte;
 wire spi_mosi;
 
 event end_first_pass;

 control_unit   C0(spi_mosi,data_av,read_req,add_byte,read_request,data_available,m_clk,n_reset,spi_mosi_I,spi_mosi_O);
 
 










initial begin
		$shm_open("control_unit_output.shm");
		$shm_probe("AS"); // AS = all signals
	end
/* 
 initial begin
$dumpfile("control_unit_waveform_result.vcd");
$dumpvars(0,control_unit_test);
end
 */
 initial
     begin
	     n_reset=0;
		 
		 #50
		 n_reset=1;
		 #100
		 n_reset=0;
		 #50
		 n_reset=1;
		 data_available=1;
		 read_request=0;
		 
		 m_clk=0;
		 spi_mosi_I=0;
		 spi_mosi_O=0;
	end
	
	
	always  #50 m_clk= ~m_clk;
	
initial
begin
#50 ;
$display ("at time %0d data_av = %b   read_req = %b add_byte= %b  read_request=%b data_available=%d  m_clk=%b n_reset=%b", $time,      
     data_av,read_req,add_byte,read_request,data_available,m_clk,n_reset);

end


	initial
	begin
	begin
	
#4025
read_request=~read_request;
#100
read_request=~read_request;

#1000
read_request=~read_request;
#100
read_request=~read_request;
#1000
read_request=~read_request;
#100
read_request=~read_request;
		

#525

spi_mosi_O=0;
#100
spi_mosi_O=1;
#100
spi_mosi_O=0;

#300
spi_mosi_O=1;
#100
spi_mosi_O=0;
#500

spi_mosi_I=1;
#100
spi_mosi_I=0;

#300
spi_mosi_O=1;
#100
spi_mosi_O=0;


#525		 

data_available=~data_available;
#100
data_available=~data_available;

#1000
data_available=~data_available;
#100
data_available=~data_available;

#1000
data_available=~data_available;
#100
data_available=~data_available;

#1000
data_available=~data_available;
#100
data_available=~data_available;

#1000
data_available=~data_available;
#100
data_available=~data_available;






#525		
 spi_mosi_I=0;
#100
spi_mosi_I=1;
#100
spi_mosi_I=0;
#300
spi_mosi_I=1;
#100
spi_mosi_I=0;
#300
spi_mosi_O=1;
#100
spi_mosi_O=0;

#500
spi_mosi_I=1;
#100
spi_mosi_I=0;


#4025
read_request=~read_request;
#100
read_request=~read_request;
		
#5000 ->end_first_pass;
   end
   $finish;
		
	end
endmodule
