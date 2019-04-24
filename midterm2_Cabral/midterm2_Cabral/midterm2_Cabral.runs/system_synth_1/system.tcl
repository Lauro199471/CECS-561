# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param project.vivado.isBlockSynthRun true
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/midterm2_Cabral/midterm2_Cabral.cache/wt [current_project]
set_property parent.project_path C:/midterm2_Cabral/midterm2_Cabral.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:zybo:part0:1.0 [current_project]
set_property ip_repo_paths c:/Users/lauro/midterm_two_led_ip [current_project]
update_ip_catalog
set_property ip_output_repo c:/midterm2_Cabral/midterm2_Cabral.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files C:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/system.bd
set_property used_in_implementation false [get_files -all c:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_rst_ps7_0_100M_0/system_rst_ps7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_rst_ps7_0_100M_0/system_rst_ps7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_auto_pc_0/system_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/system_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top system -part xc7z010clg400-1 -mode out_of_context

rename_ref -prefix_all system_

# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef system.dcp
create_report "system_synth_1_synth_report_utilization_0" "report_utilization -file system_utilization_synth.rpt -pb system_utilization_synth.pb"

if { [catch {
  file copy -force C:/midterm2_Cabral/midterm2_Cabral.runs/system_synth_1/system.dcp C:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/system.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub C:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/system_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub C:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/system_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim C:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/system_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim C:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/system_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if {[file isdir C:/midterm2_Cabral/midterm2_Cabral.ip_user_files/bd/system]} {
  catch { 
    file copy -force C:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/system_stub.v C:/midterm2_Cabral/midterm2_Cabral.ip_user_files/bd/system
  }
}

if {[file isdir C:/midterm2_Cabral/midterm2_Cabral.ip_user_files/bd/system]} {
  catch { 
    file copy -force C:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/system_stub.vhdl C:/midterm2_Cabral/midterm2_Cabral.ip_user_files/bd/system
  }
}
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]