# *********************************************************
# *
# * A very simple script that shows the basic RTL Compiler flow 
# *
# *********************************************************

set_attribute lib_search_path {. /designtools/cds/cadence/kits/AMS4.10/liberty/c35_3.3V}

#set_attribute hdl_search_path <full_path_of_hdl_files_directory>

set_attribute library {c35_CORELIB_TYP.lib c35_IOLIB_TYP.lib}

# Grouping and ungrouping are helpful when you need to change your design hierarchy as
# part of your synthesis strategy. Grouping builds a level of hierarchy around a set of instances.
# ungrouping flattens a level of hierarchy. The following ungrouping command makes the rtl compiler
# optimize for timing, area or both during ungrouping...
# set_attribute auto_ungroup {none | timing | area | both} 

# read_hdl <hdl_file_names>
# when you issue the read_hdl command, RTL compiler reads the files and performs syntax checks
# -v1995 (default): IEEE Std 1364-1995 compliance
# -v2001 : IEEE Std 1364-2001 compliance
# type in the verilog files of your design after the read_hdl statement:
read_hdl final_O.v

#elaborate <top_level_design_name>
# the elaborate command builds the design (creats a design object). During elaboration RTL compiler
# performs the following tasks:
# 1. builds data structures
# 2. infers registers in the design
# 3. perfroms higher-level HDL optimization, such as dead code removal
# 4. check semantics
# after elaboration, RTL compiler has an internally created data structure for the whole design
# so you can apply constraints and perform other operations 
elaborate

# here with you can control the amount of information RTL Compiler writes out
# in the output logfiles.  set_attribute information_level 0(min) .. 9(max).
set_attribute information_level 6

