######################################################################

# Created by Encounter(R) RTL Compiler v11.20-s017_1 on Mon Jul 18 17:07:29 +0200 2016

# This file contains the RC script for /designs/spi_final

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
define_clock -name m_clk -domain domain_1 -period 50000.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -design /designs/spi_final /designs/spi_final/ports_in/m_clk
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/spi_final/timing/clock_domains/domain_1/m_clk -name in_del_1 {/designs/spi_final/ports_in/data_av {/designs/spi_final/ports_in/data_in[0]} {/designs/spi_final/ports_in/data_in[1]} {/designs/spi_final/ports_in/data_in[2]} {/designs/spi_final/ports_in/data_in[3]} {/designs/spi_final/ports_in/data_in[4]} {/designs/spi_final/ports_in/data_in[5]} {/designs/spi_final/ports_in/data_in[6]} {/designs/spi_final/ports_in/data_in[7]} /designs/spi_final/ports_in/n_reset /designs/spi_final/ports_in/m_clk}
external_delay -accumulate -output {2.0 2.0 2.0 2.0} -clock /designs/spi_final/timing/clock_domains/domain_1/m_clk -name ou_del_1 /designs/spi_final/ports_out/spi_mosi_out
# BEGIN DFT SECTION
set_attribute -quiet dft_scan_style muxed_scan /
set_attribute -quiet dft_scanbit_waveform_analysis false /
# END DFT SECTION
set_attribute -quiet hdl_user_name spi_final /designs/spi_final
set_attribute -quiet hdl_filelist {{default -v1995 {SYNTHESIS} {final_I.v}}} /designs/spi_final
set_attribute -quiet ovf_current_verification_directory fv/spi_final /designs/spi_final
set_attribute -quiet ideal_driver true /designs/spi_final/ports_in/m_clk
set_attribute -quiet ideal_driver true /designs/spi_final/ports_in/n_reset
set_attribute -quiet ideal_driver true {/designs/spi_final/ports_in/data_in[7]}
set_attribute -quiet ideal_driver true {/designs/spi_final/ports_in/data_in[6]}
set_attribute -quiet ideal_driver true {/designs/spi_final/ports_in/data_in[5]}
set_attribute -quiet ideal_driver true {/designs/spi_final/ports_in/data_in[4]}
set_attribute -quiet ideal_driver true {/designs/spi_final/ports_in/data_in[3]}
set_attribute -quiet ideal_driver true {/designs/spi_final/ports_in/data_in[2]}
set_attribute -quiet ideal_driver true {/designs/spi_final/ports_in/data_in[1]}
set_attribute -quiet ideal_driver true {/designs/spi_final/ports_in/data_in[0]}
set_attribute -quiet ideal_driver true /designs/spi_final/ports_in/data_av
set_attribute -quiet external_pin_cap_min 200.0 /designs/spi_final/ports_out/spi_mosi_out
set_attribute -quiet external_pin_cap {200.0 200.0} /designs/spi_final/ports_out/spi_mosi_out
set_attribute -quiet hdl_user_name spi_mosi /designs/spi_final/subdesigns/spi_mosi
set_attribute -quiet hdl_parameters {{DSIZE 8 0 8}} /designs/spi_final/subdesigns/spi_mosi
set_attribute -quiet hdl_filelist {{default -v1995 {SYNTHESIS} {final_I.v}}} /designs/spi_final/subdesigns/spi_mosi
set_attribute -quiet ideal_driver true /designs/spi_final/instances_hier/I2/instances_seq/spi_mosi_out_reg/pins_out/Q
set_attribute -quiet ideal_driver true /designs/spi_final/instances_seq/I1_spi_cs_reg/pins_out/Q
