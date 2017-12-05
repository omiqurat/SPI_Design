`timescale 1 ns / 1 ps
`include "asy_fifo_input.v"
`include "spi_mosi.v"
`include "clk_div.v"
`include "asy_fifo_output.v"
`include "spi_miso.v"

module  spi_final  (data_out,spi_mosi_out,spi_miso_in,spi_cs,data_in,data_av,read_req,m_clk,n_reset);