############################
# On-board LED             #
############################
set_property PACKAGE_PIN M14 [get_ports LED[0]]
set_property IOSTANDARD LVCMOS33 [get_ports LED[0]]

set_property PACKAGE_PIN M15 [get_ports LED[1]]
set_property IOSTANDARD LVCMOS33 [get_ports LED[1]]

set_property PACKAGE_PIN G14 [get_ports LED[2]]
set_property IOSTANDARD LVCMOS33 [get_ports LED[2]]

set_property PACKAGE_PIN D18 [get_ports LED[3]]
set_property IOSTANDARD LVCMOS33 [get_ports LED[3]]

############################
# On-board BUTTON          #
############################
set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports { BUTTON[0] }]; #IO_L20N_T3_34 Sch=BTN0
set_property -dict { PACKAGE_PIN P16   IOSTANDARD LVCMOS33 } [get_ports { BUTTON[1] }]; #IO_L24N_T3_34 Sch=BTN1
set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { BUTTON[2] }]; #IO_L18P_T2_34 Sch=BTN2
set_property -dict { PACKAGE_PIN Y16   IOSTANDARD LVCMOS33 } [get_ports { BUTTON[3] }]; #IO_L7P_T1_34 Sch=BTN3