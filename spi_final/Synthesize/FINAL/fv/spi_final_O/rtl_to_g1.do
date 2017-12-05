// Generated by Cadence Encounter(R) RTL Compiler v11.20-s017_1
tclmode
set env(RC_VERSION) "v11.20-s017_1"
vpxmode
set dofile abort exit
usage -auto
set log file fv/spi_final_O/rtl_to_g1.log -replace
// tclmode
// set env(CDN_SYNTH_ROOT) /cds/2013/EDI110/tools
// vpxmode
tclmode
set env(NCPROTECT_KEYDB) /cds/2013/INCISIV121/kits/VerificationKit/misc/ip_keys
vpxmode

tclmode
puts "Start: Reading OVF file"
vpx read guide file fv/spi_final_O/rtl_to_g1.ovf
puts "End: Reading OVF file"
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
	final_O.v

elaborate design -golden -root spi_final_O

read design -verilog -revised -lastmod -noelab \
	-unzip fv/spi_final_O/g1.v.gz

elaborate design -revised -root spi_final_O

substitute blackbox model -golden
report design data
report black box

tclmode
puts "Start: Analyze and apply OVF transformations"
vpx apply guided transformations
vpx report guide information
puts "End: Analyze and apply OVF transformations"
vpxmode


uniquify -all -nolib
set flatten model -seq_constant -seq_constant_x_to 0
set flatten model -nodff_to_dlat_zero -nodff_to_dlat_feedback
// set parallel option -threads 4 -license xl
set analyze option -auto

set system mode lec
analyze datapath -module -verbose
usage
analyze datapath -verbose
// report mapped points
report unmapped points -summary
report unmapped points -extra -unreachable -notmapped
add compared points -all
// report compared points
compare
usage
// report compare data
report compare data -class nonequivalent -class abort -class notcompared
report verification -verbose
report statistics
tclmode
puts "No of compare points = [get_compare_points -count]"
puts "No of diff points    = [get_compare_points -diff -count]"
puts "No of abort points   = [get_compare_points -abort -count]"
puts "No of unknown points = [get_compare_points -unknown -count]"
if {[get_compare_points -count] == 0} {
    puts "---------------------------------"
    puts "ERROR: No compare points detected"
    puts "---------------------------------"
}
if {[get_compare_points -diff -count] > 0} {
    puts "------------------------------------"
    puts "ERROR: Different Key Points detected"
    puts "------------------------------------"
#     foreach i [get_compare_points -diff] {
#         vpx report test vector [get_keypoint $i]
#         puts "     ----------------------------"
#     }
}
if {[get_compare_points -abort -count] > 0} {
    puts "-----------------------------"
    puts "ERROR: Abort Points detected "
    puts "-----------------------------"
}
if {[get_compare_points -unknown -count] > 0} {
    puts "----------------------------------"
    puts "ERROR: Unknown Key Points detected"
    puts "----------------------------------"
}
vpxmode
exit -force
