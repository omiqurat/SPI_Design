`timescale 1 ns / 1 ps

`include "asy_fifo_output.v"
`include "spi_miso.v"
`include "clk_div.v"
module  spi_final_O (spi_cs,data_out,spi_mosi_out,spi_miso_in,read_req,m_clk,n_reset,add_byte);


output spi_cs;
output [119:0] data_out;
output spi_mosi_out;
input m_clk,read_req;
input n_reset;
input [7:0] add_byte;
input spi_miso_in;
wire [7:0] add_byte;
wire[119:0] data_out;

wire [2:0] control ;
wire [7:0] spi_miso_out;
wire spi_miso_in;
wire [7:0] data_to_mosi;
wire control_clk_miso,spi_clk,spi_cs;




clk_div A(.spi_clk(spi_clk),.m_clk(m_clk),.spi_cs(spi_cs),.nrst(n_reset)); // spi_cs control spi_clk by spi_clk enable

// input (spi_mosi_out,m_clk,n_reset,spi_cs,data_in,data_av);

//spi_mosi I2(.control_clk(control_clk),.spi_mosi_out(spi_mosi_out),.spi_cs(spi_cs),.spi_clk(spi_clk),.n_reset(n_reset),.spi_mosi_in(spi_mosi_in));

//asy_fifo_input I1(.data_to_mosi(spi_mosi_in), .wdata(data_in),.clk(m_clk),.rst(n_reset),.data_av(data_av),.control_clk(control_clk));



//output


spi_miso O2(.control_clk_miso(control_clk_miso),.spi_mosi_out(spi_mosi_out),.spi_miso_out(spi_miso_out),.spi_cs(spi_cs),.spi_clk(spi_clk),.spi_miso_in(spi_miso_in),.n_reset(n_reset),.add_byte(add_byte));

asy_fifo_output O1(.data_out(data_out),.spi_cs(spi_cs) ,.wdata(spi_miso_out),.clk(m_clk),.control_clk_miso(control_clk_miso),.rst(n_reset),.read_req(read_req));







endmodule
