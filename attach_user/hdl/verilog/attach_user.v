// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="attach_user_attach_user,hls_ip_2021_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu28dr-ffvg1517-2-e,HLS_INPUT_CLOCK=1.818000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=1.174000,HLS_SYN_LAT=0,HLS_SYN_TPT=1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=10,HLS_SYN_LUT=45,HLS_VERSION=2021_1}" *)

module attach_user (
// synthesis translate_off
    kernel_block,
// synthesis translate_on
        ap_clk,
        ap_rst_n,
        in_r_TDATA,
        in_r_TVALID,
        in_r_TREADY,
        in_r_TKEEP,
        in_r_TSTRB,
        in_r_TLAST,
        out_r_TDATA,
        out_r_TVALID,
        out_r_TREADY,
        out_r_TKEEP,
        out_r_TSTRB,
        out_r_TUSER,
        out_r_TLAST
);

parameter    ap_ST_fsm_state1 = 1'd1;

// synthesis translate_off
output kernel_block;
// synthesis translate_on
input   ap_clk;
input   ap_rst_n;
input  [63:0] in_r_TDATA;
input   in_r_TVALID;
output   in_r_TREADY;
input  [7:0] in_r_TKEEP;
input  [7:0] in_r_TSTRB;
input  [0:0] in_r_TLAST;
output  [63:0] out_r_TDATA;
output   out_r_TVALID;
input   out_r_TREADY;
output  [7:0] out_r_TKEEP;
output  [7:0] out_r_TSTRB;
output  [15:0] out_r_TUSER;
output  [0:0] out_r_TLAST;

reg in_r_TREADY;
reg out_r_TVALID;

 reg    ap_rst_n_inv;
reg   [8:0] x_V;
reg    in_r_TDATA_blk_n;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    out_r_TDATA_blk_n;
wire   [8:0] select_ln19_fu_110_p3;
reg    ap_block_state1;
wire   [8:0] add_ln223_fu_104_p2;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 x_V = 9'd0;
#0 ap_CS_fsm = 1'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((~((in_r_TVALID == 1'b0) | (out_r_TREADY == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        x_V <= select_ln19_fu_110_p3;
    end
end

always @ (*) begin
    if (((in_r_TVALID == 1'b0) | (out_r_TREADY == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        in_r_TDATA_blk_n = in_r_TVALID;
    end else begin
        in_r_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((in_r_TVALID == 1'b0) | (out_r_TREADY == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        in_r_TREADY = 1'b1;
    end else begin
        in_r_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        out_r_TDATA_blk_n = out_r_TREADY;
    end else begin
        out_r_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((in_r_TVALID == 1'b0) | (out_r_TREADY == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        out_r_TVALID = 1'b1;
    end else begin
        out_r_TVALID = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln223_fu_104_p2 = (x_V + 9'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1 = ((in_r_TVALID == 1'b0) | (out_r_TREADY == 1'b0));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign out_r_TDATA = in_r_TDATA;

assign out_r_TKEEP = 8'd255;

assign out_r_TLAST = in_r_TLAST;

assign out_r_TSTRB = 8'd0;

assign out_r_TUSER = x_V;

assign select_ln19_fu_110_p3 = ((in_r_TLAST[0:0] == 1'b1) ? 9'd0 : add_ln223_fu_104_p2);


// synthesis translate_off
`include "attach_user_hls_deadlock_kernel_monitor_top.vh"
// synthesis translate_on

endmodule //attach_user

