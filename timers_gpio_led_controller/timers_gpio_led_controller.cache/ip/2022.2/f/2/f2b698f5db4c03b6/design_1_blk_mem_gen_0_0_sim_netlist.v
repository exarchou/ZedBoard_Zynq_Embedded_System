// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Apr 19 18:13:26 2023
// Host        : DESKTOP-89JRGS5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_blk_mem_gen_0_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59856)
`pragma protect data_block
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
Ng87dQLS
`pragma protect end_protected
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
