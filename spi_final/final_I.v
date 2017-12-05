`timescale 1 ns / 1 ps
`include "asy_fifo_input.v"
`include "spi_mosi.v"
`include "clk_div.v"
module  spi_final (spi_mosi_out,m_clk,n_reset,data_in,data_av);



output spi_mosi_out;
input m_clk,data_av;
input n_reset;

input[7:0] data_in;
wire spi_mosi_out;

 wire [2:0] control ;
wire [7:0] spi_mosi_in;

wire [7:0] data_to_mosi;
    wire control_clk,spi_cs;




clk_div A(.spi_clk(spi_clk),.m_clk(m_clk),.spi_cs(spi_cs),.nrst(n_reset)); // spi_cs control spi_clk by spi_clk enable

// input (data_to_mosi, wdata,clk,rst,data_av,control_clk);

spi_mosi I2(.control_clk(control_clk),.spi_mosi_out(spi_mosi_out),.spi_cs(spi_cs),.spi_clk(spi_clk),.n_reset(n_reset),.spi_mosi_in(spi_mosi_in));

asy_fifo_input I1(.data_to_mosi(spi_mosi_in),.spi_cs(spi_cs),.wdata(data_in),.clk(m_clk),.rst(n_reset),.data_av(data_av),.control_clk(control_clk));



//output




initial
begin


end
endmodule
