# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir c:/led_ip/ip_repo/edit_led_ip_v1_0.cache/wt [current_project]
set_property parent.project_path c:/led_ip/ip_repo/edit_led_ip_v1_0.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:zybo:part0:1.0 [current_project]
set_property ip_repo_paths c:/led_ip/ip_repo/led_ip_1.0 [current_project]
read_verilog -library xil_defaultlib {
  c:/led_ip/ip_repo/edit_led_ip_v1_0.srcs/sources_1/new/lab3_user_logic.v
  c:/led_ip/ip_repo/led_ip_1.0/hdl/led_ip_v1_0_S_AXI.v
  c:/led_ip/ip_repo/led_ip_1.0/hdl/led_ip_v1_0.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top led_ip_v1_0 -part xc7z010clg400-1


write_checkpoint -force -noxdef led_ip_v1_0.dcp

catch { report_utilization -file led_ip_v1_0_utilization_synth.rpt -pb led_ip_v1_0_utilization_synth.pb }
