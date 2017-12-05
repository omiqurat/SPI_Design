######################################################################

# Created by Encounter(R) RTL Compiler v11.20-s017_1 on Tue Jul 19 16:32:42 +0200 2016

# This file contains the RC script for /designs/spi_final_O

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
define_clock -name m_clk -domain domain_1 -period 50000.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -design /designs/spi_final_O /designs/spi_final_O/ports_in/m_clk
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/spi_final_O/timing/clock_domains/domain_1/m_clk -name in_del_1 {/designs/spi_final_O/ports_in/n_reset /designs/spi_final_O/ports_in/m_clk /designs/spi_final_O/ports_in/read_req /designs/spi_final_O/ports_in/spi_miso_in}
external_delay -accumulate -output {2.0 2.0 2.0 2.0} -clock /designs/spi_final_O/timing/clock_domains/domain_1/m_clk -name ou_del_1 {/designs/spi_final_O/ports_out/spi_mosi_out {/designs/spi_final_O/ports_out/data_out[0]} {/designs/spi_final_O/ports_out/data_out[1]} {/designs/spi_final_O/ports_out/data_out[2]} {/designs/spi_final_O/ports_out/data_out[3]} {/designs/spi_final_O/ports_out/data_out[4]} {/designs/spi_final_O/ports_out/data_out[5]} {/designs/spi_final_O/ports_out/data_out[6]} {/designs/spi_final_O/ports_out/data_out[7]} {/designs/spi_final_O/ports_out/data_out[8]} {/designs/spi_final_O/ports_out/data_out[9]} {/designs/spi_final_O/ports_out/data_out[10]} {/designs/spi_final_O/ports_out/data_out[11]} {/designs/spi_final_O/ports_out/data_out[12]} {/designs/spi_final_O/ports_out/data_out[13]} {/designs/spi_final_O/ports_out/data_out[14]} {/designs/spi_final_O/ports_out/data_out[15]} {/designs/spi_final_O/ports_out/data_out[16]} {/designs/spi_final_O/ports_out/data_out[17]} {/designs/spi_final_O/ports_out/data_out[18]} {/designs/spi_final_O/ports_out/data_out[19]} {/designs/spi_final_O/ports_out/data_out[20]} {/designs/spi_final_O/ports_out/data_out[21]} {/designs/spi_final_O/ports_out/data_out[22]} {/designs/spi_final_O/ports_out/data_out[23]} {/designs/spi_final_O/ports_out/data_out[24]} {/designs/spi_final_O/ports_out/data_out[25]} {/designs/spi_final_O/ports_out/data_out[26]} {/designs/spi_final_O/ports_out/data_out[27]} {/designs/spi_final_O/ports_out/data_out[28]} {/designs/spi_final_O/ports_out/data_out[29]} {/designs/spi_final_O/ports_out/data_out[30]} {/designs/spi_final_O/ports_out/data_out[31]} {/designs/spi_final_O/ports_out/data_out[32]} {/designs/spi_final_O/ports_out/data_out[33]} {/designs/spi_final_O/ports_out/data_out[34]} {/designs/spi_final_O/ports_out/data_out[35]} {/designs/spi_final_O/ports_out/data_out[36]} {/designs/spi_final_O/ports_out/data_out[37]} {/designs/spi_final_O/ports_out/data_out[38]} {/designs/spi_final_O/ports_out/data_out[39]} {/designs/spi_final_O/ports_out/data_out[40]} {/designs/spi_final_O/ports_out/data_out[41]} {/designs/spi_final_O/ports_out/data_out[42]} {/designs/spi_final_O/ports_out/data_out[43]} {/designs/spi_final_O/ports_out/data_out[44]} {/designs/spi_final_O/ports_out/data_out[45]} {/designs/spi_final_O/ports_out/data_out[46]} {/designs/spi_final_O/ports_out/data_out[47]} {/designs/spi_final_O/ports_out/data_out[48]} {/designs/spi_final_O/ports_out/data_out[49]} {/designs/spi_final_O/ports_out/data_out[50]} {/designs/spi_final_O/ports_out/data_out[51]} {/designs/spi_final_O/ports_out/data_out[52]} {/designs/spi_final_O/ports_out/data_out[53]} {/designs/spi_final_O/ports_out/data_out[54]} {/designs/spi_final_O/ports_out/data_out[55]} {/designs/spi_final_O/ports_out/data_out[56]} {/designs/spi_final_O/ports_out/data_out[57]} {/designs/spi_final_O/ports_out/data_out[58]} {/designs/spi_final_O/ports_out/data_out[59]} {/designs/spi_final_O/ports_out/data_out[60]} {/designs/spi_final_O/ports_out/data_out[61]} {/designs/spi_final_O/ports_out/data_out[62]} {/designs/spi_final_O/ports_out/data_out[63]} {/designs/spi_final_O/ports_out/data_out[64]} {/designs/spi_final_O/ports_out/data_out[65]} {/designs/spi_final_O/ports_out/data_out[66]} {/designs/spi_final_O/ports_out/data_out[67]} {/designs/spi_final_O/ports_out/data_out[68]} {/designs/spi_final_O/ports_out/data_out[69]} {/designs/spi_final_O/ports_out/data_out[70]} {/designs/spi_final_O/ports_out/data_out[71]} {/designs/spi_final_O/ports_out/data_out[72]} {/designs/spi_final_O/ports_out/data_out[73]} {/designs/spi_final_O/ports_out/data_out[74]} {/designs/spi_final_O/ports_out/data_out[75]} {/designs/spi_final_O/ports_out/data_out[76]} {/designs/spi_final_O/ports_out/data_out[77]} {/designs/spi_final_O/ports_out/data_out[78]} {/designs/spi_final_O/ports_out/data_out[79]} {/designs/spi_final_O/ports_out/data_out[80]} {/designs/spi_final_O/ports_out/data_out[81]} {/designs/spi_final_O/ports_out/data_out[82]} {/designs/spi_final_O/ports_out/data_out[83]} {/designs/spi_final_O/ports_out/data_out[84]} {/designs/spi_final_O/ports_out/data_out[85]} {/designs/spi_final_O/ports_out/data_out[86]} {/designs/spi_final_O/ports_out/data_out[87]} {/designs/spi_final_O/ports_out/data_out[88]} {/designs/spi_final_O/ports_out/data_out[89]} {/designs/spi_final_O/ports_out/data_out[90]} {/designs/spi_final_O/ports_out/data_out[91]} {/designs/spi_final_O/ports_out/data_out[92]} {/designs/spi_final_O/ports_out/data_out[93]} {/designs/spi_final_O/ports_out/data_out[94]} {/designs/spi_final_O/ports_out/data_out[95]} {/designs/spi_final_O/ports_out/data_out[96]} {/designs/spi_final_O/ports_out/data_out[97]} {/designs/spi_final_O/ports_out/data_out[98]} {/designs/spi_final_O/ports_out/data_out[99]} {/designs/spi_final_O/ports_out/data_out[100]} {/designs/spi_final_O/ports_out/data_out[101]} {/designs/spi_final_O/ports_out/data_out[102]} {/designs/spi_final_O/ports_out/data_out[103]} {/designs/spi_final_O/ports_out/data_out[104]} {/designs/spi_final_O/ports_out/data_out[105]} {/designs/spi_final_O/ports_out/data_out[106]} {/designs/spi_final_O/ports_out/data_out[107]} {/designs/spi_final_O/ports_out/data_out[108]} {/designs/spi_final_O/ports_out/data_out[109]} {/designs/spi_final_O/ports_out/data_out[110]} {/designs/spi_final_O/ports_out/data_out[111]} {/designs/spi_final_O/ports_out/data_out[112]} {/designs/spi_final_O/ports_out/data_out[113]} {/designs/spi_final_O/ports_out/data_out[114]} {/designs/spi_final_O/ports_out/data_out[115]} {/designs/spi_final_O/ports_out/data_out[116]} {/designs/spi_final_O/ports_out/data_out[117]} {/designs/spi_final_O/ports_out/data_out[118]} {/designs/spi_final_O/ports_out/data_out[119]}}
# BEGIN DFT SECTION
set_attribute -quiet dft_scan_style muxed_scan /
set_attribute -quiet dft_scanbit_waveform_analysis false /
# END DFT SECTION
set_attribute -quiet hdl_user_name spi_final_O /designs/spi_final_O
set_attribute -quiet hdl_filelist {{default -v1995 {SYNTHESIS} {final_O.v}}} /designs/spi_final_O
set_attribute -quiet ovf_current_verification_directory fv/spi_final_O /designs/spi_final_O
set_attribute -quiet ideal_driver true /designs/spi_final_O/ports_in/spi_miso_in
set_attribute -quiet ideal_driver true /designs/spi_final_O/ports_in/read_req
set_attribute -quiet ideal_driver true /designs/spi_final_O/ports_in/m_clk
set_attribute -quiet ideal_driver true /designs/spi_final_O/ports_in/n_reset
set_attribute -quiet ideal_driver true /designs/spi_final_O/instances_seq/O2_spi_mosi_out_reg/pins_out/Q
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[65]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[90]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[71]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[111]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[79]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[7]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[119]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[55]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[5]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[87]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[95]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[103]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[104]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[63]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[15]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[102]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[47]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[19]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[17]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[11]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[49]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[44]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[82]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[40]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[115]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[76]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[32]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[28]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[110]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[68]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[1]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[20]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[21]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[22]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[24]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[25]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[26]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[27]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[29]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[2]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[30]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[33]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[34]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[35]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[36]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[37]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[38]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[3]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[41]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[42]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[43]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[45]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[46]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[48]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[4]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[100]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[50]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[51]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[101]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[52]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[53]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[54]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[56]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[57]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[58]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[59]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[105]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[60]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[106]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[61]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[62]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[107]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[64]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[108]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[66]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[109]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[67]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[10]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[69]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[6]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[70]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[72]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[73]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[112]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[74]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[75]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[113]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[77]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[114]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[78]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[80]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[81]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[116]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[83]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[117]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[84]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[85]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[118]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[86]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[88]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[89]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[8]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[12]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[91]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[13]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[92]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[93]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[14]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[94]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[96]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[97]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[16]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[98]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[99]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[9]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[18]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[23]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[31]/pins_out/Q}
set_attribute -quiet ideal_driver true {/designs/spi_final_O/instances_seq/O1_data_out_reg[39]/pins_out/Q}
set_attribute -quiet ideal_driver true /designs/spi_final_O/instances_seq/O1_spi_cs_reg/pins_out/Q
