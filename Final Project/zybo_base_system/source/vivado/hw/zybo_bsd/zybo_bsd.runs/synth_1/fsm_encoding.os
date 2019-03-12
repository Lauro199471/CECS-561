
 add_fsm_encoding \
       {vdma_to_vga.vga_state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 101} }

 add_fsm_encoding \
       {axi_dispctrl_v1_0.clk_state} \
       { }  \
       {{000 0000001} {001 0000010} {010 0000100} {011 0001000} {100 0010000} {101 0100000} {110 1000000} }

 add_fsm_encoding \
       {vdma_to_vga__parameterized1.vga_state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 101} }

 add_fsm_encoding \
       {axi_dispctrl_v1_0__parameterized0.clk_state} \
       { }  \
       {{000 0000001} {001 0000010} {010 0000100} {011 0001000} {100 0010000} {101 0100000} {110 1000000} }

 add_fsm_encoding \
       {axi_data_fifo_v2_1_7_axic_reg_srl_fifo.state} \
       { }  \
       {{00 0100} {01 1000} {10 0001} {11 0010} }

 add_fsm_encoding \
       {axi_vdma_sm.dmacntrl_cs} \
       { }  \
       {{000 000} {001 001} {010 010} {011 101} {100 011} {101 100} }
