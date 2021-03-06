//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
//Date        : Tue Apr 23 20:37:19 2019
//Host        : Lauro-Desktop running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    LED,
    buttons_tri_io,
    switches_tri_io);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output [3:0]LED;
  inout [31:0]buttons_tri_io;
  inout [31:0]switches_tri_io;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [3:0]LED;
  wire [0:0]buttons_tri_i_0;
  wire [1:1]buttons_tri_i_1;
  wire [10:10]buttons_tri_i_10;
  wire [11:11]buttons_tri_i_11;
  wire [12:12]buttons_tri_i_12;
  wire [13:13]buttons_tri_i_13;
  wire [14:14]buttons_tri_i_14;
  wire [15:15]buttons_tri_i_15;
  wire [16:16]buttons_tri_i_16;
  wire [17:17]buttons_tri_i_17;
  wire [18:18]buttons_tri_i_18;
  wire [19:19]buttons_tri_i_19;
  wire [2:2]buttons_tri_i_2;
  wire [20:20]buttons_tri_i_20;
  wire [21:21]buttons_tri_i_21;
  wire [22:22]buttons_tri_i_22;
  wire [23:23]buttons_tri_i_23;
  wire [24:24]buttons_tri_i_24;
  wire [25:25]buttons_tri_i_25;
  wire [26:26]buttons_tri_i_26;
  wire [27:27]buttons_tri_i_27;
  wire [28:28]buttons_tri_i_28;
  wire [29:29]buttons_tri_i_29;
  wire [3:3]buttons_tri_i_3;
  wire [30:30]buttons_tri_i_30;
  wire [31:31]buttons_tri_i_31;
  wire [4:4]buttons_tri_i_4;
  wire [5:5]buttons_tri_i_5;
  wire [6:6]buttons_tri_i_6;
  wire [7:7]buttons_tri_i_7;
  wire [8:8]buttons_tri_i_8;
  wire [9:9]buttons_tri_i_9;
  wire [0:0]buttons_tri_io_0;
  wire [1:1]buttons_tri_io_1;
  wire [10:10]buttons_tri_io_10;
  wire [11:11]buttons_tri_io_11;
  wire [12:12]buttons_tri_io_12;
  wire [13:13]buttons_tri_io_13;
  wire [14:14]buttons_tri_io_14;
  wire [15:15]buttons_tri_io_15;
  wire [16:16]buttons_tri_io_16;
  wire [17:17]buttons_tri_io_17;
  wire [18:18]buttons_tri_io_18;
  wire [19:19]buttons_tri_io_19;
  wire [2:2]buttons_tri_io_2;
  wire [20:20]buttons_tri_io_20;
  wire [21:21]buttons_tri_io_21;
  wire [22:22]buttons_tri_io_22;
  wire [23:23]buttons_tri_io_23;
  wire [24:24]buttons_tri_io_24;
  wire [25:25]buttons_tri_io_25;
  wire [26:26]buttons_tri_io_26;
  wire [27:27]buttons_tri_io_27;
  wire [28:28]buttons_tri_io_28;
  wire [29:29]buttons_tri_io_29;
  wire [3:3]buttons_tri_io_3;
  wire [30:30]buttons_tri_io_30;
  wire [31:31]buttons_tri_io_31;
  wire [4:4]buttons_tri_io_4;
  wire [5:5]buttons_tri_io_5;
  wire [6:6]buttons_tri_io_6;
  wire [7:7]buttons_tri_io_7;
  wire [8:8]buttons_tri_io_8;
  wire [9:9]buttons_tri_io_9;
  wire [0:0]buttons_tri_o_0;
  wire [1:1]buttons_tri_o_1;
  wire [10:10]buttons_tri_o_10;
  wire [11:11]buttons_tri_o_11;
  wire [12:12]buttons_tri_o_12;
  wire [13:13]buttons_tri_o_13;
  wire [14:14]buttons_tri_o_14;
  wire [15:15]buttons_tri_o_15;
  wire [16:16]buttons_tri_o_16;
  wire [17:17]buttons_tri_o_17;
  wire [18:18]buttons_tri_o_18;
  wire [19:19]buttons_tri_o_19;
  wire [2:2]buttons_tri_o_2;
  wire [20:20]buttons_tri_o_20;
  wire [21:21]buttons_tri_o_21;
  wire [22:22]buttons_tri_o_22;
  wire [23:23]buttons_tri_o_23;
  wire [24:24]buttons_tri_o_24;
  wire [25:25]buttons_tri_o_25;
  wire [26:26]buttons_tri_o_26;
  wire [27:27]buttons_tri_o_27;
  wire [28:28]buttons_tri_o_28;
  wire [29:29]buttons_tri_o_29;
  wire [3:3]buttons_tri_o_3;
  wire [30:30]buttons_tri_o_30;
  wire [31:31]buttons_tri_o_31;
  wire [4:4]buttons_tri_o_4;
  wire [5:5]buttons_tri_o_5;
  wire [6:6]buttons_tri_o_6;
  wire [7:7]buttons_tri_o_7;
  wire [8:8]buttons_tri_o_8;
  wire [9:9]buttons_tri_o_9;
  wire [0:0]buttons_tri_t_0;
  wire [1:1]buttons_tri_t_1;
  wire [10:10]buttons_tri_t_10;
  wire [11:11]buttons_tri_t_11;
  wire [12:12]buttons_tri_t_12;
  wire [13:13]buttons_tri_t_13;
  wire [14:14]buttons_tri_t_14;
  wire [15:15]buttons_tri_t_15;
  wire [16:16]buttons_tri_t_16;
  wire [17:17]buttons_tri_t_17;
  wire [18:18]buttons_tri_t_18;
  wire [19:19]buttons_tri_t_19;
  wire [2:2]buttons_tri_t_2;
  wire [20:20]buttons_tri_t_20;
  wire [21:21]buttons_tri_t_21;
  wire [22:22]buttons_tri_t_22;
  wire [23:23]buttons_tri_t_23;
  wire [24:24]buttons_tri_t_24;
  wire [25:25]buttons_tri_t_25;
  wire [26:26]buttons_tri_t_26;
  wire [27:27]buttons_tri_t_27;
  wire [28:28]buttons_tri_t_28;
  wire [29:29]buttons_tri_t_29;
  wire [3:3]buttons_tri_t_3;
  wire [30:30]buttons_tri_t_30;
  wire [31:31]buttons_tri_t_31;
  wire [4:4]buttons_tri_t_4;
  wire [5:5]buttons_tri_t_5;
  wire [6:6]buttons_tri_t_6;
  wire [7:7]buttons_tri_t_7;
  wire [8:8]buttons_tri_t_8;
  wire [9:9]buttons_tri_t_9;
  wire [0:0]switches_tri_i_0;
  wire [1:1]switches_tri_i_1;
  wire [10:10]switches_tri_i_10;
  wire [11:11]switches_tri_i_11;
  wire [12:12]switches_tri_i_12;
  wire [13:13]switches_tri_i_13;
  wire [14:14]switches_tri_i_14;
  wire [15:15]switches_tri_i_15;
  wire [16:16]switches_tri_i_16;
  wire [17:17]switches_tri_i_17;
  wire [18:18]switches_tri_i_18;
  wire [19:19]switches_tri_i_19;
  wire [2:2]switches_tri_i_2;
  wire [20:20]switches_tri_i_20;
  wire [21:21]switches_tri_i_21;
  wire [22:22]switches_tri_i_22;
  wire [23:23]switches_tri_i_23;
  wire [24:24]switches_tri_i_24;
  wire [25:25]switches_tri_i_25;
  wire [26:26]switches_tri_i_26;
  wire [27:27]switches_tri_i_27;
  wire [28:28]switches_tri_i_28;
  wire [29:29]switches_tri_i_29;
  wire [3:3]switches_tri_i_3;
  wire [30:30]switches_tri_i_30;
  wire [31:31]switches_tri_i_31;
  wire [4:4]switches_tri_i_4;
  wire [5:5]switches_tri_i_5;
  wire [6:6]switches_tri_i_6;
  wire [7:7]switches_tri_i_7;
  wire [8:8]switches_tri_i_8;
  wire [9:9]switches_tri_i_9;
  wire [0:0]switches_tri_io_0;
  wire [1:1]switches_tri_io_1;
  wire [10:10]switches_tri_io_10;
  wire [11:11]switches_tri_io_11;
  wire [12:12]switches_tri_io_12;
  wire [13:13]switches_tri_io_13;
  wire [14:14]switches_tri_io_14;
  wire [15:15]switches_tri_io_15;
  wire [16:16]switches_tri_io_16;
  wire [17:17]switches_tri_io_17;
  wire [18:18]switches_tri_io_18;
  wire [19:19]switches_tri_io_19;
  wire [2:2]switches_tri_io_2;
  wire [20:20]switches_tri_io_20;
  wire [21:21]switches_tri_io_21;
  wire [22:22]switches_tri_io_22;
  wire [23:23]switches_tri_io_23;
  wire [24:24]switches_tri_io_24;
  wire [25:25]switches_tri_io_25;
  wire [26:26]switches_tri_io_26;
  wire [27:27]switches_tri_io_27;
  wire [28:28]switches_tri_io_28;
  wire [29:29]switches_tri_io_29;
  wire [3:3]switches_tri_io_3;
  wire [30:30]switches_tri_io_30;
  wire [31:31]switches_tri_io_31;
  wire [4:4]switches_tri_io_4;
  wire [5:5]switches_tri_io_5;
  wire [6:6]switches_tri_io_6;
  wire [7:7]switches_tri_io_7;
  wire [8:8]switches_tri_io_8;
  wire [9:9]switches_tri_io_9;
  wire [0:0]switches_tri_o_0;
  wire [1:1]switches_tri_o_1;
  wire [10:10]switches_tri_o_10;
  wire [11:11]switches_tri_o_11;
  wire [12:12]switches_tri_o_12;
  wire [13:13]switches_tri_o_13;
  wire [14:14]switches_tri_o_14;
  wire [15:15]switches_tri_o_15;
  wire [16:16]switches_tri_o_16;
  wire [17:17]switches_tri_o_17;
  wire [18:18]switches_tri_o_18;
  wire [19:19]switches_tri_o_19;
  wire [2:2]switches_tri_o_2;
  wire [20:20]switches_tri_o_20;
  wire [21:21]switches_tri_o_21;
  wire [22:22]switches_tri_o_22;
  wire [23:23]switches_tri_o_23;
  wire [24:24]switches_tri_o_24;
  wire [25:25]switches_tri_o_25;
  wire [26:26]switches_tri_o_26;
  wire [27:27]switches_tri_o_27;
  wire [28:28]switches_tri_o_28;
  wire [29:29]switches_tri_o_29;
  wire [3:3]switches_tri_o_3;
  wire [30:30]switches_tri_o_30;
  wire [31:31]switches_tri_o_31;
  wire [4:4]switches_tri_o_4;
  wire [5:5]switches_tri_o_5;
  wire [6:6]switches_tri_o_6;
  wire [7:7]switches_tri_o_7;
  wire [8:8]switches_tri_o_8;
  wire [9:9]switches_tri_o_9;
  wire [0:0]switches_tri_t_0;
  wire [1:1]switches_tri_t_1;
  wire [10:10]switches_tri_t_10;
  wire [11:11]switches_tri_t_11;
  wire [12:12]switches_tri_t_12;
  wire [13:13]switches_tri_t_13;
  wire [14:14]switches_tri_t_14;
  wire [15:15]switches_tri_t_15;
  wire [16:16]switches_tri_t_16;
  wire [17:17]switches_tri_t_17;
  wire [18:18]switches_tri_t_18;
  wire [19:19]switches_tri_t_19;
  wire [2:2]switches_tri_t_2;
  wire [20:20]switches_tri_t_20;
  wire [21:21]switches_tri_t_21;
  wire [22:22]switches_tri_t_22;
  wire [23:23]switches_tri_t_23;
  wire [24:24]switches_tri_t_24;
  wire [25:25]switches_tri_t_25;
  wire [26:26]switches_tri_t_26;
  wire [27:27]switches_tri_t_27;
  wire [28:28]switches_tri_t_28;
  wire [29:29]switches_tri_t_29;
  wire [3:3]switches_tri_t_3;
  wire [30:30]switches_tri_t_30;
  wire [31:31]switches_tri_t_31;
  wire [4:4]switches_tri_t_4;
  wire [5:5]switches_tri_t_5;
  wire [6:6]switches_tri_t_6;
  wire [7:7]switches_tri_t_7;
  wire [8:8]switches_tri_t_8;
  wire [9:9]switches_tri_t_9;

  IOBUF buttons_tri_iobuf_0
       (.I(buttons_tri_o_0),
        .IO(buttons_tri_io[0]),
        .O(buttons_tri_i_0),
        .T(buttons_tri_t_0));
  IOBUF buttons_tri_iobuf_1
       (.I(buttons_tri_o_1),
        .IO(buttons_tri_io[1]),
        .O(buttons_tri_i_1),
        .T(buttons_tri_t_1));
  IOBUF buttons_tri_iobuf_10
       (.I(buttons_tri_o_10),
        .IO(buttons_tri_io[10]),
        .O(buttons_tri_i_10),
        .T(buttons_tri_t_10));
  IOBUF buttons_tri_iobuf_11
       (.I(buttons_tri_o_11),
        .IO(buttons_tri_io[11]),
        .O(buttons_tri_i_11),
        .T(buttons_tri_t_11));
  IOBUF buttons_tri_iobuf_12
       (.I(buttons_tri_o_12),
        .IO(buttons_tri_io[12]),
        .O(buttons_tri_i_12),
        .T(buttons_tri_t_12));
  IOBUF buttons_tri_iobuf_13
       (.I(buttons_tri_o_13),
        .IO(buttons_tri_io[13]),
        .O(buttons_tri_i_13),
        .T(buttons_tri_t_13));
  IOBUF buttons_tri_iobuf_14
       (.I(buttons_tri_o_14),
        .IO(buttons_tri_io[14]),
        .O(buttons_tri_i_14),
        .T(buttons_tri_t_14));
  IOBUF buttons_tri_iobuf_15
       (.I(buttons_tri_o_15),
        .IO(buttons_tri_io[15]),
        .O(buttons_tri_i_15),
        .T(buttons_tri_t_15));
  IOBUF buttons_tri_iobuf_16
       (.I(buttons_tri_o_16),
        .IO(buttons_tri_io[16]),
        .O(buttons_tri_i_16),
        .T(buttons_tri_t_16));
  IOBUF buttons_tri_iobuf_17
       (.I(buttons_tri_o_17),
        .IO(buttons_tri_io[17]),
        .O(buttons_tri_i_17),
        .T(buttons_tri_t_17));
  IOBUF buttons_tri_iobuf_18
       (.I(buttons_tri_o_18),
        .IO(buttons_tri_io[18]),
        .O(buttons_tri_i_18),
        .T(buttons_tri_t_18));
  IOBUF buttons_tri_iobuf_19
       (.I(buttons_tri_o_19),
        .IO(buttons_tri_io[19]),
        .O(buttons_tri_i_19),
        .T(buttons_tri_t_19));
  IOBUF buttons_tri_iobuf_2
       (.I(buttons_tri_o_2),
        .IO(buttons_tri_io[2]),
        .O(buttons_tri_i_2),
        .T(buttons_tri_t_2));
  IOBUF buttons_tri_iobuf_20
       (.I(buttons_tri_o_20),
        .IO(buttons_tri_io[20]),
        .O(buttons_tri_i_20),
        .T(buttons_tri_t_20));
  IOBUF buttons_tri_iobuf_21
       (.I(buttons_tri_o_21),
        .IO(buttons_tri_io[21]),
        .O(buttons_tri_i_21),
        .T(buttons_tri_t_21));
  IOBUF buttons_tri_iobuf_22
       (.I(buttons_tri_o_22),
        .IO(buttons_tri_io[22]),
        .O(buttons_tri_i_22),
        .T(buttons_tri_t_22));
  IOBUF buttons_tri_iobuf_23
       (.I(buttons_tri_o_23),
        .IO(buttons_tri_io[23]),
        .O(buttons_tri_i_23),
        .T(buttons_tri_t_23));
  IOBUF buttons_tri_iobuf_24
       (.I(buttons_tri_o_24),
        .IO(buttons_tri_io[24]),
        .O(buttons_tri_i_24),
        .T(buttons_tri_t_24));
  IOBUF buttons_tri_iobuf_25
       (.I(buttons_tri_o_25),
        .IO(buttons_tri_io[25]),
        .O(buttons_tri_i_25),
        .T(buttons_tri_t_25));
  IOBUF buttons_tri_iobuf_26
       (.I(buttons_tri_o_26),
        .IO(buttons_tri_io[26]),
        .O(buttons_tri_i_26),
        .T(buttons_tri_t_26));
  IOBUF buttons_tri_iobuf_27
       (.I(buttons_tri_o_27),
        .IO(buttons_tri_io[27]),
        .O(buttons_tri_i_27),
        .T(buttons_tri_t_27));
  IOBUF buttons_tri_iobuf_28
       (.I(buttons_tri_o_28),
        .IO(buttons_tri_io[28]),
        .O(buttons_tri_i_28),
        .T(buttons_tri_t_28));
  IOBUF buttons_tri_iobuf_29
       (.I(buttons_tri_o_29),
        .IO(buttons_tri_io[29]),
        .O(buttons_tri_i_29),
        .T(buttons_tri_t_29));
  IOBUF buttons_tri_iobuf_3
       (.I(buttons_tri_o_3),
        .IO(buttons_tri_io[3]),
        .O(buttons_tri_i_3),
        .T(buttons_tri_t_3));
  IOBUF buttons_tri_iobuf_30
       (.I(buttons_tri_o_30),
        .IO(buttons_tri_io[30]),
        .O(buttons_tri_i_30),
        .T(buttons_tri_t_30));
  IOBUF buttons_tri_iobuf_31
       (.I(buttons_tri_o_31),
        .IO(buttons_tri_io[31]),
        .O(buttons_tri_i_31),
        .T(buttons_tri_t_31));
  IOBUF buttons_tri_iobuf_4
       (.I(buttons_tri_o_4),
        .IO(buttons_tri_io[4]),
        .O(buttons_tri_i_4),
        .T(buttons_tri_t_4));
  IOBUF buttons_tri_iobuf_5
       (.I(buttons_tri_o_5),
        .IO(buttons_tri_io[5]),
        .O(buttons_tri_i_5),
        .T(buttons_tri_t_5));
  IOBUF buttons_tri_iobuf_6
       (.I(buttons_tri_o_6),
        .IO(buttons_tri_io[6]),
        .O(buttons_tri_i_6),
        .T(buttons_tri_t_6));
  IOBUF buttons_tri_iobuf_7
       (.I(buttons_tri_o_7),
        .IO(buttons_tri_io[7]),
        .O(buttons_tri_i_7),
        .T(buttons_tri_t_7));
  IOBUF buttons_tri_iobuf_8
       (.I(buttons_tri_o_8),
        .IO(buttons_tri_io[8]),
        .O(buttons_tri_i_8),
        .T(buttons_tri_t_8));
  IOBUF buttons_tri_iobuf_9
       (.I(buttons_tri_o_9),
        .IO(buttons_tri_io[9]),
        .O(buttons_tri_i_9),
        .T(buttons_tri_t_9));
  design_1 design_1_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .LED(LED),
        .buttons_tri_i({buttons_tri_i_31,buttons_tri_i_30,buttons_tri_i_29,buttons_tri_i_28,buttons_tri_i_27,buttons_tri_i_26,buttons_tri_i_25,buttons_tri_i_24,buttons_tri_i_23,buttons_tri_i_22,buttons_tri_i_21,buttons_tri_i_20,buttons_tri_i_19,buttons_tri_i_18,buttons_tri_i_17,buttons_tri_i_16,buttons_tri_i_15,buttons_tri_i_14,buttons_tri_i_13,buttons_tri_i_12,buttons_tri_i_11,buttons_tri_i_10,buttons_tri_i_9,buttons_tri_i_8,buttons_tri_i_7,buttons_tri_i_6,buttons_tri_i_5,buttons_tri_i_4,buttons_tri_i_3,buttons_tri_i_2,buttons_tri_i_1,buttons_tri_i_0}),
        .buttons_tri_o({buttons_tri_o_31,buttons_tri_o_30,buttons_tri_o_29,buttons_tri_o_28,buttons_tri_o_27,buttons_tri_o_26,buttons_tri_o_25,buttons_tri_o_24,buttons_tri_o_23,buttons_tri_o_22,buttons_tri_o_21,buttons_tri_o_20,buttons_tri_o_19,buttons_tri_o_18,buttons_tri_o_17,buttons_tri_o_16,buttons_tri_o_15,buttons_tri_o_14,buttons_tri_o_13,buttons_tri_o_12,buttons_tri_o_11,buttons_tri_o_10,buttons_tri_o_9,buttons_tri_o_8,buttons_tri_o_7,buttons_tri_o_6,buttons_tri_o_5,buttons_tri_o_4,buttons_tri_o_3,buttons_tri_o_2,buttons_tri_o_1,buttons_tri_o_0}),
        .buttons_tri_t({buttons_tri_t_31,buttons_tri_t_30,buttons_tri_t_29,buttons_tri_t_28,buttons_tri_t_27,buttons_tri_t_26,buttons_tri_t_25,buttons_tri_t_24,buttons_tri_t_23,buttons_tri_t_22,buttons_tri_t_21,buttons_tri_t_20,buttons_tri_t_19,buttons_tri_t_18,buttons_tri_t_17,buttons_tri_t_16,buttons_tri_t_15,buttons_tri_t_14,buttons_tri_t_13,buttons_tri_t_12,buttons_tri_t_11,buttons_tri_t_10,buttons_tri_t_9,buttons_tri_t_8,buttons_tri_t_7,buttons_tri_t_6,buttons_tri_t_5,buttons_tri_t_4,buttons_tri_t_3,buttons_tri_t_2,buttons_tri_t_1,buttons_tri_t_0}),
        .switches_tri_i({switches_tri_i_31,switches_tri_i_30,switches_tri_i_29,switches_tri_i_28,switches_tri_i_27,switches_tri_i_26,switches_tri_i_25,switches_tri_i_24,switches_tri_i_23,switches_tri_i_22,switches_tri_i_21,switches_tri_i_20,switches_tri_i_19,switches_tri_i_18,switches_tri_i_17,switches_tri_i_16,switches_tri_i_15,switches_tri_i_14,switches_tri_i_13,switches_tri_i_12,switches_tri_i_11,switches_tri_i_10,switches_tri_i_9,switches_tri_i_8,switches_tri_i_7,switches_tri_i_6,switches_tri_i_5,switches_tri_i_4,switches_tri_i_3,switches_tri_i_2,switches_tri_i_1,switches_tri_i_0}),
        .switches_tri_o({switches_tri_o_31,switches_tri_o_30,switches_tri_o_29,switches_tri_o_28,switches_tri_o_27,switches_tri_o_26,switches_tri_o_25,switches_tri_o_24,switches_tri_o_23,switches_tri_o_22,switches_tri_o_21,switches_tri_o_20,switches_tri_o_19,switches_tri_o_18,switches_tri_o_17,switches_tri_o_16,switches_tri_o_15,switches_tri_o_14,switches_tri_o_13,switches_tri_o_12,switches_tri_o_11,switches_tri_o_10,switches_tri_o_9,switches_tri_o_8,switches_tri_o_7,switches_tri_o_6,switches_tri_o_5,switches_tri_o_4,switches_tri_o_3,switches_tri_o_2,switches_tri_o_1,switches_tri_o_0}),
        .switches_tri_t({switches_tri_t_31,switches_tri_t_30,switches_tri_t_29,switches_tri_t_28,switches_tri_t_27,switches_tri_t_26,switches_tri_t_25,switches_tri_t_24,switches_tri_t_23,switches_tri_t_22,switches_tri_t_21,switches_tri_t_20,switches_tri_t_19,switches_tri_t_18,switches_tri_t_17,switches_tri_t_16,switches_tri_t_15,switches_tri_t_14,switches_tri_t_13,switches_tri_t_12,switches_tri_t_11,switches_tri_t_10,switches_tri_t_9,switches_tri_t_8,switches_tri_t_7,switches_tri_t_6,switches_tri_t_5,switches_tri_t_4,switches_tri_t_3,switches_tri_t_2,switches_tri_t_1,switches_tri_t_0}));
  IOBUF switches_tri_iobuf_0
       (.I(switches_tri_o_0),
        .IO(switches_tri_io[0]),
        .O(switches_tri_i_0),
        .T(switches_tri_t_0));
  IOBUF switches_tri_iobuf_1
       (.I(switches_tri_o_1),
        .IO(switches_tri_io[1]),
        .O(switches_tri_i_1),
        .T(switches_tri_t_1));
  IOBUF switches_tri_iobuf_10
       (.I(switches_tri_o_10),
        .IO(switches_tri_io[10]),
        .O(switches_tri_i_10),
        .T(switches_tri_t_10));
  IOBUF switches_tri_iobuf_11
       (.I(switches_tri_o_11),
        .IO(switches_tri_io[11]),
        .O(switches_tri_i_11),
        .T(switches_tri_t_11));
  IOBUF switches_tri_iobuf_12
       (.I(switches_tri_o_12),
        .IO(switches_tri_io[12]),
        .O(switches_tri_i_12),
        .T(switches_tri_t_12));
  IOBUF switches_tri_iobuf_13
       (.I(switches_tri_o_13),
        .IO(switches_tri_io[13]),
        .O(switches_tri_i_13),
        .T(switches_tri_t_13));
  IOBUF switches_tri_iobuf_14
       (.I(switches_tri_o_14),
        .IO(switches_tri_io[14]),
        .O(switches_tri_i_14),
        .T(switches_tri_t_14));
  IOBUF switches_tri_iobuf_15
       (.I(switches_tri_o_15),
        .IO(switches_tri_io[15]),
        .O(switches_tri_i_15),
        .T(switches_tri_t_15));
  IOBUF switches_tri_iobuf_16
       (.I(switches_tri_o_16),
        .IO(switches_tri_io[16]),
        .O(switches_tri_i_16),
        .T(switches_tri_t_16));
  IOBUF switches_tri_iobuf_17
       (.I(switches_tri_o_17),
        .IO(switches_tri_io[17]),
        .O(switches_tri_i_17),
        .T(switches_tri_t_17));
  IOBUF switches_tri_iobuf_18
       (.I(switches_tri_o_18),
        .IO(switches_tri_io[18]),
        .O(switches_tri_i_18),
        .T(switches_tri_t_18));
  IOBUF switches_tri_iobuf_19
       (.I(switches_tri_o_19),
        .IO(switches_tri_io[19]),
        .O(switches_tri_i_19),
        .T(switches_tri_t_19));
  IOBUF switches_tri_iobuf_2
       (.I(switches_tri_o_2),
        .IO(switches_tri_io[2]),
        .O(switches_tri_i_2),
        .T(switches_tri_t_2));
  IOBUF switches_tri_iobuf_20
       (.I(switches_tri_o_20),
        .IO(switches_tri_io[20]),
        .O(switches_tri_i_20),
        .T(switches_tri_t_20));
  IOBUF switches_tri_iobuf_21
       (.I(switches_tri_o_21),
        .IO(switches_tri_io[21]),
        .O(switches_tri_i_21),
        .T(switches_tri_t_21));
  IOBUF switches_tri_iobuf_22
       (.I(switches_tri_o_22),
        .IO(switches_tri_io[22]),
        .O(switches_tri_i_22),
        .T(switches_tri_t_22));
  IOBUF switches_tri_iobuf_23
       (.I(switches_tri_o_23),
        .IO(switches_tri_io[23]),
        .O(switches_tri_i_23),
        .T(switches_tri_t_23));
  IOBUF switches_tri_iobuf_24
       (.I(switches_tri_o_24),
        .IO(switches_tri_io[24]),
        .O(switches_tri_i_24),
        .T(switches_tri_t_24));
  IOBUF switches_tri_iobuf_25
       (.I(switches_tri_o_25),
        .IO(switches_tri_io[25]),
        .O(switches_tri_i_25),
        .T(switches_tri_t_25));
  IOBUF switches_tri_iobuf_26
       (.I(switches_tri_o_26),
        .IO(switches_tri_io[26]),
        .O(switches_tri_i_26),
        .T(switches_tri_t_26));
  IOBUF switches_tri_iobuf_27
       (.I(switches_tri_o_27),
        .IO(switches_tri_io[27]),
        .O(switches_tri_i_27),
        .T(switches_tri_t_27));
  IOBUF switches_tri_iobuf_28
       (.I(switches_tri_o_28),
        .IO(switches_tri_io[28]),
        .O(switches_tri_i_28),
        .T(switches_tri_t_28));
  IOBUF switches_tri_iobuf_29
       (.I(switches_tri_o_29),
        .IO(switches_tri_io[29]),
        .O(switches_tri_i_29),
        .T(switches_tri_t_29));
  IOBUF switches_tri_iobuf_3
       (.I(switches_tri_o_3),
        .IO(switches_tri_io[3]),
        .O(switches_tri_i_3),
        .T(switches_tri_t_3));
  IOBUF switches_tri_iobuf_30
       (.I(switches_tri_o_30),
        .IO(switches_tri_io[30]),
        .O(switches_tri_i_30),
        .T(switches_tri_t_30));
  IOBUF switches_tri_iobuf_31
       (.I(switches_tri_o_31),
        .IO(switches_tri_io[31]),
        .O(switches_tri_i_31),
        .T(switches_tri_t_31));
  IOBUF switches_tri_iobuf_4
       (.I(switches_tri_o_4),
        .IO(switches_tri_io[4]),
        .O(switches_tri_i_4),
        .T(switches_tri_t_4));
  IOBUF switches_tri_iobuf_5
       (.I(switches_tri_o_5),
        .IO(switches_tri_io[5]),
        .O(switches_tri_i_5),
        .T(switches_tri_t_5));
  IOBUF switches_tri_iobuf_6
       (.I(switches_tri_o_6),
        .IO(switches_tri_io[6]),
        .O(switches_tri_i_6),
        .T(switches_tri_t_6));
  IOBUF switches_tri_iobuf_7
       (.I(switches_tri_o_7),
        .IO(switches_tri_io[7]),
        .O(switches_tri_i_7),
        .T(switches_tri_t_7));
  IOBUF switches_tri_iobuf_8
       (.I(switches_tri_o_8),
        .IO(switches_tri_io[8]),
        .O(switches_tri_i_8),
        .T(switches_tri_t_8));
  IOBUF switches_tri_iobuf_9
       (.I(switches_tri_o_9),
        .IO(switches_tri_io[9]),
        .O(switches_tri_i_9),
        .T(switches_tri_t_9));
endmodule
