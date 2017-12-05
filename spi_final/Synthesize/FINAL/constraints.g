######################################################################

# Created by Encounter(R) RTL Compiler v11.20-s017_1 on Fri Jul 22 17:37:03 +0200 2016

# This file contains the RC script for /designs/final_spi

######################################################################

set_attribute -quiet information_level 6 /
set_attribute -quiet gui_auto_update false /
set_attribute -quiet lib_search_path {. /designtools/cds/cadence/kits/AMS4.10/liberty/c35_3.3V} /
set_attribute -quiet ple_correlation_factors {1.9000 2.0000} /
set_attribute -quiet maximum_interval_of_vias infinity /
set_attribute -quiet interconnect_mode wireload /
set_attribute -quiet wireload_mode enclosed /
set_attribute -quiet wireload_selection /libraries/c35_CORELIB_TYP/wireload_selections/sub_micron /
set_attribute -quiet tree_type balanced_tree /libraries/c35_CORELIB_TYP/operating_conditions/WORST-MIL
set_attribute -quiet tree_type balanced_tree /libraries/c35_CORELIB_TYP/operating_conditions/WORST-IND
set_attribute -quiet tree_type balanced_tree /libraries/c35_CORELIB_TYP/operating_conditions/WORST
set_attribute -quiet tree_type balanced_tree /libraries/c35_CORELIB_TYP/operating_conditions/TYPICAL
set_attribute -quiet tree_type balanced_tree /libraries/c35_CORELIB_TYP/operating_conditions/BEST
set_attribute -quiet tree_type balanced_tree /libraries/c35_CORELIB_TYP/operating_conditions/BEST-IND
set_attribute -quiet tree_type balanced_tree /libraries/c35_CORELIB_TYP/operating_conditions/BEST-MIL
set_attribute -quiet tree_type balanced_tree /libraries/c35_CORELIB_TYP/operating_conditions/_nominal_
set_attribute -quiet tree_type balanced_tree /libraries/c35_IOLIB_TYP/operating_conditions/typical
set_attribute -quiet tree_type balanced_tree /libraries/c35_IOLIB_TYP/operating_conditions/_nominal_
# BEGIN MSV SECTION
# END MSV SECTION
define_clock -name Mclk -domain domain_1 -period 50000.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -design /designs/final_spi /designs/final_spi/ports_in/Mclk
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/final_spi/timing/clock_domains/domain_1/Mclk -name in_del_1 {{/designs/final_spi/ports_in/Data_in[0]} {/designs/final_spi/ports_in/Data_in[1]} {/designs/final_spi/ports_in/Data_in[2]} {/designs/final_spi/ports_in/Data_in[3]} {/designs/final_spi/ports_in/Data_in[4]} {/designs/final_spi/ports_in/Data_in[5]} {/designs/final_spi/ports_in/Data_in[6]} {/designs/final_spi/ports_in/Data_in[7]} /designs/final_spi/ports_in/spi_miso /designs/final_spi/ports_in/Read_request /designs/final_spi/ports_in/Data_available /designs/final_spi/ports_in/nReset /designs/final_spi/ports_in/Mclk}
external_delay -accumulate -output {2.0 2.0 2.0 2.0} -clock /designs/final_spi/timing/clock_domains/domain_1/Mclk -name ou_del_1 {/designs/final_spi/ports_out/spi_mosi /designs/final_spi/ports_out/spi_cs /designs/final_spi/ports_out/spi_clk {/designs/final_spi/ports_out/Data_out[0]} {/designs/final_spi/ports_out/Data_out[1]} {/designs/final_spi/ports_out/Data_out[2]} {/designs/final_spi/ports_out/Data_out[3]} {/designs/final_spi/ports_out/Data_out[4]} {/designs/final_spi/ports_out/Data_out[5]} {/designs/final_spi/ports_out/Data_out[6]} {/designs/final_spi/ports_out/Data_out[7]} {/designs/final_spi/ports_out/Data_out[8]} {/designs/final_spi/ports_out/Data_out[9]} {/designs/final_spi/ports_out/Data_out[10]} {/designs/final_spi/ports_out/Data_out[11]} {/designs/final_spi/ports_out/Data_out[12]} {/designs/final_spi/ports_out/Data_out[13]} {/designs/final_spi/ports_out/Data_out[14]} {/designs/final_spi/ports_out/Data_out[15]} {/designs/final_spi/ports_out/Data_out[16]} {/designs/final_spi/ports_out/Data_out[17]} {/designs/final_spi/ports_out/Data_out[18]} {/designs/final_spi/ports_out/Data_out[19]} {/designs/final_spi/ports_out/Data_out[20]} {/designs/final_spi/ports_out/Data_out[21]} {/designs/final_spi/ports_out/Data_out[22]} {/designs/final_spi/ports_out/Data_out[23]} {/designs/final_spi/ports_out/Data_out[24]} {/designs/final_spi/ports_out/Data_out[25]} {/designs/final_spi/ports_out/Data_out[26]} {/designs/final_spi/ports_out/Data_out[27]} {/designs/final_spi/ports_out/Data_out[28]} {/designs/final_spi/ports_out/Data_out[29]} {/designs/final_spi/ports_out/Data_out[30]} {/designs/final_spi/ports_out/Data_out[31]} {/designs/final_spi/ports_out/Data_out[32]} {/designs/final_spi/ports_out/Data_out[33]} {/designs/final_spi/ports_out/Data_out[34]} {/designs/final_spi/ports_out/Data_out[35]} {/designs/final_spi/ports_out/Data_out[36]} {/designs/final_spi/ports_out/Data_out[37]} {/designs/final_spi/ports_out/Data_out[38]} {/designs/final_spi/ports_out/Data_out[39]} {/designs/final_spi/ports_out/Data_out[40]} {/designs/final_spi/ports_out/Data_out[41]} {/designs/final_spi/ports_out/Data_out[42]} {/designs/final_spi/ports_out/Data_out[43]} {/designs/final_spi/ports_out/Data_out[44]} {/designs/final_spi/ports_out/Data_out[45]} {/designs/final_spi/ports_out/Data_out[46]} {/designs/final_spi/ports_out/Data_out[47]} {/designs/final_spi/ports_out/Data_out[48]} {/designs/final_spi/ports_out/Data_out[49]} {/designs/final_spi/ports_out/Data_out[50]} {/designs/final_spi/ports_out/Data_out[51]} {/designs/final_spi/ports_out/Data_out[52]} {/designs/final_spi/ports_out/Data_out[53]} {/designs/final_spi/ports_out/Data_out[54]} {/designs/final_spi/ports_out/Data_out[55]} {/designs/final_spi/ports_out/Data_out[56]} {/designs/final_spi/ports_out/Data_out[57]} {/designs/final_spi/ports_out/Data_out[58]} {/designs/final_spi/ports_out/Data_out[59]} {/designs/final_spi/ports_out/Data_out[60]} {/designs/final_spi/ports_out/Data_out[61]} {/designs/final_spi/ports_out/Data_out[62]} {/designs/final_spi/ports_out/Data_out[63]} {/designs/final_spi/ports_out/Data_out[64]} {/designs/final_spi/ports_out/Data_out[65]} {/designs/final_spi/ports_out/Data_out[66]} {/designs/final_spi/ports_out/Data_out[67]} {/designs/final_spi/ports_out/Data_out[68]} {/designs/final_spi/ports_out/Data_out[69]} {/designs/final_spi/ports_out/Data_out[70]} {/designs/final_spi/ports_out/Data_out[71]} {/designs/final_spi/ports_out/Data_out[72]} {/designs/final_spi/ports_out/Data_out[73]} {/designs/final_spi/ports_out/Data_out[74]} {/designs/final_spi/ports_out/Data_out[75]} {/designs/final_spi/ports_out/Data_out[76]} {/designs/final_spi/ports_out/Data_out[77]} {/designs/final_spi/ports_out/Data_out[78]} {/designs/final_spi/ports_out/Data_out[79]} {/designs/final_spi/ports_out/Data_out[80]} {/designs/final_spi/ports_out/Data_out[81]} {/designs/final_spi/ports_out/Data_out[82]} {/designs/final_spi/ports_out/Data_out[83]} {/designs/final_spi/ports_out/Data_out[84]} {/designs/final_spi/ports_out/Data_out[85]} {/designs/final_spi/ports_out/Data_out[86]} {/designs/final_spi/ports_out/Data_out[87]} {/designs/final_spi/ports_out/Data_out[88]} {/designs/final_spi/ports_out/Data_out[89]} {/designs/final_spi/ports_out/Data_out[90]} {/designs/final_spi/ports_out/Data_out[91]} {/designs/final_spi/ports_out/Data_out[92]} {/designs/final_spi/ports_out/Data_out[93]} {/designs/final_spi/ports_out/Data_out[94]} {/designs/final_spi/ports_out/Data_out[95]} {/designs/final_spi/ports_out/Data_out[96]} {/designs/final_spi/ports_out/Data_out[97]} {/designs/final_spi/ports_out/Data_out[98]} {/designs/final_spi/ports_out/Data_out[99]} {/designs/final_spi/ports_out/Data_out[100]} {/designs/final_spi/ports_out/Data_out[101]} {/designs/final_spi/ports_out/Data_out[102]} {/designs/final_spi/ports_out/Data_out[103]} {/designs/final_spi/ports_out/Data_out[104]} {/designs/final_spi/ports_out/Data_out[105]} {/designs/final_spi/ports_out/Data_out[106]} {/designs/final_spi/ports_out/Data_out[107]} {/designs/final_spi/ports_out/Data_out[108]} {/designs/final_spi/ports_out/Data_out[109]} {/designs/final_spi/ports_out/Data_out[110]} {/designs/final_spi/ports_out/Data_out[111]} {/designs/final_spi/ports_out/Data_out[112]} {/designs/final_spi/ports_out/Data_out[113]} {/designs/final_spi/ports_out/Data_out[114]} {/designs/final_spi/ports_out/Data_out[115]} {/designs/final_spi/ports_out/Data_out[116]} {/designs/final_spi/ports_out/Data_out[117]} {/designs/final_spi/ports_out/Data_out[118]} {/designs/final_spi/ports_out/Data_out[119]}}
# BEGIN DFT SECTION
set_attribute -quiet dft_scan_style muxed_scan /
set_attribute -quiet dft_scanbit_waveform_analysis false /
# END DFT SECTION
set_attribute -quiet hdl_user_name final_spi /designs/final_spi
set_attribute -quiet hdl_filelist {{default -v1995 {SYNTHESIS} {final.v}}} /designs/final_spi
set_attribute -quiet ovf_current_verification_directory fv/final_spi /designs/final_spi
set_attribute -quiet ideal_driver true /designs/final_spi/ports_in/Mclk
set_attribute -quiet ideal_driver true /designs/final_spi/ports_in/nReset
set_attribute -quiet ideal_driver true /designs/final_spi/ports_in/Data_available
set_attribute -quiet ideal_driver true /designs/final_spi/ports_in/Read_request
set_attribute -quiet ideal_driver true /designs/final_spi/ports_in/spi_miso
set_attribute -quiet ideal_driver true {/designs/final_spi/ports_in/Data_in[7]}
set_attribute -quiet ideal_driver true {/designs/final_spi/ports_in/Data_in[6]}
set_attribute -quiet ideal_driver true {/designs/final_spi/ports_in/Data_in[5]}
set_attribute -quiet ideal_driver true {/designs/final_spi/ports_in/Data_in[4]}
set_attribute -quiet ideal_driver true {/designs/final_spi/ports_in/Data_in[3]}
set_attribute -quiet ideal_driver true {/designs/final_spi/ports_in/Data_in[2]}
set_attribute -quiet ideal_driver true {/designs/final_spi/ports_in/Data_in[1]}
set_attribute -quiet ideal_driver true {/designs/final_spi/ports_in/Data_in[0]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[119]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[119]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[118]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[118]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[117]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[117]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[116]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[116]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[115]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[115]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[114]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[114]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[113]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[113]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[112]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[112]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[111]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[111]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[110]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[110]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[109]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[109]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[108]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[108]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[107]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[107]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[106]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[106]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[105]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[105]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[104]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[104]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[103]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[103]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[102]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[102]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[101]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[101]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[100]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[100]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[99]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[99]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[98]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[98]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[97]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[97]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[96]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[96]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[95]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[95]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[94]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[94]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[93]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[93]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[92]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[92]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[91]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[91]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[90]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[90]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[89]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[89]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[88]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[88]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[87]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[87]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[86]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[86]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[85]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[85]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[84]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[84]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[83]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[83]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[82]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[82]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[81]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[81]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[80]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[80]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[79]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[79]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[78]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[78]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[77]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[77]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[76]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[76]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[75]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[75]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[74]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[74]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[73]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[73]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[72]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[72]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[71]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[71]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[70]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[70]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[69]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[69]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[68]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[68]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[67]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[67]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[66]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[66]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[65]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[65]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[64]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[64]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[63]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[63]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[62]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[62]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[61]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[61]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[60]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[60]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[59]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[59]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[58]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[58]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[57]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[57]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[56]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[56]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[55]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[55]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[54]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[54]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[53]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[53]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[52]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[52]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[51]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[51]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[50]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[50]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[49]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[49]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[48]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[48]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[47]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[47]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[46]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[46]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[45]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[45]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[44]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[44]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[43]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[43]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[42]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[42]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[41]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[41]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[40]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[40]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[39]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[39]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[38]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[38]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[37]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[37]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[36]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[36]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[35]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[35]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[34]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[34]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[33]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[33]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[32]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[32]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[31]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[31]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[30]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[30]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[29]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[29]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[28]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[28]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[27]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[27]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[26]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[26]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[25]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[25]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[24]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[24]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[23]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[23]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[22]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[22]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[21]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[21]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[20]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[20]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[19]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[19]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[18]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[18]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[17]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[17]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[16]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[16]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[15]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[15]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[14]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[14]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[13]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[13]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[12]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[12]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[11]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[11]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[10]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[10]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[9]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[9]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[8]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[8]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[7]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[7]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[6]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[6]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[5]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[5]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[4]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[4]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[3]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[3]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[2]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[2]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[1]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[1]}
set_attribute -quiet external_pin_cap_min 200.0 {/designs/final_spi/ports_out/Data_out[0]}
set_attribute -quiet external_pin_cap {200.0 200.0} {/designs/final_spi/ports_out/Data_out[0]}
set_attribute -quiet external_pin_cap_min 200.0 /designs/final_spi/ports_out/spi_clk
set_attribute -quiet external_pin_cap {200.0 200.0} /designs/final_spi/ports_out/spi_clk
set_attribute -quiet external_pin_cap_min 200.0 /designs/final_spi/ports_out/spi_cs
set_attribute -quiet external_pin_cap {200.0 200.0} /designs/final_spi/ports_out/spi_cs
set_attribute -quiet external_pin_cap_min 200.0 /designs/final_spi/ports_out/spi_mosi
set_attribute -quiet external_pin_cap {200.0 200.0} /designs/final_spi/ports_out/spi_mosi
set_attribute -quiet hdl_user_name spi_mosi /designs/final_spi/subdesigns/spi_mosi
set_attribute -quiet hdl_parameters {{DSIZE 8 0 8}} /designs/final_spi/subdesigns/spi_mosi
set_attribute -quiet hdl_filelist {{default -v1995 {SYNTHESIS} {final.v}}} /designs/final_spi/subdesigns/spi_mosi
