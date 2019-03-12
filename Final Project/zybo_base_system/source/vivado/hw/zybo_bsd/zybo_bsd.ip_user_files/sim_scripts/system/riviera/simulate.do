onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+system -pli "C:/Xilinx/Vivado/2016.1/lib/win64.o/libxil_vsim.dll" -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -L xpm -L axi_lite_ipif_v3_0_3 -L lib_cdc_v1_0_2 -L interrupt_control_v3_1_3 -L axi_gpio_v2_0_10 -L axi_i2s_adi_v1_00_a -L adi_common_v1_00_a -L generic_baseblocks_v2_1_0 -L fifo_generator_v13_1_0 -L axi_data_fifo_v2_1_7 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_8 -L axi_protocol_converter_v2_1_8 -L lib_pkg_v1_0_2 -L lib_fifo_v1_0_4 -L blk_mem_gen_v8_3_2 -L lib_bmg_v1_0_4 -L lib_srl_fifo_v1_0_2 -L axi_datamover_v5_1_10 -L axi_vdma_v6_2_7 -L processing_system7_bfm_v2_0_5 -L axi_crossbar_v2_1_9 -L axi_mmu_v2_1_6 -O5 xil_defaultlib.system xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {system.udo}

run -all

endsim

quit -force
