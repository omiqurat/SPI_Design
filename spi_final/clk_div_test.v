`timescale 1 ns / 1 ps
module clk_div_test();
	reg nrst, spi_cs, m_clk;
	wire spi_clk;
event end_first_pass;
	clk_div c0(spi_clk, m_clk, spi_cs, nrst);
	
	

	// Setting the initial input values
	initial
	begin
		nrst = 0;
		m_clk = 1;
	    spi_cs<=1;
	end
always #50 m_clk = ~m_clk;
	// Displaying signals as graphical waveforms //
	/*initial begin
		$shm_open("clk_div.shm");
		$shm_probe("AS"); // AS = all signals
	end
*/
initial 
	begin
      $dumpfile("clk_div_waveform_result.vcd");
     $dumpvars(0,clk_div_test);
      end    

	initial begin
		$display ("time m_clk, spi_cs, nrst, spi_clk");
		$monitor ("at time %0d nrst = %b spi_cs = %b m_clk = %b spi_clk=%d", $time, nrst, spi_cs, m_clk, spi_clk);
	end

	initial
	begin
	begin
	#100
	spi_cs<=0;
	nrst <= 1;
	#1000
    nrst<=1;
		
#5000 ->end_first_pass;
   end
   $finish;
		
	end
endmodule
