`timescale 1 ns / 1 ps

`include "final_I.v"
`include "final_O.v"
`include "control_unit.v"



module  final_spi (Data_out,spi_clk,spi_cs,spi_mosi,Mclk,nReset,Data_available,Read_request,spi_miso,Data_in);


output [119:0] Data_out;
output spi_cs,spi_clk;
output spi_mosi;
input Mclk,nReset,Data_available,Read_request;
input spi_miso;
input [7:0] Data_in;


wire data_av;
wire[7:0] add_byte;
wire read_req;
wire spi_cs;
wire [119:0] Data_out;

wire spi_mosi;
wire spi_miso;
wire spi_mosi_I,spi_mosi_O;








clk_div L(.spi_clk(spi_clk),.m_clk(Mclk),.spi_cs(spi_cs),.nrst(nReset)); 

control_unit  C(.spi_mosi(spi_mosi),.data_av(data_av),.read_req(read_req),.add_byte(add_byte),.read_request(Read_request),.data_available(Data_available),.m_clk(Mclk),.n_reset(nReset),.spi_mosi_I(spi_mosi_I),.spi_mosi_O(spi_mosi_O)) ;

/*******INPUT*///////

spi_final I(.spi_mosi_out(spi_mosi_I),.m_clk(Mclk),.n_reset(nReset),.data_in(Data_in),.data_av(data_av),.add_byte(add_byte));

//asy_fifo_input I1(.data_to_mosi(spi_mosi_in),.spi_cs(spi_cs),.wdata(data_in),.clk(m_clk),.rst(n_reset),.data_av(data_av),.control_clk(control_clk));

//spi_mosi I2(.control_clk(control_clk),.spi_mosi_out(spi_mosi_out),.spi_cs(spi_cs),.spi_clk(spi_clk),.n_reset(n_reset),.spi_mosi_in(spi_mosi_in),.add_byte(add_byte));


/*******OUTPUT*****/

spi_final_O O(.spi_cs(spi_cs),.data_out(Data_out),.spi_mosi_out(spi_mosi_O),.spi_miso_in(spi_miso),.read_req(read_req),.m_clk(Mclk),.n_reset(nReset),.add_byte(add_byte));


//spi_miso O2(.control_clk_miso(control_clk_miso),.spi_mosi_out(spi_mosi_out),.spi_miso_out(spi_miso_out),.spi_cs(spi_cs),.spi_clk(spi_clk),.spi_miso_in(spi_miso_in),.n_reset(n_reset),.add_byte(add_byte));

//asy_fifo_output O1(.data_out(data_out),.spi_cs(spi_cs) ,.wdata(spi_miso_out),.clk(m_clk),.control_clk_miso(control_clk_miso),.rst(n_reset),.read_req(read_req));





endmodule 
