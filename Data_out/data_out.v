

module data_out (data_out,spi_mosi_out,spi_cs,spi_clk,read_req,Mclk,n_reset,spi_miso_in);
  parameter SIZE = 16;
parameter DSIZE = 8;
input Mclk,read_req,n_reset;
input[7:0] data_buffer;
output[7:0] data_out;
output spi_mosi_out;
input spi_miso_in;
output spi_cs;
output spi_clk;
input data_av;

reg [DSIZE-1:0] spi_miso_out;
reg [7:0] data_out1,data_out2; 
reg [7:0] memory [0:14];
wire  i;
wire[7:0] wdata;
wire winc;
reg spi_clk;
wire spi_clk_en;


asy_fifo A0(data_out[0],wdata[0],winc[0],Mclk, n_reset,read_req[0]);

clk_div A0(spi_clk, M_clk, spi_clk_en,n_reset);

spi_miso A0(spi_mosi_out,wdata[0],spi_cs,spi_clk,data_av,read_req,spi_miso_in);

always @(posedge Mclk)
begin
if(!n_reset)
begin
i=0;
repeat(15)
begin
  @(posedge Mclk)
 data_out1= data_buffer;
 
      i=i+1;
end 
end
end


endmodule
