`timescale 1 ns / 1 ps
module clk_div_test();
	reg nrst, spi_clk_en, m_clk;
	wire spi_clk;

	clk_div c0(spi_clk, m_clk, spi_clk_en, nrst);
	
	always #50 m_clk = ~m_clk;

	// Setting the initial input values
	initial
	begin
		nrst = 1;
		m_clk = 1;
		spi_clk_en = 1;
	end

	// Displaying signals as graphical waveforms //
	/*initial begin
		$shm_open("clk_div.shm");
		$shm_probe("AS"); // AS = all signals
	end*/
initial 
	begin
      $dumpfile("clk_div_waveform_result.vcd");
     $dumpvars(0,clk_div_test);
      end    

	initial begin
		$display ("time m_clk, spi_clk_en, nrst, spi_clk");
		$monitor ("at time %0d nrst = %b spi_clk_en = %b m_clk = %b spi_clk=%d", $time, nrst, spi_clk_en, m_clk, spi_clk);
	end

	initial
	begin
		//We used initial value in the verilog code but the netlist does not get this value. So it is better to use an initial reset to set everything in motion
		//Initial reset
		#10
			nrst = 1'b0;
		// Turn off the reset
		#10
			nrst = 1'b1;
		// Turn on the reset again to see it's effect
		#10000
			nrst = 1'b0;
		// Turn off the reset
		#2000
			nrst = 1'b1;
		// Turn off the enable
		#2000
			spi_clk_en = 1'b0;
		// Turn on the enable again
		#2000
			spi_clk_en = 1'b1;
		// Wait for a while to see it's effect and then finish
		#2000
			$finish;
	end
endmodule
