proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {HDL-1065} -limit 10000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7z010clg400-1
  set_property board_part digilentinc.com:zybo:part0:1.0 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir C:/Lab2/lab5/lab5.cache/wt [current_project]
  set_property parent.project_path C:/Lab2/lab5/lab5.xpr [current_project]
  set_property ip_repo_paths {
  c:/Lab2/lab5/lab5.cache/ip
  C:/Lab2/led_ip
} [current_project]
  set_property ip_output_repo c:/Lab2/lab5/lab5.cache/ip [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet C:/Lab2/lab5/lab5.runs/synth_1/design_1_wrapper.dcp
  add_files C:/Lab2/lab5/lab5.srcs/sources_1/bd/design_1/design_1.bmm
  set_property SCOPED_TO_REF design_1 [get_files -all C:/Lab2/lab5/lab5.srcs/sources_1/bd/design_1/design_1.bmm]
  read_xdc -ref design_1_processing_system7_0_0 -cells inst c:/Lab2/lab5/lab5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0.xdc
  set_property processing_order EARLY [get_files c:/Lab2/lab5/lab5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0.xdc]
  read_xdc -prop_thru_buffers -ref design_1_axi_gpio_0_0 -cells U0 c:/Lab2/lab5/lab5.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Lab2/lab5/lab5.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_board.xdc]
  read_xdc -ref design_1_axi_gpio_0_0 -cells U0 c:/Lab2/lab5/lab5.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0.xdc
  set_property processing_order EARLY [get_files c:/Lab2/lab5/lab5.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0.xdc]
  read_xdc -prop_thru_buffers -ref design_1_rst_processing_system7_0_100M_0 -cells U0 c:/Lab2/lab5/lab5.srcs/sources_1/bd/design_1/ip/design_1_rst_processing_system7_0_100M_0/design_1_rst_processing_system7_0_100M_0_board.xdc
  set_property processing_order EARLY [get_files c:/Lab2/lab5/lab5.srcs/sources_1/bd/design_1/ip/design_1_rst_processing_system7_0_100M_0/design_1_rst_processing_system7_0_100M_0_board.xdc]
  read_xdc -ref design_1_rst_processing_system7_0_100M_0 -cells U0 c:/Lab2/lab5/lab5.srcs/sources_1/bd/design_1/ip/design_1_rst_processing_system7_0_100M_0/design_1_rst_processing_system7_0_100M_0.xdc
  set_property processing_order EARLY [get_files c:/Lab2/lab5/lab5.srcs/sources_1/bd/design_1/ip/design_1_rst_processing_system7_0_100M_0/design_1_rst_processing_system7_0_100M_0.xdc]
  read_xdc -prop_thru_buffers -ref design_1_axi_gpio_0_1 -cells U0 c:/Lab2/lab5/lab5.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_1/design_1_axi_gpio_0_1_board.xdc
  set_property processing_order EARLY [get_files c:/Lab2/lab5/lab5.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_1/design_1_axi_gpio_0_1_board.xdc]
  read_xdc -ref design_1_axi_gpio_0_1 -cells U0 c:/Lab2/lab5/lab5.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_1/design_1_axi_gpio_0_1.xdc
  set_property processing_order EARLY [get_files c:/Lab2/lab5/lab5.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_1/design_1_axi_gpio_0_1.xdc]
  read_xdc C:/Lab2/lab5/lab5.srcs/constrs_1/new/lab3_zybo.xdc
  link_design -top design_1_wrapper -part xc7z010clg400-1
  write_hwdef -file design_1_wrapper.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force design_1_wrapper_opt.dcp
  report_drc -file design_1_wrapper_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force design_1_wrapper_placed.dcp
  report_io -file design_1_wrapper_io_placed.rpt
  report_utilization -file design_1_wrapper_utilization_placed.rpt -pb design_1_wrapper_utilization_placed.pb
  report_control_sets -verbose -file design_1_wrapper_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force design_1_wrapper_routed.dcp
  report_drc -file design_1_wrapper_drc_routed.rpt -pb design_1_wrapper_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file design_1_wrapper_timing_summary_routed.rpt -rpx design_1_wrapper_timing_summary_routed.rpx
  report_power -file design_1_wrapper_power_routed.rpt -pb design_1_wrapper_power_summary_routed.pb -rpx design_1_wrapper_power_routed.rpx
  report_route_status -file design_1_wrapper_route_status.rpt -pb design_1_wrapper_route_status.pb
  report_clock_utilization -file design_1_wrapper_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force design_1_wrapper.mmi }
  catch { write_bmm -force design_1_wrapper_bd.bmm }
  write_bitstream -force design_1_wrapper.bit 
  catch { write_sysdef -hwdef design_1_wrapper.hwdef -bitfile design_1_wrapper.bit -meminfo design_1_wrapper.mmi -file design_1_wrapper.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