# DEFINE_Clock Section
# the clock name must match to the name of the clock signal into your verilog file.
# please fill in the correct name of your clock signal and the maximum period time of your module (pico seconds).
#define_clock -name clk1 -period 50000 [find / -port ports_in/clk]
define_clock -name m_clk -period 50000 [list "m_clk"]
external_delay -clock m_clk -input 0  /designs/*/ports_in/*
external_delay -clock m_clk -output 2 /designs/*/ports_out/*

#set_attribute information_level 4
#set clock [define_clock -period <periodicity> -name <clock_name> [clock_ports]]
#external_delay -input <specify_input_external_delay_on_clock>
#external_delay -output <specify_output_external_delay_on_clock>

# Net Load/Input
# Modify the names of your input signals and set them to be ideal! 
# FIFO(m_clk, n_rst, data_av, data_in, data_out, Rx_done);

dc::set_ideal_net m_clk
dc::set_ideal_net n_reset
dc::set_ideal_net spi_mosi_out
dc::set_ideal_net read_req
dc::set_ideal_net spi_cs
dc::set_ideal_net read_req


dc::set_ideal_net spi_miso_in
dc::set_ideal_net data_out[119]
dc::set_ideal_net data_out[118]
dc::set_ideal_net data_out[117]
dc::set_ideal_net data_out[116]
dc::set_ideal_net data_out[115]
dc::set_ideal_net data_out[114]
dc::set_ideal_net data_out[113]
dc::set_ideal_net data_out[112]
dc::set_ideal_net data_out[111]
dc::set_ideal_net data_out[110]
dc::set_ideal_net data_out[109]
dc::set_ideal_net data_out[108]
dc::set_ideal_net data_out[107]
dc::set_ideal_net data_out[106]
dc::set_ideal_net data_out[105]
dc::set_ideal_net data_out[104]
dc::set_ideal_net data_out[103]
dc::set_ideal_net data_out[102]
dc::set_ideal_net data_out[101]
dc::set_ideal_net data_out[100]
dc::set_ideal_net data_out[99]
dc::set_ideal_net data_out[98]
dc::set_ideal_net data_out[97]
dc::set_ideal_net data_out[96]
dc::set_ideal_net data_out[95]
dc::set_ideal_net data_out[94]
dc::set_ideal_net data_out[93]
dc::set_ideal_net data_out[92]
dc::set_ideal_net data_out[91]
dc::set_ideal_net data_out[90]
dc::set_ideal_net data_out[89]
dc::set_ideal_net data_out[88]
dc::set_ideal_net data_out[87]
dc::set_ideal_net data_out[86]
dc::set_ideal_net data_out[85]
dc::set_ideal_net data_out[84]
dc::set_ideal_net data_out[83]
dc::set_ideal_net data_out[82]
dc::set_ideal_net data_out[81]
dc::set_ideal_net data_out[80]
dc::set_ideal_net data_out[79]
dc::set_ideal_net data_out[78]
dc::set_ideal_net data_out[77]
dc::set_ideal_net data_out[76]
dc::set_ideal_net data_out[75]
dc::set_ideal_net data_out[74]
dc::set_ideal_net data_out[73]
dc::set_ideal_net data_out[72]
dc::set_ideal_net data_out[71]
dc::set_ideal_net data_out[70]
dc::set_ideal_net data_out[69]
dc::set_ideal_net data_out[68]
dc::set_ideal_net data_out[67]
dc::set_ideal_net data_out[66]
dc::set_ideal_net data_out[65]
dc::set_ideal_net data_out[64]
dc::set_ideal_net data_out[63]
dc::set_ideal_net data_out[62]
dc::set_ideal_net data_out[61]
dc::set_ideal_net data_out[60]
dc::set_ideal_net data_out[59]
dc::set_ideal_net data_out[58]
dc::set_ideal_net data_out[57]
dc::set_ideal_net data_out[56]
dc::set_ideal_net data_out[55]
dc::set_ideal_net data_out[54]
dc::set_ideal_net data_out[53]
dc::set_ideal_net data_out[52]
dc::set_ideal_net data_out[51]
dc::set_ideal_net data_out[50]
dc::set_ideal_net data_out[49]
dc::set_ideal_net data_out[48]
dc::set_ideal_net data_out[47]
dc::set_ideal_net data_out[46]
dc::set_ideal_net data_out[45]
dc::set_ideal_net data_out[44]
dc::set_ideal_net data_out[43]
dc::set_ideal_net data_out[42]
dc::set_ideal_net data_out[41]
dc::set_ideal_net data_out[40]
dc::set_ideal_net data_out[39]
dc::set_ideal_net data_out[38]
dc::set_ideal_net data_out[37]
dc::set_ideal_net data_out[36]
dc::set_ideal_net data_out[35]
dc::set_ideal_net data_out[34]
dc::set_ideal_net data_out[33]
dc::set_ideal_net data_out[32]
dc::set_ideal_net data_out[31]
dc::set_ideal_net data_out[30]
dc::set_ideal_net data_out[29]
dc::set_ideal_net data_out[28]
dc::set_ideal_net data_out[27]
dc::set_ideal_net data_out[26]
dc::set_ideal_net data_out[25]
dc::set_ideal_net data_out[24]
dc::set_ideal_net data_out[23]
dc::set_ideal_net data_out[22]
dc::set_ideal_net data_out[21]
dc::set_ideal_net data_out[20]
dc::set_ideal_net data_out[19]
dc::set_ideal_net data_out[18]
dc::set_ideal_net data_out[17]
dc::set_ideal_net data_out[16]
dc::set_ideal_net data_out[15]
dc::set_ideal_net data_out[14]
dc::set_ideal_net data_out[13]
dc::set_ideal_net data_out[12]
dc::set_ideal_net data_out[11]
dc::set_ideal_net data_out[10]
dc::set_ideal_net data_out[9]
dc::set_ideal_net data_out[8]
dc::set_ideal_net data_out[7]
dc::set_ideal_net data_out[6]
dc::set_ideal_net data_out[5]
dc::set_ideal_net data_out[4]
dc::set_ideal_net data_out[3]
dc::set_ideal_net data_out[2]
dc::set_ideal_net data_out[1]





#ungroup -all -flatten

# the synthesizing includes following steps:
# 1. sythesizing the design to generic logic (RTL optimizations are performed in this step)
# 2. mapping to the technology library and performing incremental optimization
# there are two options for performing the synthetize command:
# 1. synthesize -to_generic: performs RTL optimization on your design. NOTE: when synthesize command
# is issued on an RTL design without any arguments, the -to_generic option is implied.
# 2. synthesize -to_mapped: it maps the specified design to the cells described in the supplied
# technology library and performs logic optimization(technology-independent boolean optimization,
# technology mapping nad technology-dependent gate optimization).
# setting the -effort to be high: the RTL compiler does the timing-driven structuring on larger sections
# of logic and spends more time and makes more attempts on inremental clean up. this effort level 
# involves very aggressive redundancy identification and removal. 
synthesize -effort high -to_mapped

report timing > timing.rpt
report design > design.rpt
report area >  area.rpt
report summary > summary.rpt
report gates > gates.rpt
report clocks > clock.rpt
report clocks -ideal > clockideal.rpt
report clocks -generated > clockgen.rpt
report nets > nets.rpt
report power > power.rpt

# the final part of the RTL compiler flow involves writing out the netlists and constraints.
# to write the gate-level netlist, use the write cmd. 
# The -mapped option of the write command writes a gate-level netlist,
# in this case to the file design.v
# write_hdl > design.v      # this writes the gate-level netlist to a file calles design.v
# Modify the name of the netlist file if necessary.
write -mapped > final_O_net.v

# This command writes out the constraints to the file constraints.g
write_script > constraints.g

# This command writes out the constraints in SDC (standard design compiler) format.
# modify the name of your sdc file if necessary.
write_sdc > final_O_sdc.sdc
# standard delay format (SDF) file that analysis and verification tools or timing
# simulation tools can use for delay annotation. 
# The  SDF  file  specifies  the  delay of all the cells and
# interconnects in the design in the Standard Delay Format. Specifically,
# it includes the delay values for all the timing arcs of a given cell in
# the design.
# Modify the name of the sdf file if necessary.
write_sdf -nonegchecks > final_O_sdf.sdf



#quit
