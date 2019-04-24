# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# Block Designs: C:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/system.bd
# Block Designs: The module: 'system' is the root of the design. Do not add the DONT_TOUCH constraint.

# IP: C:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_processing_system7_0_0 || ORIG_REF_NAME==system_processing_system7_0_0} -quiet] -quiet

# IP: C:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_axi_gpio_0_0 || ORIG_REF_NAME==system_axi_gpio_0_0} -quiet] -quiet

# IP: C:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_xbar_0/system_xbar_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_xbar_0 || ORIG_REF_NAME==system_xbar_0} -quiet] -quiet

# IP: C:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_ps7_0_axi_periph_0/system_ps7_0_axi_periph_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_ps7_0_axi_periph_0 || ORIG_REF_NAME==system_ps7_0_axi_periph_0} -quiet] -quiet

# IP: C:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_rst_ps7_0_100M_0/system_rst_ps7_0_100M_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_rst_ps7_0_100M_0 || ORIG_REF_NAME==system_rst_ps7_0_100M_0} -quiet] -quiet

# IP: c:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_user_led_ip_0_0/system_user_led_ip_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_user_led_ip_0_0 || ORIG_REF_NAME==system_user_led_ip_0_0} -quiet] -quiet

# IP: c:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_auto_pc_0/system_auto_pc_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_auto_pc_0 || ORIG_REF_NAME==system_auto_pc_0} -quiet] -quiet

# XDC: c:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_processing_system7_0_0 || ORIG_REF_NAME==system_processing_system7_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: c:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_axi_gpio_0_0 || ORIG_REF_NAME==system_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0_ooc.xdc

# XDC: c:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_axi_gpio_0_0 || ORIG_REF_NAME==system_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_rst_ps7_0_100M_0/system_rst_ps7_0_100M_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_rst_ps7_0_100M_0 || ORIG_REF_NAME==system_rst_ps7_0_100M_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_rst_ps7_0_100M_0/system_rst_ps7_0_100M_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_rst_ps7_0_100M_0 || ORIG_REF_NAME==system_rst_ps7_0_100M_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_auto_pc_0/system_auto_pc_0_ooc.xdc

# XDC: C:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/system_ooc.xdc
# XDC: The top module name and the constraint reference have the same name: 'system'. Do not add the DONT_TOUCH constraint.

# Block Designs: C:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/system.bd
# Block Designs: The module: 'system' is the root of the design. Do not add the DONT_TOUCH constraint.

# IP: C:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_processing_system7_0_0 || ORIG_REF_NAME==system_processing_system7_0_0} -quiet] -quiet

# IP: C:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_axi_gpio_0_0 || ORIG_REF_NAME==system_axi_gpio_0_0} -quiet] -quiet

# IP: C:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_xbar_0/system_xbar_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_xbar_0 || ORIG_REF_NAME==system_xbar_0} -quiet] -quiet

# IP: C:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_ps7_0_axi_periph_0/system_ps7_0_axi_periph_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_ps7_0_axi_periph_0 || ORIG_REF_NAME==system_ps7_0_axi_periph_0} -quiet] -quiet

# IP: C:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_rst_ps7_0_100M_0/system_rst_ps7_0_100M_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_rst_ps7_0_100M_0 || ORIG_REF_NAME==system_rst_ps7_0_100M_0} -quiet] -quiet

# IP: c:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_user_led_ip_0_0/system_user_led_ip_0_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_user_led_ip_0_0 || ORIG_REF_NAME==system_user_led_ip_0_0} -quiet] -quiet

# IP: c:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_auto_pc_0/system_auto_pc_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_auto_pc_0 || ORIG_REF_NAME==system_auto_pc_0} -quiet] -quiet

# XDC: c:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_processing_system7_0_0 || ORIG_REF_NAME==system_processing_system7_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: c:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0_board.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_axi_gpio_0_0 || ORIG_REF_NAME==system_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0_ooc.xdc

# XDC: c:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_axi_gpio_0_0 || ORIG_REF_NAME==system_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_rst_ps7_0_100M_0/system_rst_ps7_0_100M_0_board.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_rst_ps7_0_100M_0 || ORIG_REF_NAME==system_rst_ps7_0_100M_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_rst_ps7_0_100M_0/system_rst_ps7_0_100M_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_rst_ps7_0_100M_0 || ORIG_REF_NAME==system_rst_ps7_0_100M_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/ip/system_auto_pc_0/system_auto_pc_0_ooc.xdc

# XDC: C:/midterm2_Cabral/midterm2_Cabral.srcs/sources_1/bd/system/system_ooc.xdc
# XDC: The top module name and the constraint reference have the same name: 'system'. Do not add the DONT_TOUCH constraint.