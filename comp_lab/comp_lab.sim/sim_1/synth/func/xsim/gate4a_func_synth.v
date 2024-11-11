// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Nov 11 20:44:05 2024
// Host        : DESKTOP-9R0FEIM running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Learning_Vivado/comp_lab/comp_lab.sim/sim_1/synth/func/xsim/gate4a_func_synth.v
// Design      : gate4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a15tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module gate4
   (a,
    b,
    c,
    d,
    y_a,
    y_b);
  input a;
  input b;
  input c;
  input d;
  output y_a;
  output y_b;

  wire a;
  wire a_IBUF;
  wire b;
  wire b_IBUF;
  wire c;
  wire c_IBUF;
  wire d;
  wire d_IBUF;
  wire y_a;
  wire y_a_OBUF;
  wire y_b;
  wire y_b_OBUF;

  IBUF a_IBUF_inst
       (.I(a),
        .O(a_IBUF));
  IBUF b_IBUF_inst
       (.I(b),
        .O(b_IBUF));
  IBUF c_IBUF_inst
       (.I(c),
        .O(c_IBUF));
  IBUF d_IBUF_inst
       (.I(d),
        .O(d_IBUF));
  OBUF y_a_OBUF_inst
       (.I(y_a_OBUF),
        .O(y_a));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    y_a_OBUF_inst_i_1
       (.I0(b_IBUF),
        .I1(a_IBUF),
        .I2(d_IBUF),
        .I3(c_IBUF),
        .O(y_a_OBUF));
  OBUF y_b_OBUF_inst
       (.I(y_b_OBUF),
        .O(y_b));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA800)) 
    y_b_OBUF_inst_i_1
       (.I0(a_IBUF),
        .I1(b_IBUF),
        .I2(c_IBUF),
        .I3(d_IBUF),
        .O(y_b_OBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
