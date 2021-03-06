`timescale 1 ns / 1 ps
module clk_div (spi_clk, m_clk, spi_clk_en, nrst);
	input nrst, spi_clk_en, m_clk;
	output spi_clk;

	wire nrst, spi_clk_en, m_clk;
	reg spi_clk;
	reg [0:3] counter;
	initial begin 
		counter <= 4'b0000;
		spi_clk <= 1'b0;
	end
	always @(posedge m_clk or negedge nrst)begin
		if (!nrst) begin 
			spi_clk <= 1'b0; 
			counter <= 4'b0000;
		end
		else begin
			if(spi_clk_en) begin 
				if (counter == 4'b1001)begin
					spi_clk <= !spi_clk;
					counter <= 4'b0000;
				end // End of counter if
				else
					counter <= counter + 4'b0001;
			end // End of spi_clk_en if
		end // End of else
	end // End of always block

	
endmodule
