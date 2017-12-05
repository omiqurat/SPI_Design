
`timescale 1 ns / 1 ps
module control_unit(spi_mosi,data_av,read_req,add_byte,read_request,data_available,m_clk,n_reset,spi_mosi_I,spi_mosi_O);
output spi_mosi;
output data_av;
output read_req;
output[0:7] add_byte;
input read_request,data_available,m_clk,n_reset ;
input spi_mosi_I,spi_mosi_O;

reg [0:7] add_byte;
reg data_av,read_req;
reg write_en,read_en;
reg spi_mosi;
always @(posedge m_clk or negedge n_reset )
		if (!n_reset ) begin
			data_av<=1;
			read_req<=0;
			
		end		   
		else begin
			 if (data_available  &&  !read_request  ||  !data_available && read_request ) begin
				data_av<=1;
				read_req<=0;
				
			end
			else if (!data_available && !read_request) begin
				data_av<=data_available;
				
				
			end
			else if (data_available && read_request) begin            
				read_req<=read_request;
				
				
			end
         	end

always @(negedge data_av or posedge read_req or negedge n_reset)

 if (!n_reset) begin
        write_en<=0;
		read_en<=0;
end


else if (!data_av) begin

                   write_en<=1;
				   read_en<=0;
				   end
				   
else if (read_req) begin
                      write_en<=0;
					  read_en<=1;
					  end
					  
					  
 always @(posedge m_clk or negedge n_reset )

if(!n_reset) begin
                     add_byte<=0;
                   spi_mosi<=0;
		           end
else if(write_en==1) begin
                           add_byte<=8'b10101101;
                          spi_mosi<=spi_mosi_I;
                        end    
else if (read_en==1)begin
                          spi_mosi<=spi_mosi_O ;
                           add_byte<=8'd45;
                        end  
						
				




endmodule
