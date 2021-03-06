# ####################################################################

#  Created by Encounter(R) RTL Compiler v11.20-s017_1 on Mon Jul 18 17:07:29 +0200 2016

# ####################################################################

set sdc_version 1.7

set_units -capacitance 1000.0fF
set_units -time 1000.0ps

# Set the current design
current_design spi_final

create_clock -name "m_clk" -add -period 50.0 -waveform {0.0 25.0} [get_ports m_clk]
set_load -pin_load 0.2 [get_ports spi_mosi_out]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks m_clk] -add_delay 0.0 [get_ports data_av]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.0 [get_ports {data_in[0]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.0 [get_ports {data_in[1]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.0 [get_ports {data_in[2]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.0 [get_ports {data_in[3]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.0 [get_ports {data_in[4]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.0 [get_ports {data_in[5]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.0 [get_ports {data_in[6]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.0 [get_ports {data_in[7]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.0 [get_ports n_reset]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.0 [get_ports m_clk]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.002 [get_ports spi_mosi_out]
set_ideal_net [get_nets m_clk]
set_ideal_net [get_nets n_reset]
set_ideal_net [get_nets {data_in[6]}]
set_ideal_net [get_nets {data_in[5]}]
set_ideal_net [get_nets {data_in[4]}]
set_ideal_net [get_nets {data_in[3]}]
set_ideal_net [get_nets {data_in[2]}]
set_ideal_net [get_nets {data_in[1]}]
set_ideal_net [get_nets {data_in[0]}]
set_ideal_net [get_nets data_av]
set_ideal_net [get_nets I2/spi_mosi_out]
set_ideal_net [get_nets spi_cs]
set_wire_load_mode "enclosed"
set_wire_load_selection_group "sub_micron" -library "c35_CORELIB_TYP"
set_dont_use [get_lib_cells c35_CORELIB_TYP/DLY12]
set_dont_use [get_lib_cells c35_CORELIB_TYP/DLY22]
set_dont_use [get_lib_cells c35_CORELIB_TYP/DLY32]
set_dont_use [get_lib_cells c35_CORELIB_TYP/DLY42]
set_dont_use [get_lib_cells c35_CORELIB_TYP/BUSHD]
set_dont_use [get_lib_cells c35_CORELIB_TYP/TIE0]
set_dont_use [get_lib_cells c35_CORELIB_TYP/TIE1]
set_dont_use [get_lib_cells c35_CORELIB_TYP/TIELOW]
set_dont_use [get_lib_cells c35_CORELIB_TYP/TIEHIGH]
set_dont_use [get_lib_cells c35_CORELIB_TYP/FILLANT1]
set_dont_use [get_lib_cells c35_CORELIB_TYP/FILLANT2]
set_dont_use [get_lib_cells c35_CORELIB_TYP/FILLANT5]
set_dont_use [get_lib_cells c35_CORELIB_TYP/FILLANT10]
set_dont_use [get_lib_cells c35_CORELIB_TYP/FILLANT25]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBCD1P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBCD4P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBCD4SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBCD8P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBCD8SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBCD8SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBCD16P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBCD16SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBCD16SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBCD24P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBCD24SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBCD24SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBCU1P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBCU4P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBCU4SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBCU8P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBCU8SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBCU8SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBCU16P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBCU16SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBCU16SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBCU24P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBCU24SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBCU24SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBC1P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBC4P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBC4SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBC8P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBC8SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBC8SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBC16P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBC16SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBC16SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBC24P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBC24SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBC24SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBSD1P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBSD4P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBSD4SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBSD8P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBSD8SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBSD8SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBSD16P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBSD16SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBSD16SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBSD24P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBSD24SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBSD24SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBSU1P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBSU4P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBSU4SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBSU8P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBSU8SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBSU8SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBSU16P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBSU16SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBSU16SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBSU24P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBSU24SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBSU24SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBS1P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBS4P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBS4SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBS8P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBS8SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBS8SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBS16P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBS16SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBS16SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBS24P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBS24SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBS24SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBTD1P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBTD4P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBTD4SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBTD8P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBTD8SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBTD8SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBTD16P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBTD16SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBTD16SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBTD24P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBTD24SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBTD24SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBTU1P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBTU4P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBTU4SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBTU8P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBTU8SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBTU8SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBTU16P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBTU16SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBTU16SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBTU24P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBTU24SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBTU24SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBT1P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBT4P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBT4SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBT8P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBT8SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBT8SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBT16P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBT16SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBT16SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBT24P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBT24SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BBT24SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BT1P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BT2P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BT4P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BT4SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BT8P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BT8SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BT8SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BT12P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BT12SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BT12SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BT16P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BT16SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BT16SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BT24P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BT24SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BT24SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BUDD1P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BUDD2P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BUDD4P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BUDD8P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BUDD12P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BUDD16P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BUDD24P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BUDU1P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BUDU2P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BUDU4P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BUDU8P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BUDU12P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BUDU16P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BUDU24P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BU1P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BU2P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BU4P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BU4SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BU8P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BU8SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BU8SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BU12P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BU12SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BU12SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BU16P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BU16SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BU16SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BU24P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BU24SMP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/BU24SP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/CBU1P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/CBU2P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/ICCK2P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/ICCK4P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/ICCK8P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/ICCK16P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/ICDP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/ICP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/ICUP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/ISDP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/ISP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/ISUP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/ITCK2P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/ITCK4P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/ITCK8P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/ITCK16P]
set_dont_use [get_lib_cells c35_IOLIB_TYP/ITDP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/ITP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/ITUP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/GND3ALLP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/GND3IP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/GND3OP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/GND3RP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/VDD3ALLP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/VDD3IP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/VDD3OP]
set_dont_use [get_lib_cells c35_IOLIB_TYP/VDD3RP]
