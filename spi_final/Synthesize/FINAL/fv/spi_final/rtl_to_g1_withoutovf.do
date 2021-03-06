// Generated by Cadence Encounter(R) RTL Compiler v11.20-s017_1
tclmode
set env(RC_VERSION) "v11.20-s017_1"
vpxmode
set dofile abort exit
usage -auto
set log file fv/spi_final/rtl_to_g1_withoutovf.log -replace
// tclmode
// set env(CDN_SYNTH_ROOT) /cds/2013/EDI110/tools
// vpxmode
tclmode
set env(NCPROTECT_KEYDB) /cds/2013/INCISIV121/kits/VerificationKit/misc/ip_keys
vpxmode
tclmode
set ver [lindex [split [lindex [get_version_info] 0] "-"] 0]
if {$ver >= 08.10} {
  vpx set naming style rc
}
vpxmode
set naming rule "%s[%d]" -instance_array
set naming rule "%s_reg" -register -golden
set naming rule "%L.%s" "%L[%d].%s" "%s" -instance
set naming rule "%L.%s" "%L[%d].%s" "%s" -variable
set undefined cell black_box -noascend -both
set undriven signal Z -golden

add search path -library . /designtools/cds/cadence/kits/AMS4.10/liberty/c35_3.3V
read library -statetable -liberty  -both  \
	c35_CORELIB_TYP.lib \
	c35_IOLIB_TYP.lib

add search path -design .
read design  -verilog -define SYNTHESIS  -golden -lastmod -noelab \
	final_I.v

elaborate design -golden -root spi_final

read design -verilog -revised -lastmod -noelab \
	-unzip fv/spi_final/g1.v.gz

elaborate design -revised -root spi_final

substitute blackbox model -golden
report design data
report black box

uniquify -all -nolib
set flatten model -seq_constant -seq_constant_x_to 0
set flatten model -nodff_to_dlat_zero -nodff_to_dlat_feedback
// set parallel option -threads 4 -license xl
set analyze option -auto

write hier_compare dofile fv/spi_final/hier_rtl_to_g1_withoutovf.do \
	-noexact_pin_match -constraint -usage -replace -run_hier \
	-prepend_string "analyze datapath -module -verbose; usage; analyze datapath -verbose"
run hier_compare fv/spi_final/hier_rtl_to_g1_withoutovf.do
usage
// report hier_compare result -flattened
set system mode lec
tclmode
puts "No of diff points    = [get_compare_points -diff -count]"
if {[get_compare_points -diff -count] > 0} {
    puts "------------------------------------"
    puts "ERROR: Different Key Points detected"
    puts "------------------------------------"
#     foreach i [get_compare_points -diff] {
#         vpx report test vector [get_keypoint $i]
#         puts "     ----------------------------"
#     }
}
vpxmode
exit -force
