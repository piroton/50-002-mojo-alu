set projDir "/home/samsonyubaijian/mojo/50-002-mojo-alu/work/planAhead"
set projName "ALU16"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "/home/samsonyubaijian/mojo/50-002-mojo-alu/work/verilog/mojo_top_0.v" "/home/samsonyubaijian/mojo/50-002-mojo-alu/work/verilog/reset_conditioner_1.v" "/home/samsonyubaijian/mojo/50-002-mojo-alu/work/verilog/edge_detector_2.v" "/home/samsonyubaijian/mojo/50-002-mojo-alu/work/verilog/edge_detector_2.v" "/home/samsonyubaijian/mojo/50-002-mojo-alu/work/verilog/edge_detector_2.v" "/home/samsonyubaijian/mojo/50-002-mojo-alu/work/verilog/button_conditioner_5.v" "/home/samsonyubaijian/mojo/50-002-mojo-alu/work/verilog/button_conditioner_5.v" "/home/samsonyubaijian/mojo/50-002-mojo-alu/work/verilog/button_conditioner_5.v" "/home/samsonyubaijian/mojo/50-002-mojo-alu/work/verilog/multi_seven_se_8.v" "/home/samsonyubaijian/mojo/50-002-mojo-alu/work/verilog/manualtest_9.v" "/home/samsonyubaijian/mojo/50-002-mojo-alu/work/verilog/autotest_10.v" "/home/samsonyubaijian/mojo/50-002-mojo-alu/work/verilog/pipeline_11.v" "/home/samsonyubaijian/mojo/50-002-mojo-alu/work/verilog/pipeline_11.v" "/home/samsonyubaijian/mojo/50-002-mojo-alu/work/verilog/pipeline_11.v" "/home/samsonyubaijian/mojo/50-002-mojo-alu/work/verilog/counter_14.v" "/home/samsonyubaijian/mojo/50-002-mojo-alu/work/verilog/seven_seg_15.v" "/home/samsonyubaijian/mojo/50-002-mojo-alu/work/verilog/decoder_16.v" "/home/samsonyubaijian/mojo/50-002-mojo-alu/work/verilog/alu_17.v" "/home/samsonyubaijian/mojo/50-002-mojo-alu/work/verilog/storevalues_18.v" "/home/samsonyubaijian/mojo/50-002-mojo-alu/work/verilog/alu_17.v" "/home/samsonyubaijian/mojo/50-002-mojo-alu/work/verilog/bool_20.v" "/home/samsonyubaijian/mojo/50-002-mojo-alu/work/verilog/addsub_21.v" "/home/samsonyubaijian/mojo/50-002-mojo-alu/work/verilog/comparator_22.v" "/home/samsonyubaijian/mojo/50-002-mojo-alu/work/verilog/bitshift_23.v" "/home/samsonyubaijian/mojo/50-002-mojo-alu/work/verilog/bool_20.v" "/home/samsonyubaijian/mojo/50-002-mojo-alu/work/verilog/addsub_21.v" "/home/samsonyubaijian/mojo/50-002-mojo-alu/work/verilog/comparator_22.v" "/home/samsonyubaijian/mojo/50-002-mojo-alu/work/verilog/bitshift_23.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list  "/home/samsonyubaijian/Desktop/mojo-ide-B1.3.6/library/components/mojo.ucf" "/home/samsonyubaijian/Desktop/mojo-ide-B1.3.6/library/components/io_shield.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
