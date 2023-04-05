/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP5
// Date      : Wed Apr  5 15:19:57 2023
/////////////////////////////////////////////////////////////


module statelogic ( clk, reset, op, state );
  input [5:0] op;
  output [3:0] state;
  input clk, reset;
  wire   N26, N27, N28, N29, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47;
  tri   clk;

  DFFQ_X4N_A9PP84TR_C14 \state_reg[1]  ( .D(N27), .CK(clk), .Q(state[1]) );
  DFFQN_X2N_A9PP84TR_C14 \state_reg[0]  ( .D(N26), .CK(clk), .QN(n3) );
  DFFQ_X4N_A9PP84TR_C14 \state_reg[3]  ( .D(N29), .CK(clk), .Q(state[3]) );
  DFFQ_X4N_A9PP84TR_C14 \state_reg[2]  ( .D(N28), .CK(clk), .Q(state[2]) );
  BUF_X2N_A9PP84TR_C14 U3 ( .A(state[2]), .Y(n5) );
  INV_X1P5R_A9PP84TR_C14 U4 ( .A(n1), .Y(n10) );
  BUF_X2N_A9PP84TR_C14 U5 ( .A(state[3]), .Y(n1) );
  NOR3XXB_X0P7N_A9PP84TR_C14 U6 ( .CN(n2), .A(reset), .B(state[0]), .Y(n17) );
  INVP_X0P7F_A9PP84TR_C14 U7 ( .A(n6), .Y(n2) );
  INV_X4N_A9PP84TR_C14 U8 ( .A(n3), .Y(state[0]) );
  NAND2XB_X2N_A9PP84TR_C14 U9 ( .BN(state[1]), .A(n5), .Y(n9) );
  OAI211_X0P5N_A9PP84TR_C14 U10 ( .A0(n28), .A1(n27), .B0(n32), .C0(n45), .Y(
        N29) );
  NAND4B_X0P5N_A9PP84TR_C14 U11 ( .AN(n12), .B(n4), .C(op[2]), .D(n35), .Y(n45) );
  NOR2_X0P7N_A9PP84TR_C14 U12 ( .A(n34), .B(n20), .Y(n22) );
  NAND2_X0P5R_A9PP84TR_C14 U13 ( .A(op[3]), .B(n5), .Y(n20) );
  OAI211_X0P5N_A9PP84TR_C14 U14 ( .A0(n19), .A1(n21), .B0(n45), .C0(n29), .Y(
        N27) );
  NAND2_X0P5R_A9PP84TR_C14 U15 ( .A(n36), .B(n35), .Y(n46) );
  OAI211_X0P7N_A9PP84TR_C14 U16 ( .A0(reset), .A1(n47), .B0(n46), .C0(n45), 
        .Y(N26) );
  AOI22_X0P5N_A9PP84TR_C14 U17 ( .A0(n44), .A1(n43), .B0(n42), .B1(n41), .Y(
        n47) );
  NOR2_X0P5F_A9PP84TR_C14 U18 ( .A(op[5]), .B(op[3]), .Y(n4) );
  NAND2_X0P5R_A9PP84TR_C14 U19 ( .A(state[0]), .B(n6), .Y(n27) );
  OR2_X1N_A9PP84TR_C14 U20 ( .A(n5), .B(reset), .Y(n21) );
  NAND4BB_X0P7N_A9PP84TR_C14 U21 ( .AN(n39), .BN(n38), .C(n37), .D(n46), .Y(
        N28) );
  NAND2_X0P5R_A9PP84TR_C14 U22 ( .A(state[0]), .B(n2), .Y(n30) );
  INVP_X0P5N_A9PP84TR_C14 U23 ( .A(state[1]), .Y(n6) );
  AOI31_X0P5N_A9PP84TR_C14 U24 ( .A0(n2), .A1(n10), .A2(n43), .B0(n15), .Y(n19) );
  NOR2XB_X0P7N_A9PP84TR_C14 U25 ( .BN(n5), .A(n1), .Y(n16) );
  NOR2_X0P5F_A9PP84TR_C14 U26 ( .A(n1), .B(n40), .Y(n44) );
  NOR3XXB_X0P5N_A9PP84TR_C14 U27 ( .CN(n31), .A(n30), .B(n1), .Y(n38) );
  MXIT2_X0P5N_A9PP84TR_C14 U28 ( .A(n22), .B(n31), .S0(n1), .Y(n28) );
  INV_X1P5N_A9PP84TR_C14 U29 ( .A(state[0]), .Y(n43) );
  INV_X1P5N_A9PP84TR_C14 U30 ( .A(n27), .Y(n15) );
  NOR2_X1N_A9PP84TR_C14 U31 ( .A(op[4]), .B(op[0]), .Y(n8) );
  NOR2_X1N_A9PP84TR_C14 U32 ( .A(reset), .B(op[1]), .Y(n7) );
  NAND2_X1N_A9PP84TR_C14 U33 ( .A(n8), .B(n7), .Y(n12) );
  INV_X1P5N_A9PP84TR_C14 U34 ( .A(n9), .Y(n40) );
  NAND3_X2N_A9PP84TR_C14 U35 ( .A(n40), .B(n10), .C(n43), .Y(n11) );
  INV_X1P5N_A9PP84TR_C14 U36 ( .A(n11), .Y(n35) );
  INV_X1P5N_A9PP84TR_C14 U37 ( .A(op[3]), .Y(n14) );
  INV_X1P5N_A9PP84TR_C14 U38 ( .A(op[5]), .Y(n25) );
  INV_X1P5N_A9PP84TR_C14 U39 ( .A(n12), .Y(n13) );
  NAND3BB_X2N_A9PP84TR_C14 U40 ( .AN(n25), .BN(op[2]), .C(n13), .Y(n34) );
  NOR3BB_X2N_A9PP84TR_C14 U41 ( .AN(n15), .BN(n14), .C(n34), .Y(n18) );
  OAI21_X2N_A9PP84TR_C14 U42 ( .A0(n18), .A1(n17), .B0(n16), .Y(n29) );
  INV_X1P5N_A9PP84TR_C14 U43 ( .A(n21), .Y(n31) );
  NOR2_X1N_A9PP84TR_C14 U44 ( .A(op[3]), .B(op[4]), .Y(n23) );
  NAND4BB_X2N_A9PP84TR_C14 U45 ( .AN(op[0]), .BN(op[2]), .C(n35), .D(n23), .Y(
        n24) );
  INV_X1P5N_A9PP84TR_C14 U46 ( .A(n24), .Y(n42) );
  INV_X1P5N_A9PP84TR_C14 U47 ( .A(reset), .Y(n26) );
  NAND3_X2N_A9PP84TR_C14 U48 ( .A(n42), .B(n26), .C(n25), .Y(n32) );
  INV_X1P5N_A9PP84TR_C14 U49 ( .A(n29), .Y(n39) );
  INV_X1P5N_A9PP84TR_C14 U50 ( .A(n32), .Y(n33) );
  NAND2_X1N_A9PP84TR_C14 U51 ( .A(op[1]), .B(n33), .Y(n37) );
  INV_X1P5N_A9PP84TR_C14 U52 ( .A(n34), .Y(n36) );
  INV_X1P5N_A9PP84TR_C14 U53 ( .A(op[1]), .Y(n41) );
endmodule


module outputlogic ( state, memread, memwrite, alusrca, memtoreg, iord, 
        regwrite, regdst, pcsrc, alusrcb, irwrite, pcwrite, branch, aluop );
  input [3:0] state;
  output [1:0] pcsrc;
  output [1:0] alusrcb;
  output [3:0] irwrite;
  output [1:0] aluop;
  output memread, memwrite, alusrca, memtoreg, iord, regwrite, regdst, pcwrite,
         branch;
  wire   N15, n1, n2, n3, n4, n5, \pcsrc[0] , n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27;
  tri   regwrite;
  assign irwrite[0] = N15;
  assign aluop[0] = \pcsrc[0] ;
  assign branch = \pcsrc[0] ;
  assign pcsrc[0] = \pcsrc[0] ;

  INVP_X0P7R_A9PP84TR_C14 U3 ( .A(state[2]), .Y(n8) );
  BUFH_X3N_A9PP84TR_C14 U4 ( .A(state[3]), .Y(n7) );
  INV_X2R_A9PP84TR_C14 U5 ( .A(n24), .Y(alusrcb[1]) );
  INVP_X0P5N_A9PP84TR_C14 U6 ( .A(n23), .Y(n21) );
  INVP_X0P7F_A9PP84TR_C14 U7 ( .A(n10), .Y(n1) );
  NAND2B_X2N_A9PP84TR_C14 U8 ( .AN(n7), .B(n2), .Y(n15) );
  INVP_X1R_A9PP84TR_C14 U9 ( .A(n8), .Y(n2) );
  NAND3_X0P5R_A9PP84TR_C14 U10 ( .A(n2), .B(n20), .C(n7), .Y(n13) );
  AOI21B_X2N_A9PP84TR_C14 U11 ( .A0(n24), .A1(n23), .B0N(state[0]), .Y(alusrca) );
  INV_X1P5F_A9PP84TR_C14 U12 ( .A(n3), .Y(n4) );
  NAND2_X1F_A9PP84TR_C14 U13 ( .A(state[3]), .B(n8), .Y(n23) );
  INV_X1P5R_A9PP84TR_C14 U14 ( .A(n9), .Y(n20) );
  NOR3BB_X1N_A9PP84TR_C14 U15 ( .AN(state[0]), .BN(n10), .C(n4), .Y(irwrite[1]) );
  NOR3BB_X1N_A9PP84TR_C14 U16 ( .AN(state[0]), .BN(n10), .C(n5), .Y(aluop[1])
         );
  INV_X1P5R_A9PP84TR_C14 U17 ( .A(n12), .Y(n16) );
  NAND2_X0P7R_A9PP84TR_C14 U18 ( .A(n16), .B(n19), .Y(n22) );
  INV_X1P5R_A9PP84TR_C14 U19 ( .A(n13), .Y(pcsrc[1]) );
  INVP_X0P5N_A9PP84TR_C14 U20 ( .A(n27), .Y(n3) );
  NAND2_X0P7R_A9PP84TR_C14 U21 ( .A(n21), .B(n18), .Y(n17) );
  INVP_X0P7F_A9PP84TR_C14 U22 ( .A(n21), .Y(n5) );
  OAI31_X3N_A9PP84TR_C14 U23 ( .A0(n7), .A1(state[1]), .A2(state[0]), .B0(n27), 
        .Y(alusrcb[0]) );
  NAND2_X1R_A9PP84TR_C14 U24 ( .A(n26), .B(n25), .Y(iord) );
  AND2_X2N_A9PP84TR_C14 U25 ( .A(n16), .B(n21), .Y(\pcsrc[0] ) );
  NAND2_X0P5R_A9PP84TR_C14 U26 ( .A(n21), .B(n20), .Y(n25) );
  NAND2_X0P5R_A9PP84TR_C14 U27 ( .A(n11), .B(n1), .Y(n14) );
  NAND2_X0P5R_A9PP84TR_C14 U28 ( .A(state[0]), .B(state[1]), .Y(n12) );
  INVP_X0P5N_A9PP84TR_C14 U29 ( .A(state[1]), .Y(n10) );
  NAND2_X0P5R_A9PP84TR_C14 U30 ( .A(n4), .B(n26), .Y(memread) );
  NOR2_X0P5F_A9PP84TR_C14 U31 ( .A(n4), .B(n12), .Y(irwrite[3]) );
  NOR2_X0P5F_A9PP84TR_C14 U32 ( .A(n4), .B(n9), .Y(N15) );
  NOR2_X0P5F_A9PP84TR_C14 U33 ( .A(n4), .B(n14), .Y(irwrite[2]) );
  NAND2_X0P5R_A9PP84TR_C14 U34 ( .A(n4), .B(n13), .Y(pcwrite) );
  OR2_X1N_A9PP84TR_C14 U35 ( .A(state[0]), .B(n1), .Y(n9) );
  OR2_X2N_A9PP84TR_C14 U36 ( .A(state[3]), .B(state[2]), .Y(n27) );
  INV_X1P5N_A9PP84TR_C14 U37 ( .A(state[0]), .Y(n11) );
  NAND3BB_X2N_A9PP84TR_C14 U38 ( .AN(state[1]), .BN(state[3]), .C(state[2]), 
        .Y(n24) );
  INV_X1P5N_A9PP84TR_C14 U39 ( .A(n14), .Y(n18) );
  INV_X1P5N_A9PP84TR_C14 U40 ( .A(n17), .Y(regdst) );
  INV_X1P5N_A9PP84TR_C14 U41 ( .A(n15), .Y(n19) );
  NAND2_X1N_A9PP84TR_C14 U42 ( .A(n22), .B(n17), .Y(regwrite) );
  NAND2_X1N_A9PP84TR_C14 U43 ( .A(n19), .B(n18), .Y(n26) );
  INV_X1P5N_A9PP84TR_C14 U44 ( .A(n22), .Y(memtoreg) );
  INV_X1P5N_A9PP84TR_C14 U45 ( .A(n25), .Y(memwrite) );
endmodule


module aludec ( aluop, funct, alucontrol );
  input [1:0] aluop;
  input [5:0] funct;
  output [4:0] alucontrol;
  wire   \*Logic0* , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40;
  assign alucontrol[4] = \*Logic0* ;

  AND3_X1N_A9PP84TR_C14 U3 ( .A(n35), .B(funct[0]), .C(n34), .Y(n1) );
  AOI21B_X0P5N_A9PP84TR_C14 U4 ( .A0(funct[0]), .A1(n31), .B0N(funct[3]), .Y(
        n7) );
  AND2_X1N_A9PP84TR_C14 U5 ( .A(n18), .B(n4), .Y(n2) );
  AND2_X2N_A9PP84TR_C14 U6 ( .A(n18), .B(n17), .Y(n3) );
  MXIT2_X0P5N_A9PP84TR_C14 U7 ( .A(n33), .B(n32), .S0(aluop[1]), .Y(
        alucontrol[2]) );
  NAND4XXXB_X1N_A9PP84TR_C14 U8 ( .DN(n2), .A(n12), .B(n11), .C(n10), .Y(n29)
         );
  MXIT2_X0P5N_A9PP84TR_C14 U9 ( .A(n9), .B(n8), .S0(funct[0]), .Y(n10) );
  NOR2_X0P5F_A9PP84TR_C14 U10 ( .A(n1), .B(n25), .Y(n12) );
  NOR3BB_X0P5N_A9PP84TR_C14 U11 ( .AN(funct[1]), .BN(n34), .C(n28), .Y(n30) );
  AOI31_X1N_A9PP84TR_C14 U12 ( .A0(n40), .A1(n39), .A2(n38), .B0(n37), .Y(
        alucontrol[3]) );
  AOI31_X0P5N_A9PP84TR_C14 U13 ( .A0(n16), .A1(n20), .A2(n15), .B0(n14), .Y(
        alucontrol[0]) );
  NAND3_X0P5R_A9PP84TR_C14 U14 ( .A(n19), .B(n17), .C(n13), .Y(n15) );
  AO21A1AI2_X2N_A9PP84TR_C14 U15 ( .A0(n27), .A1(n26), .B0(n25), .C0(aluop[1]), 
        .Y(alucontrol[1]) );
  NOR2_X1F_A9PP84TR_C14 U16 ( .A(n2), .B(n3), .Y(n27) );
  AOI211_X0P5N_A9PP84TR_C14 U17 ( .A0(n24), .A1(n23), .B0(n1), .C0(n22), .Y(
        n26) );
  AOI211_X0P5N_A9PP84TR_C14 U18 ( .A0(funct[3]), .A1(n31), .B0(n30), .C0(n29), 
        .Y(n32) );
  MXIT2_X0P5N_A9PP84TR_C14 U19 ( .A(n7), .B(n6), .S0(funct[1]), .Y(n11) );
  NAND2_X0P5R_A9PP84TR_C14 U20 ( .A(funct[4]), .B(n17), .Y(n28) );
  OA21A1OI2_X0P5N_A9PP84TR_C14 U21 ( .A0(funct[4]), .A1(funct[3]), .B0(
        funct[0]), .C0(n18), .Y(n6) );
  NAND3BB_X1N_A9PP84TR_C14 U22 ( .AN(funct[2]), .BN(funct[0]), .C(n31), .Y(n5)
         );
  AND2_X1N_A9PP84TR_C14 U23 ( .A(funct[1]), .B(funct[3]), .Y(n4) );
  OAI22_X0P5N_A9PP84TR_C14 U24 ( .A0(n21), .A1(n20), .B0(funct[4]), .B1(n38), 
        .Y(n22) );
  AND2_X1N_A9PP84TR_C14 U25 ( .A(funct[4]), .B(funct[2]), .Y(n9) );
  AO21A1AI2_X0P5N_A9PP84TR_C14 U26 ( .A0(n36), .A1(funct[0]), .B0(n3), .C0(
        funct[1]), .Y(n39) );
  NAND2_X0P5R_A9PP84TR_C14 U27 ( .A(funct[2]), .B(funct[0]), .Y(n21) );
  NOR2_X0P5F_A9PP84TR_C14 U28 ( .A(funct[0]), .B(funct[3]), .Y(n24) );
  NOR2_X0P5F_A9PP84TR_C14 U29 ( .A(funct[2]), .B(funct[1]), .Y(n23) );
  TIELO_X1N_A9PP84TR_C14 U30 ( .Y(\*Logic0* ) );
  INV_X1P5N_A9PP84TR_C14 U31 ( .A(funct[4]), .Y(n31) );
  INV_X1P5N_A9PP84TR_C14 U32 ( .A(n5), .Y(n18) );
  INV_X1P5N_A9PP84TR_C14 U33 ( .A(funct[3]), .Y(n17) );
  INV_X1P5N_A9PP84TR_C14 U34 ( .A(n28), .Y(n36) );
  INV_X1P5N_A9PP84TR_C14 U35 ( .A(funct[1]), .Y(n13) );
  NAND2_X2N_A9PP84TR_C14 U36 ( .A(n36), .B(n13), .Y(n20) );
  INV_X1P5N_A9PP84TR_C14 U37 ( .A(n20), .Y(n35) );
  INV_X1P5N_A9PP84TR_C14 U38 ( .A(funct[2]), .Y(n34) );
  INV_X1P5N_A9PP84TR_C14 U39 ( .A(funct[5]), .Y(n25) );
  NOR2_X1N_A9PP84TR_C14 U40 ( .A(funct[2]), .B(n36), .Y(n8) );
  INV_X1P5N_A9PP84TR_C14 U41 ( .A(n29), .Y(n16) );
  INV_X1P5N_A9PP84TR_C14 U42 ( .A(n21), .Y(n19) );
  INV_X1P5N_A9PP84TR_C14 U43 ( .A(aluop[1]), .Y(n14) );
  NAND2_X1N_A9PP84TR_C14 U44 ( .A(n4), .B(n19), .Y(n38) );
  INV_X1P5N_A9PP84TR_C14 U45 ( .A(aluop[0]), .Y(n33) );
  NAND2_X1N_A9PP84TR_C14 U46 ( .A(n35), .B(n34), .Y(n40) );
  NAND2_X1N_A9PP84TR_C14 U47 ( .A(aluop[1]), .B(funct[5]), .Y(n37) );
endmodule


module controller ( clk, reset, op, funct, zero, memread, memwrite, alusrca, 
        memtoreg, iord, pcen, regwrite, regdst, pcsrc, alusrcb, alucontrol, 
        irwrite );
  input [5:0] op;
  input [5:0] funct;
  output [1:0] pcsrc;
  output [1:0] alusrcb;
  output [4:0] alucontrol;
  output [3:0] irwrite;
  input clk, reset, zero;
  output memread, memwrite, alusrca, memtoreg, iord, pcen, regwrite, regdst;
  wire   pcwrite, branch, n2;
  wire   [3:0] state;
  wire   [1:0] aluop;
  tri   clk;
  tri   regwrite;
  wire   SYNOPSYS_UNCONNECTED__0;

  statelogic statelog ( .clk(clk), .reset(reset), .op(op), .state(state) );
  outputlogic outputlog ( .state(state), .memread(memread), .memwrite(memwrite), .alusrca(alusrca), .memtoreg(memtoreg), .iord(iord), .regwrite(regwrite), 
        .regdst(regdst), .pcsrc(pcsrc), .alusrcb(alusrcb), .irwrite(irwrite), 
        .pcwrite(pcwrite), .branch(branch), .aluop(aluop) );
  aludec ac ( .aluop(aluop), .funct(funct), .alucontrol({
        SYNOPSYS_UNCONNECTED__0, alucontrol[3:0]}) );
  TIELO_X1N_A9PP84TR_C14 U1 ( .Y(alucontrol[4]) );
  INV_X1P5N_A9PP84TR_C14 U2 ( .A(pcwrite), .Y(n2) );
  AO1B2_X2N_A9PP84TR_C14 U3 ( .B0(zero), .B1(branch), .A0N(n2), .Y(pcen) );
endmodule


module mux2_WIDTH3 ( d0, d1, s, y );
  input [2:0] d0;
  input [2:0] d1;
  output [2:0] y;
  input s;
  wire   n1;
  tri   [2:0] y;

  AO22_X1N_A9PP84TR_C14 U1 ( .A0(s), .A1(d1[2]), .B0(d0[2]), .B1(n1), .Y(y[2])
         );
  AO22_X1N_A9PP84TR_C14 U2 ( .A0(d1[1]), .A1(s), .B0(d0[1]), .B1(n1), .Y(y[1])
         );
  AO22_X1N_A9PP84TR_C14 U3 ( .A0(d1[0]), .A1(s), .B0(d0[0]), .B1(n1), .Y(y[0])
         );
  INV_X2N_A9PP84TR_C14 U4 ( .A(s), .Y(n1) );
endmodule


module flopen_WIDTH8_0 ( clk, en, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk, en;
  wire   n2, n3, n4, n5, n6, n7, n8, n9;
  tri   clk;

  DFFQ_X3N_A9PP84TR_C14 \q_reg[5]  ( .D(n7), .CK(clk), .Q(q[5]) );
  DFFQ_X3N_A9PP84TR_C14 \q_reg[4]  ( .D(n6), .CK(clk), .Q(q[4]) );
  DFFQ_X3N_A9PP84TR_C14 \q_reg[3]  ( .D(n5), .CK(clk), .Q(q[3]) );
  DFFQ_X3N_A9PP84TR_C14 \q_reg[2]  ( .D(n4), .CK(clk), .Q(q[2]) );
  DFFQ_X3N_A9PP84TR_C14 \q_reg[1]  ( .D(n3), .CK(clk), .Q(q[1]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[7]  ( .D(n9), .CK(clk), .Q(q[7]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[6]  ( .D(n8), .CK(clk), .Q(q[6]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[0]  ( .D(n2), .CK(clk), .Q(q[0]) );
  MXT2_X2N_A9PP84TR_C14 U2 ( .A(q[0]), .B(d[0]), .S0(en), .Y(n2) );
  MXT2_X2N_A9PP84TR_C14 U3 ( .A(q[1]), .B(d[1]), .S0(en), .Y(n3) );
  MXT2_X2N_A9PP84TR_C14 U4 ( .A(q[2]), .B(d[2]), .S0(en), .Y(n4) );
  MXT2_X2N_A9PP84TR_C14 U5 ( .A(q[3]), .B(d[3]), .S0(en), .Y(n5) );
  MXT2_X2N_A9PP84TR_C14 U6 ( .A(q[4]), .B(d[4]), .S0(en), .Y(n6) );
  MXT2_X2N_A9PP84TR_C14 U7 ( .A(q[5]), .B(d[5]), .S0(en), .Y(n7) );
  MXT2_X2N_A9PP84TR_C14 U8 ( .A(q[6]), .B(d[6]), .S0(en), .Y(n8) );
  MXT2_X2N_A9PP84TR_C14 U9 ( .A(q[7]), .B(d[7]), .S0(en), .Y(n9) );
endmodule


module flopen_WIDTH8_3 ( clk, en, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk, en;
  wire   n1, n9, n10, n11, n12, n13, n14, n15;
  tri   clk;

  DFFQ_X1N_A9PP84TR_C14 \q_reg[7]  ( .D(n1), .CK(clk), .Q(q[7]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[6]  ( .D(n9), .CK(clk), .Q(q[6]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[2]  ( .D(n13), .CK(clk), .Q(q[2]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[1]  ( .D(n14), .CK(clk), .Q(q[1]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[0]  ( .D(n15), .CK(clk), .Q(q[0]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[4]  ( .D(n11), .CK(clk), .Q(q[4]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[3]  ( .D(n12), .CK(clk), .Q(q[3]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[5]  ( .D(n10), .CK(clk), .Q(q[5]) );
  MXT2_X0P5N_A9PP84TR_C14 U2 ( .A(q[0]), .B(d[0]), .S0(en), .Y(n15) );
  MXT2_X0P5N_A9PP84TR_C14 U3 ( .A(q[1]), .B(d[1]), .S0(en), .Y(n14) );
  MXT2_X0P5N_A9PP84TR_C14 U4 ( .A(q[2]), .B(d[2]), .S0(en), .Y(n13) );
  MXT2_X0P5N_A9PP84TR_C14 U5 ( .A(q[3]), .B(d[3]), .S0(en), .Y(n12) );
  MXT2_X0P5N_A9PP84TR_C14 U6 ( .A(q[4]), .B(d[4]), .S0(en), .Y(n11) );
  MXT2_X0P5N_A9PP84TR_C14 U7 ( .A(q[5]), .B(d[5]), .S0(en), .Y(n10) );
  MXT2_X0P5N_A9PP84TR_C14 U8 ( .A(q[6]), .B(d[6]), .S0(en), .Y(n9) );
  MXT2_X0P5N_A9PP84TR_C14 U9 ( .A(q[7]), .B(d[7]), .S0(en), .Y(n1) );
endmodule


module flopen_WIDTH8_2 ( clk, en, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk, en;
  wire   n1, n9, n10, n11, n12, n13, n14, n15;
  tri   clk;

  DFFQ_X1N_A9PP84TR_C14 \q_reg[7]  ( .D(n1), .CK(clk), .Q(q[7]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[6]  ( .D(n9), .CK(clk), .Q(q[6]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[5]  ( .D(n10), .CK(clk), .Q(q[5]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[4]  ( .D(n11), .CK(clk), .Q(q[4]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[3]  ( .D(n12), .CK(clk), .Q(q[3]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[2]  ( .D(n13), .CK(clk), .Q(q[2]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[1]  ( .D(n14), .CK(clk), .Q(q[1]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[0]  ( .D(n15), .CK(clk), .Q(q[0]) );
  MXT2_X0P5N_A9PP84TR_C14 U2 ( .A(q[0]), .B(d[0]), .S0(en), .Y(n15) );
  MXT2_X0P5N_A9PP84TR_C14 U3 ( .A(q[1]), .B(d[1]), .S0(en), .Y(n14) );
  MXT2_X0P5N_A9PP84TR_C14 U4 ( .A(q[2]), .B(d[2]), .S0(en), .Y(n13) );
  MXT2_X0P5N_A9PP84TR_C14 U5 ( .A(q[3]), .B(d[3]), .S0(en), .Y(n12) );
  MXT2_X0P5N_A9PP84TR_C14 U6 ( .A(q[4]), .B(d[4]), .S0(en), .Y(n11) );
  MXT2_X0P5N_A9PP84TR_C14 U7 ( .A(q[5]), .B(d[5]), .S0(en), .Y(n10) );
  MXT2_X0P5N_A9PP84TR_C14 U8 ( .A(q[6]), .B(d[6]), .S0(en), .Y(n9) );
  MXT2_X0P5N_A9PP84TR_C14 U9 ( .A(q[7]), .B(d[7]), .S0(en), .Y(n1) );
endmodule


module flopen_WIDTH8_1 ( clk, en, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk, en;
  wire   n1, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28;
  tri   clk;

  DFFQ_X1N_A9PP84TR_C14 \q_reg[1]  ( .D(n27), .CK(clk), .Q(q[1]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[0]  ( .D(n28), .CK(clk), .Q(q[0]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[7]  ( .D(n21), .CK(clk), .Q(q[7]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[6]  ( .D(n22), .CK(clk), .Q(q[6]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[5]  ( .D(n23), .CK(clk), .Q(q[5]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[4]  ( .D(n24), .CK(clk), .Q(q[4]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[3]  ( .D(n25), .CK(clk), .Q(q[3]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[2]  ( .D(n26), .CK(clk), .Q(q[2]) );
  MXIT2_X0P5N_A9PP84TR_C14 U2 ( .A(n20), .B(n19), .S0(en), .Y(n21) );
  MXIT2_X0P5N_A9PP84TR_C14 U3 ( .A(n18), .B(n17), .S0(en), .Y(n22) );
  MXIT2_X0P5N_A9PP84TR_C14 U4 ( .A(n16), .B(n15), .S0(en), .Y(n23) );
  MXIT2_X0P5N_A9PP84TR_C14 U5 ( .A(n14), .B(n13), .S0(en), .Y(n24) );
  MXIT2_X0P5N_A9PP84TR_C14 U6 ( .A(n12), .B(n11), .S0(en), .Y(n25) );
  MXIT2_X0P5N_A9PP84TR_C14 U7 ( .A(n10), .B(n1), .S0(en), .Y(n26) );
  MXT2_X0P5N_A9PP84TR_C14 U8 ( .A(q[0]), .B(d[0]), .S0(en), .Y(n28) );
  MXT2_X0P5N_A9PP84TR_C14 U9 ( .A(q[1]), .B(d[1]), .S0(en), .Y(n27) );
  INV_X1P5N_A9PP84TR_C14 U10 ( .A(q[2]), .Y(n10) );
  INV_X1P5N_A9PP84TR_C14 U11 ( .A(d[2]), .Y(n1) );
  INV_X1P5N_A9PP84TR_C14 U12 ( .A(q[3]), .Y(n12) );
  INV_X1P5N_A9PP84TR_C14 U13 ( .A(d[3]), .Y(n11) );
  INV_X1P5N_A9PP84TR_C14 U14 ( .A(q[4]), .Y(n14) );
  INV_X1P5N_A9PP84TR_C14 U15 ( .A(d[4]), .Y(n13) );
  INV_X1P5N_A9PP84TR_C14 U16 ( .A(q[5]), .Y(n16) );
  INV_X1P5N_A9PP84TR_C14 U17 ( .A(d[5]), .Y(n15) );
  INV_X1P5N_A9PP84TR_C14 U18 ( .A(q[6]), .Y(n18) );
  INV_X1P5N_A9PP84TR_C14 U19 ( .A(d[6]), .Y(n17) );
  INV_X1P5N_A9PP84TR_C14 U20 ( .A(q[7]), .Y(n20) );
  INV_X1P5N_A9PP84TR_C14 U21 ( .A(d[7]), .Y(n19) );
endmodule


module flopenr_WIDTH8 ( clk, reset, en, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk, reset, en;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n1, n11, n13, n15, n17, n19, n21,
         n23, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36;
  tri   clk;

  DFFQ_X3N_A9PP84TR_C14 \q_reg[2]  ( .D(n5), .CK(clk), .Q(q[2]) );
  DFFQ_X3N_A9PP84TR_C14 \q_reg[4]  ( .D(n7), .CK(clk), .Q(q[4]) );
  DFFQ_X3N_A9PP84TR_C14 \q_reg[5]  ( .D(n8), .CK(clk), .Q(q[5]) );
  DFFQ_X3N_A9PP84TR_C14 \q_reg[6]  ( .D(n9), .CK(clk), .Q(q[6]) );
  DFFQ_X3N_A9PP84TR_C14 \q_reg[3]  ( .D(n6), .CK(clk), .Q(q[3]) );
  DFFQ_X3N_A9PP84TR_C14 \q_reg[1]  ( .D(n4), .CK(clk), .Q(q[1]) );
  DFFQ_X3N_A9PP84TR_C14 \q_reg[0]  ( .D(n3), .CK(clk), .Q(q[0]) );
  DFFQ_X3N_A9PP84TR_C14 \q_reg[7]  ( .D(n10), .CK(clk), .Q(q[7]) );
  NAND2_X1R_A9PP84TR_C14 U3 ( .A(en), .B(n26), .Y(n35) );
  INVP_X0P5N_A9PP84TR_C14 U4 ( .A(q[1]), .Y(n15) );
  INVP_X0P5N_A9PP84TR_C14 U5 ( .A(q[7]), .Y(n11) );
  NOR2_X1P5F_A9PP84TR_C14 U6 ( .A(en), .B(reset), .Y(n1) );
  INV_X2N_A9PP84TR_C14 U7 ( .A(n1), .Y(n36) );
  OAI22_X0P5N_A9PP84TR_C14 U8 ( .A0(n36), .A1(n11), .B0(n35), .B1(n34), .Y(n10) );
  OAI22_X0P5N_A9PP84TR_C14 U9 ( .A0(n36), .A1(n23), .B0(n35), .B1(n31), .Y(n7)
         );
  OAI22_X0P5N_A9PP84TR_C14 U10 ( .A0(n36), .A1(n21), .B0(n35), .B1(n32), .Y(n8) );
  OAI22_X0P5N_A9PP84TR_C14 U11 ( .A0(n36), .A1(n19), .B0(n35), .B1(n33), .Y(n9) );
  OAI22_X0P5N_A9PP84TR_C14 U12 ( .A0(n36), .A1(n13), .B0(n35), .B1(n27), .Y(n3) );
  OAI22_X0P5N_A9PP84TR_C14 U13 ( .A0(n36), .A1(n17), .B0(n35), .B1(n30), .Y(n6) );
  OAI22_X0P5N_A9PP84TR_C14 U14 ( .A0(n36), .A1(n25), .B0(n35), .B1(n29), .Y(n5) );
  OAI22_X0P5N_A9PP84TR_C14 U15 ( .A0(n36), .A1(n15), .B0(n35), .B1(n28), .Y(n4) );
  INVP_X0P5N_A9PP84TR_C14 U16 ( .A(q[0]), .Y(n13) );
  INVP_X0P5N_A9PP84TR_C14 U17 ( .A(q[3]), .Y(n17) );
  INVP_X0P5N_A9PP84TR_C14 U18 ( .A(q[6]), .Y(n19) );
  INVP_X0P5N_A9PP84TR_C14 U19 ( .A(q[5]), .Y(n21) );
  INVP_X0P5N_A9PP84TR_C14 U20 ( .A(q[4]), .Y(n23) );
  INVP_X0P5N_A9PP84TR_C14 U21 ( .A(q[2]), .Y(n25) );
  INV_X1P5N_A9PP84TR_C14 U22 ( .A(reset), .Y(n26) );
  INV_X1P5N_A9PP84TR_C14 U23 ( .A(d[0]), .Y(n27) );
  INV_X1P5N_A9PP84TR_C14 U24 ( .A(d[1]), .Y(n28) );
  INV_X1P5N_A9PP84TR_C14 U25 ( .A(d[2]), .Y(n29) );
  INV_X1P5N_A9PP84TR_C14 U26 ( .A(d[3]), .Y(n30) );
  INV_X1P5N_A9PP84TR_C14 U27 ( .A(d[4]), .Y(n31) );
  INV_X1P5N_A9PP84TR_C14 U28 ( .A(d[5]), .Y(n32) );
  INV_X1P5N_A9PP84TR_C14 U29 ( .A(d[6]), .Y(n33) );
  INV_X1P5N_A9PP84TR_C14 U30 ( .A(d[7]), .Y(n34) );
endmodule


module flop_WIDTH8_0 ( clk, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk;

  tri   clk;

  DFFQ_X1N_A9PP84TR_C14 \q_reg[6]  ( .D(d[6]), .CK(clk), .Q(q[6]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[5]  ( .D(d[5]), .CK(clk), .Q(q[5]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[4]  ( .D(d[4]), .CK(clk), .Q(q[4]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[3]  ( .D(d[3]), .CK(clk), .Q(q[3]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[2]  ( .D(d[2]), .CK(clk), .Q(q[2]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[1]  ( .D(d[1]), .CK(clk), .Q(q[1]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[0]  ( .D(d[0]), .CK(clk), .Q(q[0]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[7]  ( .D(d[7]), .CK(clk), .Q(q[7]) );
endmodule


module flop_WIDTH8_3 ( clk, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk;

  tri   clk;
  tri   [7:0] d;

  DFFQ_X1N_A9PP84TR_C14 \q_reg[4]  ( .D(d[4]), .CK(clk), .Q(q[4]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[3]  ( .D(d[3]), .CK(clk), .Q(q[3]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[2]  ( .D(d[2]), .CK(clk), .Q(q[2]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[0]  ( .D(d[0]), .CK(clk), .Q(q[0]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[1]  ( .D(d[1]), .CK(clk), .Q(q[1]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[7]  ( .D(d[7]), .CK(clk), .Q(q[7]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[6]  ( .D(d[6]), .CK(clk), .Q(q[6]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[5]  ( .D(d[5]), .CK(clk), .Q(q[5]) );
endmodule


module flop_WIDTH8_2 ( clk, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk;

  tri   clk;
  tri   [7:0] d;

  DFFQ_X1N_A9PP84TR_C14 \q_reg[0]  ( .D(d[0]), .CK(clk), .Q(q[0]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[4]  ( .D(d[4]), .CK(clk), .Q(q[4]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[5]  ( .D(d[5]), .CK(clk), .Q(q[5]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[3]  ( .D(d[3]), .CK(clk), .Q(q[3]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[2]  ( .D(d[2]), .CK(clk), .Q(q[2]) );
  DFFQ_X2N_A9PP84TR_C14 \q_reg[7]  ( .D(d[7]), .CK(clk), .Q(q[7]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[1]  ( .D(d[1]), .CK(clk), .Q(q[1]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[6]  ( .D(d[6]), .CK(clk), .Q(q[6]) );
endmodule


module flop_WIDTH8_1 ( clk, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk;

  tri   clk;

  DFFQ_X1N_A9PP84TR_C14 \q_reg[7]  ( .D(d[7]), .CK(clk), .Q(q[7]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[1]  ( .D(d[1]), .CK(clk), .Q(q[1]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[0]  ( .D(d[0]), .CK(clk), .Q(q[0]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[4]  ( .D(d[4]), .CK(clk), .Q(q[4]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[3]  ( .D(d[3]), .CK(clk), .Q(q[3]) );
  DFFQ_X1N_A9PP84TR_C14 \q_reg[2]  ( .D(d[2]), .CK(clk), .Q(q[2]) );
  DFFQ_X3N_A9PP84TR_C14 \q_reg[6]  ( .D(d[6]), .CK(clk), .Q(q[6]) );
  DFFQ_X2N_A9PP84TR_C14 \q_reg[5]  ( .D(d[5]), .CK(clk), .Q(q[5]) );
endmodule


module mux2_WIDTH8_0 ( d0, d1, s, y );
  input [7:0] d0;
  input [7:0] d1;
  output [7:0] y;
  input s;
  wire   n1;

  AO22_X1N_A9PP84TR_C14 U2 ( .A0(d1[6]), .A1(s), .B0(d0[6]), .B1(n1), .Y(y[6])
         );
  AO22_X1N_A9PP84TR_C14 U3 ( .A0(d1[5]), .A1(s), .B0(d0[5]), .B1(n1), .Y(y[5])
         );
  AO22_X1N_A9PP84TR_C14 U4 ( .A0(d1[4]), .A1(s), .B0(d0[4]), .B1(n1), .Y(y[4])
         );
  AO22_X1N_A9PP84TR_C14 U5 ( .A0(d1[3]), .A1(s), .B0(d0[3]), .B1(n1), .Y(y[3])
         );
  AO22_X1N_A9PP84TR_C14 U6 ( .A0(d1[2]), .A1(s), .B0(d0[2]), .B1(n1), .Y(y[2])
         );
  AO22_X1N_A9PP84TR_C14 U7 ( .A0(d1[1]), .A1(s), .B0(d0[1]), .B1(n1), .Y(y[1])
         );
  AO22_X1N_A9PP84TR_C14 U8 ( .A0(d1[0]), .A1(s), .B0(d0[0]), .B1(n1), .Y(y[0])
         );
  AO22_X0P5N_A9PP84TR_C14 U1 ( .A0(s), .A1(d1[7]), .B0(d0[7]), .B1(n1), .Y(
        y[7]) );
  INV_X2N_A9PP84TR_C14 U9 ( .A(s), .Y(n1) );
endmodule


module mux2_WIDTH8_3 ( d0, d1, s, y );
  input [7:0] d0;
  input [7:0] d1;
  output [7:0] y;
  input s;
  wire   n1, n2, n3;

  NAND2_X2N_A9PP84TR_C14 U1 ( .A(s), .B(d1[0]), .Y(n2) );
  BUF_X2N_A9PP84TR_C14 U2 ( .A(s), .Y(n1) );
  OAI2XB1_X2N_A9PP84TR_C14 U3 ( .A1N(d0[0]), .A0(s), .B0(n2), .Y(y[0]) );
  INV_X1P5F_A9PP84TR_C14 U4 ( .A(d0[1]), .Y(n3) );
  MXT2_X2N_A9PP84TR_C14 U5 ( .A(d0[4]), .B(d1[4]), .S0(n1), .Y(y[4]) );
  OAI22BB_X2N_A9PP84TR_C14 U6 ( .A0(s), .A1(n3), .B0N(d1[1]), .B1N(s), .Y(y[1]) );
  MXT2_X2N_A9PP84TR_C14 U7 ( .A(d0[2]), .B(d1[2]), .S0(s), .Y(y[2]) );
  MXT2_X2N_A9PP84TR_C14 U8 ( .A(d0[3]), .B(d1[3]), .S0(n1), .Y(y[3]) );
  MXT2_X1N_A9PP84TR_C14 U9 ( .A(d0[5]), .B(d1[5]), .S0(n1), .Y(y[5]) );
  MXT2_X2N_A9PP84TR_C14 U10 ( .A(d0[6]), .B(d1[6]), .S0(n1), .Y(y[6]) );
  MXT2_X2N_A9PP84TR_C14 U11 ( .A(d0[7]), .B(d1[7]), .S0(n1), .Y(y[7]) );
endmodule


module mux4_WIDTH8 ( d0, d1, d2, d3, s, y );
  input [7:0] d0;
  input [7:0] d1;
  input [7:0] d2;
  input [7:0] d3;
  input [1:0] s;
  output [7:0] y;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35;

  OAI2XB1_X0P5N_A9PP84TR_C14 U1 ( .A1N(d2[0]), .A0(n4), .B0(n8), .Y(n9) );
  AOI22_X1N_A9PP84TR_C14 U2 ( .A0(d3[4]), .A1(n33), .B0(d1[4]), .B1(n32), .Y(
        n25) );
  INV_X1P5R_A9PP84TR_C14 U3 ( .A(n22), .Y(n32) );
  NAND2_X2N_A9PP84TR_C14 U4 ( .A(n26), .B(n25), .Y(y[4]) );
  INV_X1P5F_A9PP84TR_C14 U5 ( .A(s[0]), .Y(n2) );
  NAND2_X0P7N_A9PP84TR_C14 U6 ( .A(s[0]), .B(s[1]), .Y(n21) );
  AOI22_X0P7F_A9PP84TR_C14 U7 ( .A0(n31), .A1(d0[6]), .B0(d2[6]), .B1(n1), .Y(
        n30) );
  NAND2_X1P5R_A9PP84TR_C14 U8 ( .A(n35), .B(n34), .Y(y[7]) );
  NAND2_X1N_A9PP84TR_C14 U9 ( .A(n28), .B(n27), .Y(y[5]) );
  AOI22P_X0P7F_A9PP84TR_C14 U10 ( .A0(d2[3]), .A1(n1), .B0(d0[3]), .B1(n31), 
        .Y(n24) );
  AOI22P_X0P5N_A9PP84TR_C14 U11 ( .A0(d2[5]), .A1(n1), .B0(d0[5]), .B1(n31), 
        .Y(n28) );
  OAI2XB1_X0P7N_A9PP84TR_C14 U12 ( .A1N(d2[2]), .A0(n4), .B0(n18), .Y(n19) );
  NAND2_X2N_A9PP84TR_C14 U13 ( .A(n30), .B(n29), .Y(y[6]) );
  INVP_X1F_A9PP84TR_C14 U14 ( .A(n33), .Y(n3) );
  INV_X1P5F_A9PP84TR_C14 U15 ( .A(n1), .Y(n4) );
  OR2_X2N_A9PP84TR_C14 U16 ( .A(n15), .B(n14), .Y(y[1]) );
  OAI22_X0P5N_A9PP84TR_C14 U17 ( .A0(n22), .A1(n12), .B0(n3), .B1(n11), .Y(n15) );
  AOI22_X0P7N_A9PP84TR_C14 U18 ( .A0(d2[7]), .A1(n1), .B0(d0[7]), .B1(n31), 
        .Y(n35) );
  AOI22P_X0P7N_A9PP84TR_C14 U19 ( .A0(d3[5]), .A1(n33), .B0(d1[5]), .B1(n32), 
        .Y(n27) );
  AND2_X2N_A9PP84TR_C14 U20 ( .A(n2), .B(s[1]), .Y(n1) );
  AOI22_X1N_A9PP84TR_C14 U21 ( .A0(d3[3]), .A1(n33), .B0(d1[3]), .B1(n32), .Y(
        n23) );
  NAND2_X1R_A9PP84TR_C14 U22 ( .A(d0[1]), .B(n31), .Y(n13) );
  NAND2_X1N_A9PP84TR_C14 U23 ( .A(n31), .B(d0[2]), .Y(n18) );
  INV_X4F_A9PP84TR_C14 U24 ( .A(n7), .Y(n31) );
  OR2_X2N_A9PP84TR_C14 U25 ( .A(s[0]), .B(s[1]), .Y(n7) );
  INV_X2R_A9PP84TR_C14 U26 ( .A(n21), .Y(n33) );
  NAND2_X1R_A9PP84TR_C14 U27 ( .A(n24), .B(n23), .Y(y[3]) );
  AOI22_X0P5N_A9PP84TR_C14 U28 ( .A0(d3[7]), .A1(n33), .B0(d1[7]), .B1(n32), 
        .Y(n34) );
  AOI22_X0P7N_A9PP84TR_C14 U29 ( .A0(d1[6]), .A1(n32), .B0(d3[6]), .B1(n33), 
        .Y(n29) );
  NAND2_X1F_A9PP84TR_C14 U30 ( .A(d0[0]), .B(n31), .Y(n8) );
  OAI22P_X0P5N_A9PP84TR_C14 U31 ( .A0(n22), .A1(n6), .B0(n3), .B1(n5), .Y(n10)
         );
  OAI22_X0P7R_A9PP84TR_C14 U32 ( .A0(n22), .A1(n17), .B0(n21), .B1(n16), .Y(
        n20) );
  AOI22_X0P7N_A9PP84TR_C14 U33 ( .A0(n1), .A1(d2[4]), .B0(n31), .B1(d0[4]), 
        .Y(n26) );
  OAI2XB1_X0P5N_A9PP84TR_C14 U34 ( .A1N(d2[1]), .A0(n4), .B0(n13), .Y(n14) );
  NAND2XB_X0P5N_A9PP84TR_C14 U35 ( .BN(s[1]), .A(s[0]), .Y(n22) );
  INV_X1P5N_A9PP84TR_C14 U36 ( .A(d1[0]), .Y(n6) );
  INV_X1P5N_A9PP84TR_C14 U37 ( .A(d3[0]), .Y(n5) );
  OR2_X2N_A9PP84TR_C14 U38 ( .A(n10), .B(n9), .Y(y[0]) );
  INV_X1P5N_A9PP84TR_C14 U39 ( .A(d1[1]), .Y(n12) );
  INV_X1P5N_A9PP84TR_C14 U40 ( .A(d3[1]), .Y(n11) );
  INV_X1P5N_A9PP84TR_C14 U41 ( .A(d1[2]), .Y(n17) );
  INV_X1P5N_A9PP84TR_C14 U42 ( .A(d3[2]), .Y(n16) );
  OR2_X2N_A9PP84TR_C14 U43 ( .A(n20), .B(n19), .Y(y[2]) );
endmodule


module mux3_WIDTH8 ( d0, d1, d2, s, y );
  input [7:0] d0;
  input [7:0] d1;
  input [7:0] d2;
  input [1:0] s;
  output [7:0] y;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;

  NAND2_X0P5R_A9PP84TR_C14 U1 ( .A(d0[5]), .B(n1), .Y(n18) );
  NAND2_X0P5R_A9PP84TR_C14 U2 ( .A(d2[6]), .B(s[1]), .Y(n20) );
  NAND2_X0P5R_A9PP84TR_C14 U3 ( .A(d2[5]), .B(s[1]), .Y(n17) );
  NAND2_X0P5R_A9PP84TR_C14 U4 ( .A(d2[4]), .B(s[1]), .Y(n14) );
  NAND2_X0P5R_A9PP84TR_C14 U5 ( .A(d2[3]), .B(s[1]), .Y(n11) );
  NAND2_X0P5R_A9PP84TR_C14 U6 ( .A(d2[2]), .B(s[1]), .Y(n8) );
  NAND2_X0P7R_A9PP84TR_C14 U7 ( .A(d2[1]), .B(s[1]), .Y(n5) );
  NAND2_X0P7R_A9PP84TR_C14 U8 ( .A(d2[0]), .B(s[1]), .Y(n2) );
  OAI211_X0P7N_A9PP84TR_C14 U9 ( .A0(n26), .A1(n25), .B0(n24), .C0(n23), .Y(
        y[7]) );
  NOR2_X0P5F_A9PP84TR_C14 U10 ( .A(s[1]), .B(s[0]), .Y(n1) );
  OAI211_X0P5N_A9PP84TR_C14 U11 ( .A0(n26), .A1(n7), .B0(n6), .C0(n5), .Y(y[1]) );
  OAI211_X0P7N_A9PP84TR_C14 U12 ( .A0(n26), .A1(n22), .B0(n21), .C0(n20), .Y(
        y[6]) );
  NAND2_X0P5R_A9PP84TR_C14 U13 ( .A(d2[7]), .B(s[1]), .Y(n24) );
  NAND2_X0P5R_A9PP84TR_C14 U14 ( .A(d0[7]), .B(n1), .Y(n23) );
  NAND2_X0P5R_A9PP84TR_C14 U15 ( .A(d0[6]), .B(n1), .Y(n21) );
  NAND2B_X1N_A9PP84TR_C14 U16 ( .AN(s[1]), .B(s[0]), .Y(n26) );
  INV_X1P5N_A9PP84TR_C14 U17 ( .A(d1[0]), .Y(n4) );
  NAND2_X1N_A9PP84TR_C14 U18 ( .A(d0[0]), .B(n1), .Y(n3) );
  OAI211_X1N_A9PP84TR_C14 U19 ( .A0(n26), .A1(n4), .B0(n3), .C0(n2), .Y(y[0])
         );
  INV_X1P5N_A9PP84TR_C14 U20 ( .A(d1[1]), .Y(n7) );
  NAND2_X1N_A9PP84TR_C14 U21 ( .A(d0[1]), .B(n1), .Y(n6) );
  INV_X1P5N_A9PP84TR_C14 U22 ( .A(d1[2]), .Y(n10) );
  NAND2_X1N_A9PP84TR_C14 U23 ( .A(d0[2]), .B(n1), .Y(n9) );
  OAI211_X1N_A9PP84TR_C14 U24 ( .A0(n26), .A1(n10), .B0(n9), .C0(n8), .Y(y[2])
         );
  INV_X1P5N_A9PP84TR_C14 U25 ( .A(d1[3]), .Y(n13) );
  NAND2_X1N_A9PP84TR_C14 U26 ( .A(d0[3]), .B(n1), .Y(n12) );
  OAI211_X1N_A9PP84TR_C14 U27 ( .A0(n26), .A1(n13), .B0(n12), .C0(n11), .Y(
        y[3]) );
  INV_X1P5N_A9PP84TR_C14 U28 ( .A(d1[4]), .Y(n16) );
  NAND2_X1N_A9PP84TR_C14 U29 ( .A(d0[4]), .B(n1), .Y(n15) );
  OAI211_X1N_A9PP84TR_C14 U30 ( .A0(n26), .A1(n16), .B0(n15), .C0(n14), .Y(
        y[4]) );
  INV_X1P5N_A9PP84TR_C14 U31 ( .A(d1[5]), .Y(n19) );
  OAI211_X1N_A9PP84TR_C14 U32 ( .A0(n26), .A1(n19), .B0(n18), .C0(n17), .Y(
        y[5]) );
  INV_X1P5N_A9PP84TR_C14 U33 ( .A(d1[6]), .Y(n22) );
  INV_X2N_A9PP84TR_C14 U34 ( .A(d1[7]), .Y(n25) );
endmodule


module mux2_WIDTH8_2 ( d0, d1, s, y );
  input [7:0] d0;
  input [7:0] d1;
  output [7:0] y;
  input s;
  wire   n1;
  tri   [7:0] y;

  AO22_X1N_A9PP84TR_C14 U1 ( .A0(s), .A1(d1[7]), .B0(d0[7]), .B1(n1), .Y(y[7])
         );
  AO22_X1N_A9PP84TR_C14 U2 ( .A0(d1[6]), .A1(s), .B0(d0[6]), .B1(n1), .Y(y[6])
         );
  AO22_X1N_A9PP84TR_C14 U3 ( .A0(d1[5]), .A1(s), .B0(d0[5]), .B1(n1), .Y(y[5])
         );
  AO22_X1N_A9PP84TR_C14 U4 ( .A0(d1[4]), .A1(s), .B0(d0[4]), .B1(n1), .Y(y[4])
         );
  AO22_X1N_A9PP84TR_C14 U5 ( .A0(d1[3]), .A1(s), .B0(d0[3]), .B1(n1), .Y(y[3])
         );
  AO22_X1N_A9PP84TR_C14 U6 ( .A0(d1[2]), .A1(s), .B0(d0[2]), .B1(n1), .Y(y[2])
         );
  AO22_X1N_A9PP84TR_C14 U7 ( .A0(d1[1]), .A1(s), .B0(d0[1]), .B1(n1), .Y(y[1])
         );
  AO22_X1N_A9PP84TR_C14 U8 ( .A0(d1[0]), .A1(s), .B0(d0[0]), .B1(n1), .Y(y[0])
         );
  INV_X2N_A9PP84TR_C14 U9 ( .A(s), .Y(n1) );
endmodule


module regfile_WIDTH8_REGBITS3 ( clk, regwrite, ra1, ra2, wa, wd, rd1, rd2 );
  input [2:0] ra1;
  input [2:0] ra2;
  input [2:0] wa;
  input [7:0] wd;
  output [7:0] rd1;
  output [7:0] rd2;
  input clk, regwrite;

  tri   clk;
  tri   regwrite;
  tri   [2:0] wa;
  tri   [7:0] wd;
  tri   [7:0] rd1;
  tri   n1;
  assign rd2[7] = rd1[7];
  assign rd2[6] = rd1[6];
  assign rd2[5] = rd1[5];
  assign rd2[4] = rd1[4];
  assign rd2[3] = rd1[3];
  assign rd2[2] = rd1[2];
  assign rd2[1] = rd1[1];
  assign rd2[0] = rd1[0];

  rf2hsm1wm1 regfile ( .AA(wa), .CLKA(clk), .CENA(1'b0), .WENB({regwrite, 
        regwrite, regwrite, regwrite, regwrite, regwrite, regwrite, regwrite}), 
        .AB(wa), .DB(wd), .CLKB(clk), .CENB(1'b0), .QA(rd1) );
endmodule


module andN ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  output [7:0] y;


  AND2_X1N_A9PP84TR_C14 U1 ( .A(b[4]), .B(a[4]), .Y(y[4]) );
  AND2_X1N_A9PP84TR_C14 U2 ( .A(b[2]), .B(a[2]), .Y(y[2]) );
  AND2_X1N_A9PP84TR_C14 U3 ( .A(b[3]), .B(a[3]), .Y(y[3]) );
  AND2_X0P7N_A9PP84TR_C14 U4 ( .A(b[0]), .B(a[0]), .Y(y[0]) );
  AND2_X1N_A9PP84TR_C14 U5 ( .A(b[1]), .B(a[1]), .Y(y[1]) );
  AND2_X1N_A9PP84TR_C14 U6 ( .A(b[7]), .B(a[7]), .Y(y[7]) );
  AND2_X1N_A9PP84TR_C14 U7 ( .A(b[6]), .B(a[6]), .Y(y[6]) );
  AND2_X1N_A9PP84TR_C14 U8 ( .A(b[5]), .B(a[5]), .Y(y[5]) );
endmodule


module orN ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  output [7:0] y;


  OR2_X0P7N_A9PP84TR_C14 U1 ( .A(a[2]), .B(b[2]), .Y(y[2]) );
  OR2_X1N_A9PP84TR_C14 U2 ( .A(a[1]), .B(b[1]), .Y(y[1]) );
  OR2_X1N_A9PP84TR_C14 U3 ( .A(a[3]), .B(b[3]), .Y(y[3]) );
  OR2_X1N_A9PP84TR_C14 U4 ( .A(a[4]), .B(b[4]), .Y(y[4]) );
  OR2_X0P7N_A9PP84TR_C14 U5 ( .A(a[0]), .B(b[0]), .Y(y[0]) );
  OR2_X1N_A9PP84TR_C14 U6 ( .A(a[7]), .B(b[7]), .Y(y[7]) );
  OR2_X1N_A9PP84TR_C14 U7 ( .A(a[6]), .B(b[6]), .Y(y[6]) );
  OR2_X1N_A9PP84TR_C14 U8 ( .A(a[5]), .B(b[5]), .Y(y[5]) );
endmodule


module xorN ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  output [7:0] y;


  XOR2_X0P7N_A9PP84TR_C14 U1 ( .A(b[1]), .B(a[1]), .Y(y[1]) );
  XOR2_X0P7N_A9PP84TR_C14 U2 ( .A(b[2]), .B(a[2]), .Y(y[2]) );
  XOR2_X0P7N_A9PP84TR_C14 U3 ( .A(b[3]), .B(a[3]), .Y(y[3]) );
  XOR2_X0P7N_A9PP84TR_C14 U4 ( .A(b[5]), .B(a[5]), .Y(y[5]) );
  XOR2_X0P7N_A9PP84TR_C14 U5 ( .A(b[4]), .B(a[4]), .Y(y[4]) );
  XOR2_X1N_A9PP84TR_C14 U6 ( .A(b[0]), .B(a[0]), .Y(y[0]) );
  XOR2_X0P7N_A9PP84TR_C14 U7 ( .A(b[7]), .B(a[7]), .Y(y[7]) );
  XOR2_X0P7N_A9PP84TR_C14 U8 ( .A(b[6]), .B(a[6]), .Y(y[6]) );
endmodule


module inv ( a, y );
  input [7:0] a;
  output [7:0] y;


  INVP_X0P5N_A9PP84TR_C14 U1 ( .A(a[2]), .Y(y[2]) );
  INVP_X0P5N_A9PP84TR_C14 U2 ( .A(a[0]), .Y(y[0]) );
  INVP_X0P5N_A9PP84TR_C14 U3 ( .A(a[1]), .Y(y[1]) );
  INVP_X0P5N_A9PP84TR_C14 U4 ( .A(a[3]), .Y(y[3]) );
  INVP_X1R_A9PP84TR_C14 U5 ( .A(a[5]), .Y(y[5]) );
  INVP_X0P5N_A9PP84TR_C14 U6 ( .A(a[4]), .Y(y[4]) );
  INVP_X0P5N_A9PP84TR_C14 U7 ( .A(a[7]), .Y(y[7]) );
  INVP_X0P5N_A9PP84TR_C14 U8 ( .A(a[6]), .Y(y[6]) );
endmodule


module mux2_WIDTH8_1 ( d0, d1, s, y );
  input [7:0] d0;
  input [7:0] d1;
  output [7:0] y;
  input s;


  MXT2_X2N_A9PP84TR_C14 U1 ( .A(d0[2]), .B(d1[2]), .S0(s), .Y(y[2]) );
  MXT2_X2N_A9PP84TR_C14 U2 ( .A(d0[0]), .B(d1[0]), .S0(s), .Y(y[0]) );
  MXT2_X2N_A9PP84TR_C14 U3 ( .A(d0[1]), .B(d1[1]), .S0(s), .Y(y[1]) );
  MXT2_X2N_A9PP84TR_C14 U4 ( .A(d0[6]), .B(d1[6]), .S0(s), .Y(y[6]) );
  MXT2_X2N_A9PP84TR_C14 U5 ( .A(d0[3]), .B(d1[3]), .S0(s), .Y(y[3]) );
  MXT2_X2N_A9PP84TR_C14 U6 ( .A(d0[5]), .B(d1[5]), .S0(s), .Y(y[5]) );
  MXT2_X2N_A9PP84TR_C14 U7 ( .A(d0[4]), .B(d1[4]), .S0(s), .Y(y[4]) );
  MXT2_X2N_A9PP84TR_C14 U8 ( .A(d0[7]), .B(d1[7]), .S0(s), .Y(y[7]) );
endmodule


module condinv ( a, invert, y );
  input [7:0] a;
  output [7:0] y;
  input invert;

  wire   [7:0] ab;

  inv inverter ( .a(a), .y(ab) );
  mux2_WIDTH8_1 invmux ( .d0(a), .d1(ab), .s(invert), .y(y) );
endmodule


module adder_DW01_add_1 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91;

  NOR2_X1N_A9PP84TR_C14 U2 ( .A(n67), .B(n68), .Y(n65) );
  NAND2_X1R_A9PP84TR_C14 U3 ( .A(n21), .B(n20), .Y(n63) );
  AOI21_X0P7N_A9PP84TR_C14 U4 ( .A0(n76), .A1(n73), .B0(n77), .Y(n75) );
  XNOR2_X1N_A9PP84TR_C14 U5 ( .A(n65), .B(n66), .Y(SUM[4]) );
  NOR2_X1F_A9PP84TR_C14 U6 ( .A(n7), .B(n55), .Y(n54) );
  NAND2_X2R_A9PP84TR_C14 U7 ( .A(B[0]), .B(n6), .Y(n34) );
  OAI21B_X0P7N_A9PP84TR_C14 U8 ( .A0(n17), .A1(n18), .B0N(n4), .Y(n16) );
  NOR3_X0P7N_A9PP84TR_C14 U9 ( .A(n28), .B(n29), .C(n30), .Y(n10) );
  NAND2_X1N_A9PP84TR_C14 U10 ( .A(n41), .B(n42), .Y(n40) );
  NAND2_X1R_A9PP84TR_C14 U11 ( .A(n80), .B(n81), .Y(n76) );
  NOR2_X1N_A9PP84TR_C14 U12 ( .A(n90), .B(n84), .Y(n80) );
  NAND2_X0P5R_A9PP84TR_C14 U13 ( .A(n82), .B(B[0]), .Y(n81) );
  NOR2_X0P7N_A9PP84TR_C14 U14 ( .A(n83), .B(n85), .Y(n84) );
  INV_X2N_A9PP84TR_C14 U15 ( .A(n7), .Y(n6) );
  OAI21_X0P7N_A9PP84TR_C14 U16 ( .A0(n12), .A1(n13), .B0(n14), .Y(n11) );
  NOR2_X1R_A9PP84TR_C14 U17 ( .A(n15), .B(n16), .Y(n14) );
  NOR2_X1F_A9PP84TR_C14 U18 ( .A(n83), .B(n7), .Y(n82) );
  NOR2_X0P7F_A9PP84TR_C14 U19 ( .A(n39), .B(n40), .Y(n37) );
  NOR2_X0P7N_A9PP84TR_C14 U20 ( .A(n26), .B(n61), .Y(n68) );
  NOR2_X0P5F_A9PP84TR_C14 U21 ( .A(n72), .B(n36), .Y(n67) );
  AOI211_X0P5N_A9PP84TR_C14 U22 ( .A0(n64), .A1(n5), .B0(n52), .C0(n36), .Y(
        n59) );
  XNOR2_X1N_A9PP84TR_C14 U23 ( .A(n87), .B(n88), .Y(SUM[1]) );
  NOR2_X1F_A9PP84TR_C14 U24 ( .A(n10), .B(n11), .Y(n8) );
  INVP_X1R_A9PP84TR_C14 U25 ( .A(n86), .Y(n90) );
  INV_X1P5F_A9PP84TR_C14 U26 ( .A(n32), .Y(n83) );
  INV_X1P5R_A9PP84TR_C14 U27 ( .A(n22), .Y(n17) );
  NAND2_X0P5R_A9PP84TR_C14 U28 ( .A(n23), .B(n22), .Y(n13) );
  NAND2_X0P7N_A9PP84TR_C14 U29 ( .A(n35), .B(n22), .Y(n28) );
  NAND2_X1P5R_A9PP84TR_C14 U30 ( .A(n78), .B(n79), .Y(n71) );
  NOR2_X1R_A9PP84TR_C14 U31 ( .A(n19), .B(n27), .Y(n31) );
  NOR2_X0P5F_A9PP84TR_C14 U32 ( .A(n26), .B(n27), .Y(n24) );
  NAND2_X0P5R_A9PP84TR_C14 U33 ( .A(n63), .B(n32), .Y(n52) );
  NAND2_X1F_A9PP84TR_C14 U34 ( .A(n49), .B(n25), .Y(n48) );
  NOR2_X1N_A9PP84TR_C14 U35 ( .A(n43), .B(n44), .Y(n42) );
  NAND2_X0P7N_A9PP84TR_C14 U36 ( .A(n46), .B(n23), .Y(n41) );
  XOR2_X1N_A9PP84TR_C14 U37 ( .A(n74), .B(n75), .Y(SUM[3]) );
  NOR3_X0P5F_A9PP84TR_C14 U38 ( .A(n53), .B(n90), .C(n54), .Y(n47) );
  NOR4_X0P7N_A9PP84TR_C14 U39 ( .A(n19), .B(n17), .C(n20), .D(n21), .Y(n15) );
  XOR2_X0P7N_A9PP84TR_C14 U40 ( .A(B[5]), .B(A[5]), .Y(n1) );
  OAI21P_X0P5N_A9PP84TR_C14 U41 ( .A0(n6), .A1(B[0]), .B0(CI), .Y(n85) );
  OAI21P_X0P5N_A9PP84TR_C14 U42 ( .A0(n6), .A1(B[0]), .B0(CI), .Y(n33) );
  NOR3_X1N_A9PP84TR_C14 U43 ( .A(n47), .B(n36), .C(n48), .Y(n39) );
  NAND2_X0P5R_A9PP84TR_C14 U44 ( .A(n24), .B(n25), .Y(n12) );
  XNOR2_X1N_A9PP84TR_C14 U45 ( .A(n58), .B(n1), .Y(SUM[5]) );
  NAND2_X0P5R_A9PP84TR_C14 U46 ( .A(B[1]), .B(A[1]), .Y(n86) );
  NAND2_X0P5R_A9PP84TR_C14 U47 ( .A(B[3]), .B(A[3]), .Y(n69) );
  OAI21P_X0P5N_A9PP84TR_C14 U48 ( .A0(n6), .A1(B[0]), .B0(n34), .Y(n91) );
  OR2_X1N_A9PP84TR_C14 U49 ( .A(n26), .B(n27), .Y(n2) );
  NOR3_X0P5F_A9PP84TR_C14 U50 ( .A(n19), .B(n26), .C(n27), .Y(n46) );
  NOR2_X1F_A9PP84TR_C14 U51 ( .A(n90), .B(n54), .Y(n64) );
  NAND2_X0P5R_A9PP84TR_C14 U52 ( .A(n69), .B(n71), .Y(n74) );
  XNOR2_X1N_A9PP84TR_C14 U53 ( .A(n3), .B(n72), .Y(SUM[2]) );
  AND2_X0P5N_A9PP84TR_C14 U54 ( .A(n73), .B(n70), .Y(n3) );
  NAND2_X1R_A9PP84TR_C14 U55 ( .A(n69), .B(n70), .Y(n23) );
  INV_X2N_A9PP84TR_C14 U56 ( .A(A[0]), .Y(n7) );
  OR2_X1N_A9PP84TR_C14 U57 ( .A(B[1]), .B(A[1]), .Y(n32) );
  NAND2_X0P5R_A9PP84TR_C14 U58 ( .A(n31), .B(n32), .Y(n30) );
  NOR3BB_X1N_A9PP84TR_C14 U59 ( .AN(n33), .BN(n34), .C(n90), .Y(n29) );
  XOR2_X0P7N_A9PP84TR_C14 U60 ( .A(B[4]), .B(A[4]), .Y(n66) );
  NOR2_X1F_A9PP84TR_C14 U61 ( .A(n59), .B(n60), .Y(n58) );
  OAI21_X1N_A9PP84TR_C14 U62 ( .A0(n61), .A1(n2), .B0(n62), .Y(n60) );
  NAND2_X0P5R_A9PP84TR_C14 U63 ( .A(B[4]), .B(A[4]), .Y(n62) );
  OR2_X1N_A9PP84TR_C14 U64 ( .A(B[2]), .B(A[2]), .Y(n73) );
  NAND2_X1R_A9PP84TR_C14 U65 ( .A(B[2]), .B(A[2]), .Y(n70) );
  AND2_X0P5N_A9PP84TR_C14 U66 ( .A(B[6]), .B(A[6]), .Y(n4) );
  NAND2_X0P5R_A9PP84TR_C14 U67 ( .A(B[5]), .B(A[5]), .Y(n18) );
  NOR2_X0P5F_A9PP84TR_C14 U68 ( .A(n19), .B(n45), .Y(n44) );
  NAND2_X0P5R_A9PP84TR_C14 U69 ( .A(A[4]), .B(B[4]), .Y(n45) );
  OR2_X1N_A9PP84TR_C14 U70 ( .A(B[6]), .B(A[6]), .Y(n22) );
  NOR2_X0P5F_A9PP84TR_C14 U71 ( .A(n6), .B(B[0]), .Y(n56) );
  NOR2_X1F_A9PP84TR_C14 U72 ( .A(n56), .B(n57), .Y(n53) );
  OR2_X1N_A9PP84TR_C14 U73 ( .A(n56), .B(n57), .Y(n5) );
  XNOR2_X1N_A9PP84TR_C14 U74 ( .A(n8), .B(n9), .Y(SUM[7]) );
  XOR2_X1N_A9PP84TR_C14 U75 ( .A(B[7]), .B(A[7]), .Y(n9) );
  NOR2_X1F_A9PP84TR_C14 U76 ( .A(n83), .B(n90), .Y(n87) );
  OA21A1OI2_X0P5N_A9PP84TR_C14 U77 ( .A0(n6), .A1(B[0]), .B0(CI), .C0(n89), 
        .Y(n88) );
  XNOR2_X1N_A9PP84TR_C14 U78 ( .A(n91), .B(CI), .Y(SUM[0]) );
  XOR2_X0P7N_A9PP84TR_C14 U79 ( .A(B[6]), .B(A[6]), .Y(n38) );
  XNOR2_X1N_A9PP84TR_C14 U80 ( .A(n37), .B(n38), .Y(SUM[6]) );
  INV_X1P5N_A9PP84TR_C14 U81 ( .A(n36), .Y(n35) );
  INV_X1P5N_A9PP84TR_C14 U82 ( .A(n18), .Y(n43) );
  INV_X1P5N_A9PP84TR_C14 U83 ( .A(n25), .Y(n19) );
  NAND2_X2N_A9PP84TR_C14 U84 ( .A(n50), .B(n51), .Y(n25) );
  INV_X2N_A9PP84TR_C14 U85 ( .A(A[5]), .Y(n51) );
  INV_X2N_A9PP84TR_C14 U86 ( .A(B[5]), .Y(n50) );
  INV_X1P5N_A9PP84TR_C14 U87 ( .A(n52), .Y(n49) );
  INV_X1P5N_A9PP84TR_C14 U88 ( .A(n63), .Y(n27) );
  INV_X2N_A9PP84TR_C14 U89 ( .A(A[4]), .Y(n20) );
  INV_X2N_A9PP84TR_C14 U90 ( .A(B[4]), .Y(n21) );
  INV_X2N_A9PP84TR_C14 U91 ( .A(CI), .Y(n57) );
  INV_X2N_A9PP84TR_C14 U92 ( .A(B[0]), .Y(n55) );
  INV_X1P5N_A9PP84TR_C14 U93 ( .A(n23), .Y(n61) );
  INV_X1P5N_A9PP84TR_C14 U94 ( .A(n71), .Y(n26) );
  NAND2_X2N_A9PP84TR_C14 U95 ( .A(n73), .B(n71), .Y(n36) );
  INV_X1P5N_A9PP84TR_C14 U96 ( .A(n70), .Y(n77) );
  INV_X2N_A9PP84TR_C14 U97 ( .A(A[3]), .Y(n79) );
  INV_X2N_A9PP84TR_C14 U98 ( .A(B[3]), .Y(n78) );
  INV_X1P5N_A9PP84TR_C14 U99 ( .A(n76), .Y(n72) );
  INV_X2N_A9PP84TR_C14 U100 ( .A(n34), .Y(n89) );
endmodule


module adder ( a, b, cin, y );
  input [7:0] a;
  input [7:0] b;
  output [7:0] y;
  input cin;


  adder_DW01_add_1 add_1_root_add_645_2 ( .A(a), .B(b), .CI(cin), .SUM(y) );
endmodule


module multiplier_trunc_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][0] , \ab[6][1] , \ab[6][0] , \ab[5][1] , \ab[5][0] ,
         \ab[4][3] , \ab[4][2] , \ab[4][1] , \ab[4][0] , \ab[3][4] ,
         \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] , \ab[2][5] ,
         \ab[2][4] , \ab[2][3] , \ab[2][2] , \ab[2][1] , \ab[2][0] ,
         \ab[1][6] , \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] ,
         \ab[1][1] , \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] ,
         \ab[0][4] , \ab[0][2] , \ab[0][1] , \CARRYB[6][0] , \CARRYB[5][1] ,
         \CARRYB[5][0] , \CARRYB[4][2] , \CARRYB[4][0] , \CARRYB[3][3] ,
         \CARRYB[3][2] , \CARRYB[3][1] , \CARRYB[3][0] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \CARRYB[1][5] , \CARRYB[1][4] , \CARRYB[1][3] , \CARRYB[1][2] ,
         \CARRYB[1][1] , \CARRYB[1][0] , \SUMB[6][1] , \SUMB[5][1] ,
         \SUMB[4][2] , \SUMB[4][1] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] , \SUMB[2][2] ,
         \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] , \SUMB[1][3] ,
         \SUMB[1][2] , \SUMB[1][1] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66;

  ADDF_X1N_A9PP84TR_C14 S1_2_0 ( .A(\ab[2][0] ), .B(\CARRYB[1][0] ), .CI(
        \SUMB[1][1] ), .CO(\CARRYB[2][0] ), .S(PRODUCT[2]) );
  ADDF_X1N_A9PP84TR_C14 S2_2_1 ( .A(\ab[2][1] ), .B(\CARRYB[1][1] ), .CI(
        \SUMB[1][2] ), .CO(\CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDF_X1N_A9PP84TR_C14 S2_2_2 ( .A(\CARRYB[1][2] ), .B(\ab[2][2] ), .CI(
        \SUMB[1][3] ), .CO(\CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDF_X0P7N_A9PP84TR_C14 S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(
        \SUMB[2][4] ), .CO(\CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  XOR3_X0P7N_A9PP84TR_C14 S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .C(
        \SUMB[2][5] ), .Y(\SUMB[3][4] ) );
  ADDF_X2N_A9PP84TR_C14 S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(
        \SUMB[2][1] ), .CO(\CARRYB[3][0] ), .S(PRODUCT[3]) );
  XOR3_X0P7N_A9PP84TR_C14 S2_2_5 ( .A(\ab[2][5] ), .B(\CARRYB[1][5] ), .C(
        \SUMB[1][6] ), .Y(\SUMB[2][5] ) );
  ADDF_X1N_A9PP84TR_C14 S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(
        \SUMB[3][1] ), .CO(\CARRYB[4][0] ), .S(PRODUCT[4]) );
  INV_X2N_A9PP84TR_C14 U2 ( .A(\ab[0][4] ), .Y(n12) );
  NOR2_X2N_A9PP84TR_C14 U3 ( .A(n26), .B(n51), .Y(\CARRYB[1][3] ) );
  XNOR2_X1N_A9PP84TR_C14 U4 ( .A(n3), .B(\SUMB[6][1] ), .Y(PRODUCT[7]) );
  XOR2_X1N_A9PP84TR_C14 U5 ( .A(\CARRYB[6][0] ), .B(n4), .Y(n3) );
  NAND2_X0P7R_A9PP84TR_C14 U6 ( .A(\SUMB[2][3] ), .B(\CARRYB[2][2] ), .Y(n33)
         );
  NAND2_X0P7R_A9PP84TR_C14 U7 ( .A(\CARRYB[2][2] ), .B(\ab[3][2] ), .Y(n35) );
  XOR2_X2N_A9PP84TR_C14 U8 ( .A(n18), .B(\SUMB[5][1] ), .Y(n54) );
  INV_X32N_A9PP84TR_C14 U9 ( .A(\ab[7][0] ), .Y(n4) );
  BUF_X2N_A9PP84TR_C14 U10 ( .A(\SUMB[4][1] ), .Y(n5) );
  NAND2_X1F_A9PP84TR_C14 U11 ( .A(n36), .B(B[2]), .Y(n42) );
  NAND2_X1P5N_A9PP84TR_C14 U12 ( .A(\CARRYB[4][0] ), .B(\ab[5][0] ), .Y(n17)
         );
  XOR2_X2N_A9PP84TR_C14 U13 ( .A(\ab[2][3] ), .B(\CARRYB[1][3] ), .Y(n6) );
  XOR2_X2N_A9PP84TR_C14 U14 ( .A(n6), .B(\SUMB[1][4] ), .Y(\SUMB[2][3] ) );
  NAND2_X0P5R_A9PP84TR_C14 U15 ( .A(\SUMB[1][4] ), .B(\CARRYB[1][3] ), .Y(n7)
         );
  NAND2_X0P5R_A9PP84TR_C14 U16 ( .A(\SUMB[1][4] ), .B(\ab[2][3] ), .Y(n8) );
  NAND2_X0P5R_A9PP84TR_C14 U17 ( .A(\CARRYB[1][3] ), .B(\ab[2][3] ), .Y(n9) );
  NAND3_X2R_A9PP84TR_C14 U18 ( .A(n7), .B(n9), .C(n8), .Y(\CARRYB[2][3] ) );
  NOR2XB_X1N_A9PP84TR_C14 U19 ( .BN(A[2]), .A(n55), .Y(\ab[2][3] ) );
  NAND2_X0P7R_A9PP84TR_C14 U20 ( .A(\SUMB[2][3] ), .B(\ab[3][2] ), .Y(n34) );
  XOR2_X1N_A9PP84TR_C14 U21 ( .A(n57), .B(\SUMB[3][3] ), .Y(\SUMB[4][2] ) );
  XOR2_X0P7N_A9PP84TR_C14 U22 ( .A(n57), .B(\SUMB[3][3] ), .Y(n22) );
  XOR2_X2N_A9PP84TR_C14 U23 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] )
         );
  CGEN_X1N_A9PP84TR_C14 U24 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(
        \SUMB[3][1] ), .CO(n10) );
  NAND2_X0P5R_A9PP84TR_C14 U25 ( .A(n32), .B(n22), .Y(n45) );
  NAND2_X0P5R_A9PP84TR_C14 U26 ( .A(n32), .B(\ab[5][1] ), .Y(n47) );
  NAND3_X0P7R_A9PP84TR_C14 U27 ( .A(n45), .B(n47), .C(n46), .Y(\CARRYB[5][1] )
         );
  NAND2_X0P7R_A9PP84TR_C14 U28 ( .A(\CARRYB[2][1] ), .B(\ab[3][1] ), .Y(n25)
         );
  XNOR2_X1N_A9PP84TR_C14 U29 ( .A(n11), .B(\SUMB[2][2] ), .Y(\SUMB[3][1] ) );
  XNOR2_X2N_A9PP84TR_C14 U30 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .Y(n11) );
  XOR2_X2N_A9PP84TR_C14 U31 ( .A(n12), .B(n51), .Y(\SUMB[1][3] ) );
  AND2_X1N_A9PP84TR_C14 U32 ( .A(B[3]), .B(A[1]), .Y(\ab[1][3] ) );
  INV_X2R_A9PP84TR_C14 U33 ( .A(\ab[1][3] ), .Y(n51) );
  BUF_X2N_A9PP84TR_C14 U34 ( .A(\SUMB[3][2] ), .Y(n20) );
  AND2_X1N_A9PP84TR_C14 U35 ( .A(A[1]), .B(B[4]), .Y(\ab[1][4] ) );
  XNOR2_X2N_A9PP84TR_C14 U36 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .Y(n28) );
  XNOR2_X2N_A9PP84TR_C14 U37 ( .A(n13), .B(n20), .Y(\SUMB[4][1] ) );
  XNOR2_X2N_A9PP84TR_C14 U38 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .Y(n13) );
  NAND3_X2N_A9PP84TR_C14 U39 ( .A(n23), .B(n25), .C(n24), .Y(\CARRYB[3][1] )
         );
  CGEN_X1N_A9PP84TR_C14 U40 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(
        \SUMB[5][1] ), .CO(\CARRYB[6][0] ) );
  AND2_X1N_A9PP84TR_C14 U41 ( .A(A[7]), .B(B[0]), .Y(\ab[7][0] ) );
  NAND2_X0P7R_A9PP84TR_C14 U42 ( .A(\SUMB[4][2] ), .B(\ab[5][1] ), .Y(n46) );
  XOR3_X1N_A9PP84TR_C14 U43 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .C(
        \SUMB[2][4] ), .Y(n52) );
  XOR2_X1N_A9PP84TR_C14 U44 ( .A(\ab[5][0] ), .B(n10), .Y(n14) );
  XOR2_X1N_A9PP84TR_C14 U45 ( .A(n14), .B(n5), .Y(PRODUCT[5]) );
  NAND2_X1P5N_A9PP84TR_C14 U46 ( .A(\SUMB[4][1] ), .B(n10), .Y(n15) );
  NAND2_X2N_A9PP84TR_C14 U47 ( .A(\SUMB[4][1] ), .B(\ab[5][0] ), .Y(n16) );
  NAND3_X2N_A9PP84TR_C14 U48 ( .A(n15), .B(n16), .C(n17), .Y(\CARRYB[5][0] )
         );
  INV_X32N_A9PP84TR_C14 U49 ( .A(\ab[6][0] ), .Y(n18) );
  INV_X2R_A9PP84TR_C14 U50 ( .A(B[6]), .Y(n49) );
  NAND2_X0P7N_A9PP84TR_C14 U51 ( .A(n52), .B(n53), .Y(n58) );
  XOR2_X3N_A9PP84TR_C14 U52 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(\SUMB[1][6] )
         );
  AND2_X2N_A9PP84TR_C14 U53 ( .A(A[1]), .B(B[6]), .Y(\ab[1][6] ) );
  NAND2_X0P5R_A9PP84TR_C14 U54 ( .A(A[0]), .B(B[3]), .Y(n19) );
  XNOR2_X2N_A9PP84TR_C14 U55 ( .A(n61), .B(n21), .Y(n31) );
  XOR2_X1N_A9PP84TR_C14 U56 ( .A(n62), .B(\SUMB[3][4] ), .Y(n21) );
  NAND2_X1N_A9PP84TR_C14 U57 ( .A(\SUMB[2][2] ), .B(\CARRYB[2][1] ), .Y(n23)
         );
  NAND2_X1P5R_A9PP84TR_C14 U58 ( .A(\SUMB[2][2] ), .B(\ab[3][1] ), .Y(n24) );
  AND2_X1N_A9PP84TR_C14 U59 ( .A(A[3]), .B(B[1]), .Y(\ab[3][1] ) );
  AND2_X1N_A9PP84TR_C14 U60 ( .A(B[1]), .B(A[0]), .Y(\ab[0][1] ) );
  NAND2_X0P5R_A9PP84TR_C14 U61 ( .A(B[4]), .B(A[0]), .Y(n26) );
  XOR2_X2N_A9PP84TR_C14 U62 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(\SUMB[1][5] )
         );
  XOR2_X2N_A9PP84TR_C14 U63 ( .A(n38), .B(\SUMB[1][5] ), .Y(\SUMB[2][4] ) );
  XOR2_X2N_A9PP84TR_C14 U64 ( .A(\ab[2][4] ), .B(\CARRYB[1][4] ), .Y(n38) );
  XNOR2_X3N_A9PP84TR_C14 U65 ( .A(n19), .B(\ab[1][2] ), .Y(\SUMB[1][2] ) );
  NAND2_X0P5R_A9PP84TR_C14 U66 ( .A(B[2]), .B(A[5]), .Y(n27) );
  NOR2_X1P5N_A9PP84TR_C14 U67 ( .A(n42), .B(n19), .Y(\CARRYB[1][2] ) );
  AND2_X2N_A9PP84TR_C14 U68 ( .A(B[2]), .B(A[0]), .Y(\ab[0][2] ) );
  XNOR2_X1N_A9PP84TR_C14 U69 ( .A(n28), .B(\SUMB[2][3] ), .Y(\SUMB[3][2] ) );
  INVP_X0P5N_A9PP84TR_C14 U70 ( .A(\CARRYB[5][0] ), .Y(n29) );
  INVP_X0P7F_A9PP84TR_C14 U71 ( .A(n29), .Y(n30) );
  BUF_X2N_A9PP84TR_C14 U72 ( .A(\CARRYB[3][2] ), .Y(n53) );
  XNOR3_X3N_A9PP84TR_C14 U73 ( .A(n31), .B(\CARRYB[5][1] ), .C(\ab[6][1] ), 
        .Y(\SUMB[6][1] ) );
  AND2_X1N_A9PP84TR_C14 U74 ( .A(B[1]), .B(A[6]), .Y(\ab[6][1] ) );
  BUF_X1P5N_A9PP84TR_C14 U75 ( .A(B[5]), .Y(n37) );
  CGEN_X2N_A9PP84TR_C14 U76 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(
        \SUMB[3][2] ), .CO(n32) );
  NAND3_X2N_A9PP84TR_C14 U77 ( .A(n33), .B(n35), .C(n34), .Y(\CARRYB[3][2] )
         );
  AND2_X2N_A9PP84TR_C14 U78 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(
        \CARRYB[1][1] ) );
  AND2_X2N_A9PP84TR_C14 U79 ( .A(n36), .B(B[1]), .Y(\ab[1][1] ) );
  BUF_X2N_A9PP84TR_C14 U80 ( .A(A[1]), .Y(n36) );
  NAND2_X0P5R_A9PP84TR_C14 U81 ( .A(\SUMB[1][5] ), .B(\CARRYB[1][4] ), .Y(n39)
         );
  NAND2_X0P5R_A9PP84TR_C14 U82 ( .A(\SUMB[1][5] ), .B(\ab[2][4] ), .Y(n40) );
  NAND2_X0P5R_A9PP84TR_C14 U83 ( .A(\CARRYB[1][4] ), .B(\ab[2][4] ), .Y(n41)
         );
  NAND3_X1N_A9PP84TR_C14 U84 ( .A(n39), .B(n41), .C(n40), .Y(\CARRYB[2][4] )
         );
  NOR2_X2F_A9PP84TR_C14 U85 ( .A(n65), .B(n66), .Y(\CARRYB[1][4] ) );
  XOR2_X0P7N_A9PP84TR_C14 U86 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(
        \SUMB[1][1] ) );
  NAND3_X1R_A9PP84TR_C14 U87 ( .A(n58), .B(n59), .C(n60), .Y(\CARRYB[4][2] )
         );
  BUF_X2N_A9PP84TR_C14 U88 ( .A(B[4]), .Y(n43) );
  XOR2_X2N_A9PP84TR_C14 U89 ( .A(n32), .B(\ab[5][1] ), .Y(n44) );
  XOR2_X1N_A9PP84TR_C14 U90 ( .A(n44), .B(\SUMB[4][2] ), .Y(\SUMB[5][1] ) );
  AND2_X1N_A9PP84TR_C14 U91 ( .A(A[3]), .B(B[2]), .Y(\ab[3][2] ) );
  AND2_X1N_A9PP84TR_C14 U92 ( .A(A[2]), .B(B[2]), .Y(\ab[2][2] ) );
  NAND2XB_X1N_A9PP84TR_C14 U93 ( .BN(n48), .A(n52), .Y(n59) );
  INVP_X0P5N_A9PP84TR_C14 U94 ( .A(\ab[4][2] ), .Y(n48) );
  NOR2_X2F_A9PP84TR_C14 U95 ( .A(n49), .B(n50), .Y(\ab[0][6] ) );
  INVP_X0P5N_A9PP84TR_C14 U96 ( .A(A[0]), .Y(n50) );
  XNOR2_X2N_A9PP84TR_C14 U97 ( .A(n27), .B(\CARRYB[4][2] ), .Y(n61) );
  INV_X2F_A9PP84TR_C14 U98 ( .A(\ab[0][5] ), .Y(n66) );
  INVP_X1F_A9PP84TR_C14 U99 ( .A(n55), .Y(n56) );
  AND2_X2N_A9PP84TR_C14 U100 ( .A(B[2]), .B(n36), .Y(\ab[1][2] ) );
  XNOR2_X1N_A9PP84TR_C14 U101 ( .A(n54), .B(n30), .Y(PRODUCT[6]) );
  NAND2_X0P5R_A9PP84TR_C14 U102 ( .A(n53), .B(\ab[4][2] ), .Y(n60) );
  XOR2_X2N_A9PP84TR_C14 U103 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .Y(n57) );
  AND2_X2N_A9PP84TR_C14 U104 ( .A(B[5]), .B(A[0]), .Y(\ab[0][5] ) );
  INVP_X0P5N_A9PP84TR_C14 U105 ( .A(B[3]), .Y(n55) );
  AND2_X1N_A9PP84TR_C14 U106 ( .A(A[4]), .B(B[2]), .Y(\ab[4][2] ) );
  AND2_X2N_A9PP84TR_C14 U107 ( .A(B[4]), .B(A[0]), .Y(\ab[0][4] ) );
  AND2_X1N_A9PP84TR_C14 U108 ( .A(A[6]), .B(B[0]), .Y(\ab[6][0] ) );
  AND2_X1N_A9PP84TR_C14 U109 ( .A(A[4]), .B(B[1]), .Y(\ab[4][1] ) );
  AND2_X1N_A9PP84TR_C14 U110 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(
        \CARRYB[1][5] ) );
  AND2_X2N_A9PP84TR_C14 U111 ( .A(A[1]), .B(n37), .Y(\ab[1][5] ) );
  AND2_X1N_A9PP84TR_C14 U112 ( .A(n37), .B(A[2]), .Y(\ab[2][5] ) );
  AND2_X1N_A9PP84TR_C14 U113 ( .A(B[7]), .B(A[0]), .Y(\ab[0][7] ) );
  XOR2_X1N_A9PP84TR_C14 U114 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .Y(n62) );
  AND2_X1N_A9PP84TR_C14 U115 ( .A(A[2]), .B(B[1]), .Y(\ab[2][1] ) );
  AND2_X1N_A9PP84TR_C14 U116 ( .A(A[2]), .B(B[0]), .Y(\ab[2][0] ) );
  AND2_X1N_A9PP84TR_C14 U117 ( .A(n43), .B(A[3]), .Y(\ab[3][4] ) );
  AND2_X1N_A9PP84TR_C14 U118 ( .A(A[5]), .B(B[1]), .Y(\ab[5][1] ) );
  AND2_X1N_A9PP84TR_C14 U119 ( .A(A[5]), .B(B[0]), .Y(\ab[5][0] ) );
  AND2_X1N_A9PP84TR_C14 U120 ( .A(n36), .B(B[0]), .Y(\ab[1][0] ) );
  XOR2_X1N_A9PP84TR_C14 U121 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1])
         );
  AND2_X0P5N_A9PP84TR_C14 U122 ( .A(A[4]), .B(B[0]), .Y(\ab[4][0] ) );
  AND2_X0P5N_A9PP84TR_C14 U123 ( .A(A[3]), .B(B[0]), .Y(\ab[3][0] ) );
  NOR2_X2N_A9PP84TR_C14 U124 ( .A(n63), .B(n64), .Y(\CARRYB[1][0] ) );
  INV_X2N_A9PP84TR_C14 U125 ( .A(\ab[1][0] ), .Y(n63) );
  INV_X2N_A9PP84TR_C14 U126 ( .A(\ab[0][1] ), .Y(n64) );
  INV_X2N_A9PP84TR_C14 U127 ( .A(\ab[1][4] ), .Y(n65) );
  AND2_X1N_A9PP84TR_C14 U128 ( .A(n56), .B(A[4]), .Y(\ab[4][3] ) );
  AND2_X1N_A9PP84TR_C14 U129 ( .A(A[3]), .B(n56), .Y(\ab[3][3] ) );
  AND2_X0P7N_A9PP84TR_C14 U130 ( .A(B[0]), .B(A[0]), .Y(PRODUCT[0]) );
  AND2_X1N_A9PP84TR_C14 U131 ( .A(A[2]), .B(n43), .Y(\ab[2][4] ) );
endmodule


module multiplier_trunc ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  output [7:0] y;
  wire   n1;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7;

  multiplier_trunc_DW02_mult_0 mult_621 ( .A(a), .B(b), .TC(n1), .PRODUCT({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, y}) );
  TIELO_X1N_A9PP84TR_C14 U1 ( .Y(n1) );
endmodule


module shiftright ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  output [7:0] y;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35;

  NAND2XB_X0P7N_A9PP84TR_C14 U1 ( .BN(a[7]), .A(n3), .Y(n14) );
  NAND3_X0P5R_A9PP84TR_C14 U2 ( .A(b[2]), .B(a[7]), .C(n29), .Y(n30) );
  OAI2XB1_X1N_A9PP84TR_C14 U3 ( .A1N(a[5]), .A0(n26), .B0(n21), .Y(n28) );
  OAI2XB1_X2N_A9PP84TR_C14 U4 ( .A1N(b[2]), .A0(n32), .B0(n11), .Y(y[0]) );
  OAI2XB1_X2N_A9PP84TR_C14 U5 ( .A1N(b[2]), .A0(n34), .B0(n23), .Y(y[2]) );
  OAI2XB1_X2N_A9PP84TR_C14 U6 ( .A1N(b[2]), .A0(n33), .B0(n19), .Y(y[1]) );
  NAND2XB_X2N_A9PP84TR_C14 U7 ( .BN(b[2]), .A(n3), .Y(n26) );
  OR2_X1N_A9PP84TR_C14 U8 ( .A(n3), .B(b[2]), .Y(n35) );
  INV_X3F_A9PP84TR_C14 U9 ( .A(n2), .Y(n1) );
  NOR2_X0P5F_A9PP84TR_C14 U10 ( .A(b[2]), .B(n32), .Y(y[4]) );
  NAND2XB_X0P5N_A9PP84TR_C14 U11 ( .BN(n20), .A(n4), .Y(n34) );
  INV_X2R_A9PP84TR_C14 U12 ( .A(n4), .Y(n3) );
  MXIT2_X0P5N_A9PP84TR_C14 U13 ( .A(n10), .B(n18), .S0(n1), .Y(n11) );
  OAI2XB1_X2N_A9PP84TR_C14 U14 ( .A1N(a[4]), .A0(n26), .B0(n17), .Y(n22) );
  OAI21_X1N_A9PP84TR_C14 U15 ( .A0(n26), .A1(n9), .B0(n8), .Y(n18) );
  NAND2_X0P5R_A9PP84TR_C14 U16 ( .A(a[4]), .B(n24), .Y(n25) );
  OR2_X1N_A9PP84TR_C14 U17 ( .A(n1), .B(n3), .Y(n12) );
  NAND2_X0P5R_A9PP84TR_C14 U18 ( .A(a[1]), .B(n24), .Y(n8) );
  INV_X2N_A9PP84TR_C14 U19 ( .A(b[1]), .Y(n4) );
  MXIT2_X0P5N_A9PP84TR_C14 U20 ( .A(n18), .B(n22), .S0(n1), .Y(n19) );
  MXIT2_X0P5N_A9PP84TR_C14 U21 ( .A(n22), .B(n28), .S0(n1), .Y(n23) );
  MXIT2_X0P5N_A9PP84TR_C14 U22 ( .A(a[6]), .B(a[7]), .S0(n1), .Y(n20) );
  OAI21_X0P7N_A9PP84TR_C14 U23 ( .A0(a[4]), .A1(n12), .B0(n6), .Y(n32) );
  MXIT2_X0P5N_A9PP84TR_C14 U24 ( .A(n5), .B(n20), .S0(n3), .Y(n6) );
  INV_X2N_A9PP84TR_C14 U25 ( .A(b[0]), .Y(n2) );
  MXIT2_X0P5N_A9PP84TR_C14 U26 ( .A(n28), .B(n27), .S0(n1), .Y(n31) );
  NOR2_X0P5F_A9PP84TR_C14 U27 ( .A(b[2]), .B(n33), .Y(y[5]) );
  NOR2_X0P5F_A9PP84TR_C14 U28 ( .A(b[2]), .B(n34), .Y(y[6]) );
  NOR3BB_X0P5N_A9PP84TR_C14 U29 ( .AN(a[7]), .BN(n2), .C(n35), .Y(y[7]) );
  NAND2_X0P5R_A9PP84TR_C14 U30 ( .A(a[0]), .B(n24), .Y(n7) );
  NOR2B_X1N_A9PP84TR_C14 U31 ( .AN(n1), .B(a[5]), .Y(n5) );
  INV_X1P5N_A9PP84TR_C14 U32 ( .A(n35), .Y(n24) );
  OAI2XB1_X0P7N_A9PP84TR_C14 U33 ( .A1N(a[2]), .A0(n26), .B0(n7), .Y(n10) );
  INV_X2N_A9PP84TR_C14 U34 ( .A(a[3]), .Y(n9) );
  INV_X1P5N_A9PP84TR_C14 U35 ( .A(n12), .Y(n29) );
  INV_X1P5N_A9PP84TR_C14 U36 ( .A(a[5]), .Y(n13) );
  NAND2_X1N_A9PP84TR_C14 U37 ( .A(n29), .B(n13), .Y(n16) );
  OAI2XB1_X0P7N_A9PP84TR_C14 U38 ( .A1N(a[6]), .A0(n3), .B0(n1), .Y(n15) );
  NAND3_X1N_A9PP84TR_C14 U39 ( .A(n16), .B(n15), .C(n14), .Y(n33) );
  NAND2_X1N_A9PP84TR_C14 U40 ( .A(a[2]), .B(n24), .Y(n17) );
  NAND2_X1N_A9PP84TR_C14 U41 ( .A(a[3]), .B(n24), .Y(n21) );
  OAI2XB1_X0P7N_A9PP84TR_C14 U42 ( .A1N(a[6]), .A0(n26), .B0(n25), .Y(n27) );
  NAND2_X1N_A9PP84TR_C14 U43 ( .A(n31), .B(n30), .Y(y[3]) );
endmodule


module shiftleft ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  output [7:0] y;
  wire   \sll_628/ML_int[3][0] , \sll_628/ML_int[3][1] ,
         \sll_628/ML_int[3][2] , \sll_628/ML_int[3][3] ,
         \sll_628/ML_int[3][4] , \sll_628/ML_int[3][5] ,
         \sll_628/ML_int[3][6] , \sll_628/ML_int[3][7] , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29;
  assign y[0] = \sll_628/ML_int[3][0] ;
  assign y[1] = \sll_628/ML_int[3][1] ;
  assign y[2] = \sll_628/ML_int[3][2] ;
  assign y[3] = \sll_628/ML_int[3][3] ;
  assign y[4] = \sll_628/ML_int[3][4] ;
  assign y[5] = \sll_628/ML_int[3][5] ;
  assign y[6] = \sll_628/ML_int[3][6] ;
  assign y[7] = \sll_628/ML_int[3][7] ;

  INVP_X0P5N_A9PP84TR_C14 U1 ( .A(b[2]), .Y(n4) );
  INV_X2R_A9PP84TR_C14 U2 ( .A(b[1]), .Y(n6) );
  OAI21_X0P5N_A9PP84TR_C14 U3 ( .A0(n1), .A1(n4), .B0(n23), .Y(
        \sll_628/ML_int[3][6] ) );
  AOI21_X0P7N_A9PP84TR_C14 U4 ( .A0(n22), .A1(n2), .B0(n21), .Y(n23) );
  NOR2_X1F_A9PP84TR_C14 U5 ( .A(n9), .B(n26), .Y(n10) );
  MXT2_X1N_A9PP84TR_C14 U6 ( .A(n9), .B(n8), .S0(n5), .Y(n1) );
  OR2_X2N_A9PP84TR_C14 U7 ( .A(n3), .B(n5), .Y(n24) );
  INV_X2R_A9PP84TR_C14 U8 ( .A(n4), .Y(n3) );
  AO1B2_X1N_A9PP84TR_C14 U9 ( .B0(n13), .B1(n2), .A0N(n12), .Y(
        \sll_628/ML_int[3][4] ) );
  AOI31_X0P5N_A9PP84TR_C14 U10 ( .A0(n3), .A1(n11), .A2(n6), .B0(n10), .Y(n12)
         );
  INV_X2R_A9PP84TR_C14 U11 ( .A(n6), .Y(n5) );
  NOR2_X0P5F_A9PP84TR_C14 U12 ( .A(n27), .B(n24), .Y(n19) );
  MXIT2_X0P5N_A9PP84TR_C14 U13 ( .A(n14), .B(n15), .S0(n5), .Y(n29) );
  NAND2_X0P5R_A9PP84TR_C14 U14 ( .A(n16), .B(n3), .Y(n17) );
  NOR2_X0P5F_A9PP84TR_C14 U15 ( .A(n14), .B(n26), .Y(n18) );
  NOR2_X0P5F_A9PP84TR_C14 U16 ( .A(n5), .B(n15), .Y(n16) );
  NOR2_X0P5F_A9PP84TR_C14 U17 ( .A(n8), .B(n24), .Y(\sll_628/ML_int[3][0] ) );
  NOR2_X0P5F_A9PP84TR_C14 U18 ( .A(n15), .B(n24), .Y(\sll_628/ML_int[3][1] )
         );
  MXT2_X0P5N_A9PP84TR_C14 U19 ( .A(a[4]), .B(a[3]), .S0(b[0]), .Y(n2) );
  MXIT2_X0P5N_A9PP84TR_C14 U20 ( .A(a[6]), .B(a[5]), .S0(b[0]), .Y(n20) );
  MXIT2_X0P5N_A9PP84TR_C14 U21 ( .A(a[3]), .B(a[2]), .S0(b[0]), .Y(n14) );
  MXIT2_X0P5N_A9PP84TR_C14 U22 ( .A(a[5]), .B(a[4]), .S0(b[0]), .Y(n27) );
  NOR2_X1F_A9PP84TR_C14 U23 ( .A(n20), .B(n24), .Y(n21) );
  OAI22_X0P5N_A9PP84TR_C14 U24 ( .A0(n27), .A1(n26), .B0(n25), .B1(n24), .Y(
        n28) );
  MXIT2_X0P5N_A9PP84TR_C14 U25 ( .A(a[7]), .B(a[6]), .S0(b[0]), .Y(n25) );
  NAND2B_X0P7N_A9PP84TR_C14 U26 ( .AN(b[0]), .B(a[0]), .Y(n8) );
  MXIT2_X0P5N_A9PP84TR_C14 U27 ( .A(a[1]), .B(a[0]), .S0(b[0]), .Y(n15) );
  MXIT2_X0P5N_A9PP84TR_C14 U28 ( .A(a[2]), .B(a[1]), .S0(b[0]), .Y(n9) );
  NOR2_X1N_A9PP84TR_C14 U29 ( .A(n3), .B(n1), .Y(\sll_628/ML_int[3][2] ) );
  INV_X1P5N_A9PP84TR_C14 U30 ( .A(n29), .Y(n7) );
  NOR2_X1N_A9PP84TR_C14 U31 ( .A(n3), .B(n7), .Y(\sll_628/ML_int[3][3] ) );
  INV_X1P5N_A9PP84TR_C14 U32 ( .A(n24), .Y(n13) );
  INV_X1P5N_A9PP84TR_C14 U33 ( .A(n8), .Y(n11) );
  NAND2B_X1N_A9PP84TR_C14 U34 ( .AN(n3), .B(n5), .Y(n26) );
  NAND3BB_X2N_A9PP84TR_C14 U35 ( .AN(n19), .BN(n18), .C(n17), .Y(
        \sll_628/ML_int[3][5] ) );
  INV_X1P5N_A9PP84TR_C14 U36 ( .A(n26), .Y(n22) );
  AO21_X1N_A9PP84TR_C14 U37 ( .A0(n3), .A1(n29), .B0(n28), .Y(
        \sll_628/ML_int[3][7] ) );
endmodule


module equal ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  output [7:0] y;
  wire   \*Logic0* , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  assign y[1] = \*Logic0* ;
  assign y[2] = \*Logic0* ;
  assign y[3] = \*Logic0* ;
  assign y[4] = \*Logic0* ;
  assign y[5] = \*Logic0* ;
  assign y[6] = \*Logic0* ;
  assign y[7] = \*Logic0* ;

  NAND4_X0P5R_A9PP84TR_C14 U2 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2_X0P7N_A9PP84TR_C14 U3 ( .A(b[2]), .B(a[2]), .Y(n5) );
  NOR2_X0P7F_A9PP84TR_C14 U4 ( .A(n10), .B(n9), .Y(y[0]) );
  NAND4_X0P7R_A9PP84TR_C14 U5 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  TIELO_X1N_A9PP84TR_C14 U6 ( .Y(\*Logic0* ) );
  XNOR2_X0P7N_A9PP84TR_C14 U7 ( .A(b[3]), .B(a[3]), .Y(n3) );
  XNOR2_X0P7N_A9PP84TR_C14 U8 ( .A(b[5]), .B(a[5]), .Y(n1) );
  XNOR2_X0P7N_A9PP84TR_C14 U9 ( .A(b[4]), .B(a[4]), .Y(n4) );
  XNOR2_X1N_A9PP84TR_C14 U10 ( .A(b[1]), .B(a[1]), .Y(n8) );
  XNOR2_X0P7N_A9PP84TR_C14 U11 ( .A(b[7]), .B(a[7]), .Y(n6) );
  XNOR2_X0P7N_A9PP84TR_C14 U12 ( .A(b[6]), .B(a[6]), .Y(n2) );
  XNOR2_X1N_A9PP84TR_C14 U13 ( .A(b[0]), .B(a[0]), .Y(n7) );
endmodule


module greater ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  output [7:0] y;
  wire   \*Logic0* , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25;
  assign y[1] = \*Logic0* ;
  assign y[2] = \*Logic0* ;
  assign y[3] = \*Logic0* ;
  assign y[4] = \*Logic0* ;
  assign y[5] = \*Logic0* ;
  assign y[6] = \*Logic0* ;
  assign y[7] = \*Logic0* ;

  INVP_X0P5N_A9PP84TR_C14 U2 ( .A(b[2]), .Y(n2) );
  AOI22_X0P5N_A9PP84TR_C14 U3 ( .A0(a[3]), .A1(n8), .B0(a[2]), .B1(n2), .Y(n9)
         );
  AOI22_X0P5N_A9PP84TR_C14 U4 ( .A0(a[6]), .A1(n21), .B0(n20), .B1(n19), .Y(
        n23) );
  INVP_X1F_A9PP84TR_C14 U5 ( .A(b[3]), .Y(n8) );
  INVP_X0P7R_A9PP84TR_C14 U6 ( .A(a[5]), .Y(n6) );
  INV_X1P5F_A9PP84TR_C14 U7 ( .A(b[6]), .Y(n21) );
  OAI211_X0P5N_A9PP84TR_C14 U8 ( .A0(a[1]), .A1(n3), .B0(n1), .C0(a[0]), .Y(
        n11) );
  NOR2_X0P5F_A9PP84TR_C14 U9 ( .A(a[4]), .B(n7), .Y(n15) );
  NOR2_X0P5F_A9PP84TR_C14 U10 ( .A(a[3]), .B(n8), .Y(n14) );
  NAND3BB_X1N_A9PP84TR_C14 U11 ( .AN(n18), .BN(n17), .C(n16), .Y(n19) );
  NOR2_X0P5F_A9PP84TR_C14 U12 ( .A(a[6]), .B(n21), .Y(n25) );
  NAND2_X0P5R_A9PP84TR_C14 U13 ( .A(n6), .B(b[5]), .Y(n20) );
  NAND3BB_X0P5N_A9PP84TR_C14 U14 ( .AN(n15), .BN(n14), .C(n13), .Y(n16) );
  NOR2_X0P5F_A9PP84TR_C14 U15 ( .A(n2), .B(a[2]), .Y(n10) );
  INV_X2N_A9PP84TR_C14 U16 ( .A(b[0]), .Y(n1) );
  OAI31_X1N_A9PP84TR_C14 U17 ( .A0(n25), .A1(n24), .A2(n23), .B0(n22), .Y(y[0]) );
  NAND2_X0P5R_A9PP84TR_C14 U18 ( .A(n4), .B(a[7]), .Y(n22) );
  AO21A1AI2_X0P7N_A9PP84TR_C14 U19 ( .A0(n12), .A1(n11), .B0(n10), .C0(n9), 
        .Y(n13) );
  INV_X2N_A9PP84TR_C14 U20 ( .A(b[1]), .Y(n3) );
  NAND2_X0P5R_A9PP84TR_C14 U21 ( .A(n3), .B(a[1]), .Y(n12) );
  NOR2_X0P5F_A9PP84TR_C14 U22 ( .A(a[7]), .B(n4), .Y(n24) );
  TIELO_X1N_A9PP84TR_C14 U23 ( .Y(\*Logic0* ) );
  NOR2_X0P7N_A9PP84TR_C14 U24 ( .A(b[5]), .B(n6), .Y(n17) );
  NOR2_X0P5F_A9PP84TR_C14 U25 ( .A(n5), .B(b[4]), .Y(n18) );
  INVP_X0P5N_A9PP84TR_C14 U26 ( .A(b[4]), .Y(n7) );
  INVP_X0P5N_A9PP84TR_C14 U27 ( .A(b[7]), .Y(n4) );
  INV_X2N_A9PP84TR_C14 U28 ( .A(a[4]), .Y(n5) );
endmodule


module greater_oreq ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  output [7:0] y;
  wire   \*Logic0* , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29;
  assign y[1] = \*Logic0* ;
  assign y[2] = \*Logic0* ;
  assign y[3] = \*Logic0* ;
  assign y[4] = \*Logic0* ;
  assign y[5] = \*Logic0* ;
  assign y[6] = \*Logic0* ;
  assign y[7] = \*Logic0* ;

  INV_X2R_A9PP84TR_C14 U2 ( .A(a[7]), .Y(n22) );
  NAND2_X0P5R_A9PP84TR_C14 U3 ( .A(b[2]), .B(n8), .Y(n9) );
  NOR2_X0P5F_A9PP84TR_C14 U4 ( .A(b[2]), .B(n8), .Y(n13) );
  OAI21_X0P7N_A9PP84TR_C14 U5 ( .A0(n11), .A1(n10), .B0(n9), .Y(n12) );
  NAND3BB_X1N_A9PP84TR_C14 U6 ( .AN(n20), .BN(n19), .C(n18), .Y(n26) );
  INV_X1P5R_A9PP84TR_C14 U7 ( .A(a[2]), .Y(n8) );
  INVP_X1R_A9PP84TR_C14 U8 ( .A(a[5]), .Y(n2) );
  INVP_X0P7R_A9PP84TR_C14 U9 ( .A(a[6]), .Y(n21) );
  INVP_X0P7R_A9PP84TR_C14 U10 ( .A(a[1]), .Y(n7) );
  AOI22BB_X0P5N_A9PP84TR_C14 U11 ( .A0(b[1]), .A1(n7), .B0N(n1), .B1N(a[0]), 
        .Y(n11) );
  NOR2_X0P5F_A9PP84TR_C14 U12 ( .A(b[1]), .B(n7), .Y(n10) );
  INV_X2N_A9PP84TR_C14 U13 ( .A(b[0]), .Y(n1) );
  NOR2_X0P5F_A9PP84TR_C14 U14 ( .A(n2), .B(b[5]), .Y(n20) );
  NAND3BB_X1N_A9PP84TR_C14 U15 ( .AN(n17), .BN(n16), .C(n15), .Y(n18) );
  NAND2_X0P5R_A9PP84TR_C14 U16 ( .A(n27), .B(a[7]), .Y(n28) );
  NAND3BB_X1N_A9PP84TR_C14 U17 ( .AN(n14), .BN(n13), .C(n12), .Y(n15) );
  NOR2_X1R_A9PP84TR_C14 U18 ( .A(a[4]), .B(n4), .Y(n17) );
  NOR2_X1R_A9PP84TR_C14 U19 ( .A(a[3]), .B(n5), .Y(n16) );
  TIELO_X1N_A9PP84TR_C14 U20 ( .Y(\*Logic0* ) );
  INVP_X0P5N_A9PP84TR_C14 U21 ( .A(b[3]), .Y(n5) );
  NOR2_X0P5F_A9PP84TR_C14 U22 ( .A(b[3]), .B(n6), .Y(n14) );
  NAND2_X0P7N_A9PP84TR_C14 U23 ( .A(b[5]), .B(n2), .Y(n25) );
  AO21A1AI2_X2N_A9PP84TR_C14 U24 ( .A0(n26), .A1(n25), .B0(n24), .C0(n23), .Y(
        n29) );
  NOR2_X0P5F_A9PP84TR_C14 U25 ( .A(n3), .B(b[4]), .Y(n19) );
  INVP_X0P5N_A9PP84TR_C14 U26 ( .A(b[4]), .Y(n4) );
  INVP_X0P5N_A9PP84TR_C14 U27 ( .A(b[7]), .Y(n27) );
  NAND2_X0P5R_A9PP84TR_C14 U28 ( .A(b[7]), .B(n22), .Y(n23) );
  AO21A1AI2_X0P5N_A9PP84TR_C14 U29 ( .A0(b[6]), .A1(n21), .B0(n29), .C0(n28), 
        .Y(y[0]) );
  NOR2_X0P5F_A9PP84TR_C14 U30 ( .A(b[6]), .B(n21), .Y(n24) );
  INV_X2N_A9PP84TR_C14 U31 ( .A(a[4]), .Y(n3) );
  INV_X2N_A9PP84TR_C14 U32 ( .A(a[3]), .Y(n6) );
endmodule


module diff ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  output [7:0] y;
  wire   \*Logic0* , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  assign y[1] = \*Logic0* ;
  assign y[2] = \*Logic0* ;
  assign y[3] = \*Logic0* ;
  assign y[4] = \*Logic0* ;
  assign y[5] = \*Logic0* ;
  assign y[6] = \*Logic0* ;
  assign y[7] = \*Logic0* ;

  XOR2_X0P7N_A9PP84TR_C14 U2 ( .A(b[1]), .B(a[1]), .Y(n3) );
  XOR2_X0P7N_A9PP84TR_C14 U3 ( .A(b[2]), .B(a[2]), .Y(n8) );
  NAND4B_X1N_A9PP84TR_C14 U4 ( .AN(n1), .B(n12), .C(n11), .D(n10), .Y(y[0]) );
  XNOR2_X0P7N_A9PP84TR_C14 U5 ( .A(b[0]), .B(a[0]), .Y(n2) );
  NOR2B_X1N_A9PP84TR_C14 U6 ( .AN(n2), .B(n3), .Y(n13) );
  INV_X2N_A9PP84TR_C14 U7 ( .A(n13), .Y(n1) );
  NOR2_X1R_A9PP84TR_C14 U8 ( .A(n5), .B(n4), .Y(n12) );
  NOR2_X1R_A9PP84TR_C14 U9 ( .A(n7), .B(n6), .Y(n11) );
  NOR2_X1R_A9PP84TR_C14 U10 ( .A(n9), .B(n8), .Y(n10) );
  TIELO_X1N_A9PP84TR_C14 U11 ( .Y(\*Logic0* ) );
  XOR2_X0P7N_A9PP84TR_C14 U12 ( .A(b[3]), .B(a[3]), .Y(n9) );
  XOR2_X0P7N_A9PP84TR_C14 U13 ( .A(b[5]), .B(a[5]), .Y(n7) );
  XOR2_X0P7N_A9PP84TR_C14 U14 ( .A(b[4]), .B(a[4]), .Y(n6) );
  XOR2_X0P7N_A9PP84TR_C14 U15 ( .A(b[7]), .B(a[7]), .Y(n5) );
  XOR2_X0P7N_A9PP84TR_C14 U16 ( .A(b[6]), .B(a[6]), .Y(n4) );
endmodule


module mux12 ( d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, s, y );
  input [7:0] d0;
  input [7:0] d1;
  input [7:0] d2;
  input [7:0] d3;
  input [7:0] d4;
  input [7:0] d5;
  input [7:0] d6;
  input [7:0] d7;
  input [7:0] d8;
  input [7:0] d9;
  input [7:0] d10;
  input [7:0] d11;
  input [3:0] s;
  output [7:0] y;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176;

  NOR4BB_X0P5N_A9PP84TR_C14 U1 ( .AN(n148), .BN(n147), .C(n146), .D(n145), .Y(
        n149) );
  NAND2_X1R_A9PP84TR_C14 U2 ( .A(n35), .B(n8), .Y(n139) );
  NOR2_X0P7F_A9PP84TR_C14 U3 ( .A(n132), .B(n123), .Y(n126) );
  AOI22_X0P5N_A9PP84TR_C14 U4 ( .A0(d3[6]), .A1(n7), .B0(d1[6]), .B1(n5), .Y(
        n136) );
  AOI22_X0P5N_A9PP84TR_C14 U5 ( .A0(d6[6]), .A1(n153), .B0(d4[6]), .B1(n154), 
        .Y(n134) );
  OAI22_X0P7F_A9PP84TR_C14 U6 ( .A0(n141), .A1(n63), .B0(n138), .B1(n62), .Y(
        n64) );
  OAI22_X0P7F_A9PP84TR_C14 U7 ( .A0(n141), .A1(n25), .B0(n138), .B1(n24), .Y(
        n26) );
  OAI22_X0P5N_A9PP84TR_C14 U8 ( .A0(n141), .A1(n46), .B0(n138), .B1(n45), .Y(
        n47) );
  NAND2_X1F_A9PP84TR_C14 U9 ( .A(n163), .B(n162), .Y(n175) );
  AOI211_X0P7N_A9PP84TR_C14 U10 ( .A0(d1[4]), .A1(n5), .B0(n101), .C0(n100), 
        .Y(n107) );
  AOI211_X0P7N_A9PP84TR_C14 U11 ( .A0(d1[5]), .A1(n5), .B0(n122), .C0(n121), 
        .Y(n128) );
  OR4_X0P7N_A9PP84TR_C14 U12 ( .A(n175), .B(n174), .C(n173), .D(n172), .Y(n1)
         );
  NAND2_X1N_A9PP84TR_C14 U13 ( .A(n8), .B(n6), .Y(n131) );
  INVP_X1F_A9PP84TR_C14 U14 ( .A(n131), .Y(n7) );
  NAND2_X1R_A9PP84TR_C14 U15 ( .A(n34), .B(n6), .Y(n152) );
  INV_X2F_A9PP84TR_C14 U16 ( .A(n152), .Y(n114) );
  AOI211_X2N_A9PP84TR_C14 U17 ( .A0(d7[5]), .A1(n114), .B0(n113), .C0(n112), 
        .Y(n130) );
  INVP_X1R_A9PP84TR_C14 U18 ( .A(d7[6]), .Y(n137) );
  NAND4_X2N_A9PP84TR_C14 U19 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(y[5]) );
  AO211_X1N_A9PP84TR_C14 U20 ( .A0(d7[7]), .A1(n114), .B0(n176), .C0(n1), .Y(
        y[7]) );
  AOI211_X0P5N_A9PP84TR_C14 U21 ( .A0(d1[3]), .A1(n5), .B0(n84), .C0(n83), .Y(
        n90) );
  NAND4BB_X0P7N_A9PP84TR_C14 U22 ( .AN(n9), .BN(n10), .C(n90), .D(n89), .Y(
        y[3]) );
  NAND3BB_X2N_A9PP84TR_C14 U23 ( .AN(n150), .BN(n151), .C(n149), .Y(y[6]) );
  NAND4BB_X0P7N_A9PP84TR_C14 U24 ( .AN(n11), .BN(n12), .C(n74), .D(n73), .Y(
        y[2]) );
  NAND4BB_X0P7N_A9PP84TR_C14 U25 ( .AN(n13), .BN(n14), .C(n57), .D(n56), .Y(
        y[1]) );
  AND2_X1N_A9PP84TR_C14 U26 ( .A(s[1]), .B(s[0]), .Y(n6) );
  NOR2_X0P7F_A9PP84TR_C14 U27 ( .A(n131), .B(n99), .Y(n100) );
  NAND2_X0P7R_A9PP84TR_C14 U28 ( .A(n23), .B(n6), .Y(n138) );
  AOI21_X0P7N_A9PP84TR_C14 U29 ( .A0(d10[4]), .A1(n118), .B0(n97), .Y(n108) );
  NAND4BB_X2N_A9PP84TR_C14 U30 ( .AN(n2), .BN(n3), .C(n40), .D(n39), .Y(y[0])
         );
  NAND2_X0P5R_A9PP84TR_C14 U31 ( .A(n23), .B(n4), .Y(n169) );
  NOR2_X1F_A9PP84TR_C14 U32 ( .A(s[1]), .B(s[0]), .Y(n4) );
  NAND4_X1N_A9PP84TR_C14 U33 ( .A(n159), .B(n158), .C(n157), .D(n156), .Y(n176) );
  NOR2_X1F_A9PP84TR_C14 U34 ( .A(n131), .B(n28), .Y(n29) );
  NOR2_X1F_A9PP84TR_C14 U35 ( .A(s[3]), .B(s[2]), .Y(n8) );
  OAI22_X0P5N_A9PP84TR_C14 U36 ( .A0(n141), .A1(n96), .B0(n138), .B1(n95), .Y(
        n97) );
  AND2_X1N_A9PP84TR_C14 U37 ( .A(n8), .B(n32), .Y(n5) );
  NOR2_X0P5F_A9PP84TR_C14 U38 ( .A(n131), .B(n49), .Y(n50) );
  NOR2_X0P5F_A9PP84TR_C14 U39 ( .A(n131), .B(n66), .Y(n67) );
  NOR2_X0P5F_A9PP84TR_C14 U40 ( .A(n131), .B(n120), .Y(n121) );
  NOR2_X0P7F_A9PP84TR_C14 U41 ( .A(n171), .B(n19), .Y(n20) );
  AOI21_X0P7N_A9PP84TR_C14 U42 ( .A0(d10[5]), .A1(n118), .B0(n117), .Y(n129)
         );
  NAND4_X1N_A9PP84TR_C14 U43 ( .A(n109), .B(n108), .C(n107), .D(n106), .Y(y[4]) );
  AOI22P_X0P5N_A9PP84TR_C14 U44 ( .A0(d4[7]), .A1(n154), .B0(d6[7]), .B1(n153), 
        .Y(n159) );
  AO211_X1N_A9PP84TR_C14 U45 ( .A0(d7[0]), .A1(n114), .B0(n21), .C0(n20), .Y(
        n2) );
  AO21_X1N_A9PP84TR_C14 U46 ( .A0(d10[0]), .A1(n118), .B0(n26), .Y(n3) );
  NAND2_X0P5R_A9PP84TR_C14 U47 ( .A(n4), .B(n34), .Y(n31) );
  NAND2_X0P5R_A9PP84TR_C14 U48 ( .A(n35), .B(n23), .Y(n167) );
  NOR2_X1F_A9PP84TR_C14 U49 ( .A(n169), .B(n17), .Y(n21) );
  NAND2_X0P7R_A9PP84TR_C14 U50 ( .A(n32), .B(n34), .Y(n132) );
  NAND2_X0P5R_A9PP84TR_C14 U51 ( .A(n32), .B(n23), .Y(n171) );
  NAND2_X0P5R_A9PP84TR_C14 U52 ( .A(n35), .B(n34), .Y(n133) );
  NOR2_X1F_A9PP84TR_C14 U53 ( .A(n137), .B(n152), .Y(n150) );
  NOR2_X1F_A9PP84TR_C14 U54 ( .A(n132), .B(n33), .Y(n38) );
  NOR2_X1F_A9PP84TR_C14 U55 ( .A(n133), .B(n36), .Y(n37) );
  NOR2_X1F_A9PP84TR_C14 U56 ( .A(n132), .B(n102), .Y(n105) );
  AOI211_X0P5N_A9PP84TR_C14 U57 ( .A0(d4[3]), .A1(n154), .B0(n88), .C0(n87), 
        .Y(n89) );
  NOR2_X0P5F_A9PP84TR_C14 U58 ( .A(n133), .B(n86), .Y(n87) );
  NOR2_X0P5F_A9PP84TR_C14 U59 ( .A(n132), .B(n85), .Y(n88) );
  AOI211_X0P5N_A9PP84TR_C14 U60 ( .A0(d4[2]), .A1(n154), .B0(n72), .C0(n71), 
        .Y(n73) );
  NOR2_X0P5F_A9PP84TR_C14 U61 ( .A(n133), .B(n70), .Y(n71) );
  NOR2_X0P5F_A9PP84TR_C14 U62 ( .A(n132), .B(n69), .Y(n72) );
  AOI211_X0P5N_A9PP84TR_C14 U63 ( .A0(d4[1]), .A1(n154), .B0(n55), .C0(n54), 
        .Y(n56) );
  NOR2_X0P5F_A9PP84TR_C14 U64 ( .A(n133), .B(n53), .Y(n54) );
  NOR2_X0P5F_A9PP84TR_C14 U65 ( .A(n132), .B(n52), .Y(n55) );
  AND2_X1N_A9PP84TR_C14 U66 ( .A(n7), .B(d3[3]), .Y(n83) );
  NAND2_X0P5R_A9PP84TR_C14 U67 ( .A(d5[7]), .B(n155), .Y(n158) );
  NOR2_X0P5F_A9PP84TR_C14 U68 ( .A(n139), .B(n27), .Y(n30) );
  NOR2_X0P5F_A9PP84TR_C14 U69 ( .A(n139), .B(n48), .Y(n51) );
  NOR2_X0P5F_A9PP84TR_C14 U70 ( .A(n139), .B(n82), .Y(n84) );
  NOR2_X0P5F_A9PP84TR_C14 U71 ( .A(n139), .B(n65), .Y(n68) );
  NOR2_X0P5F_A9PP84TR_C14 U72 ( .A(n139), .B(n98), .Y(n101) );
  NOR2_X0P5F_A9PP84TR_C14 U73 ( .A(n139), .B(n119), .Y(n122) );
  NAND2_X0P5R_A9PP84TR_C14 U74 ( .A(d1[7]), .B(n5), .Y(n156) );
  NAND2_X0P5R_A9PP84TR_C14 U75 ( .A(d3[7]), .B(n7), .Y(n157) );
  NOR2_X0P5F_A9PP84TR_C14 U76 ( .A(n171), .B(n111), .Y(n112) );
  NOR2_X0P5F_A9PP84TR_C14 U77 ( .A(n169), .B(n110), .Y(n113) );
  AOI211_X0P5N_A9PP84TR_C14 U78 ( .A0(d7[4]), .A1(n114), .B0(n94), .C0(n93), 
        .Y(n109) );
  NOR2_X0P5F_A9PP84TR_C14 U79 ( .A(n171), .B(n92), .Y(n93) );
  NOR2_X0P5F_A9PP84TR_C14 U80 ( .A(n169), .B(n91), .Y(n94) );
  AO211_X1N_A9PP84TR_C14 U81 ( .A0(d7[3]), .A1(n114), .B0(n78), .C0(n77), .Y(
        n9) );
  AO21_X1N_A9PP84TR_C14 U82 ( .A0(d10[3]), .A1(n118), .B0(n81), .Y(n10) );
  AO211_X1N_A9PP84TR_C14 U83 ( .A0(d7[2]), .A1(n114), .B0(n61), .C0(n60), .Y(
        n11) );
  AO21_X1N_A9PP84TR_C14 U84 ( .A0(d10[2]), .A1(n118), .B0(n64), .Y(n12) );
  AO211_X1N_A9PP84TR_C14 U85 ( .A0(d7[1]), .A1(n114), .B0(n44), .C0(n43), .Y(
        n13) );
  AO21_X1N_A9PP84TR_C14 U86 ( .A0(d10[1]), .A1(n118), .B0(n47), .Y(n14) );
  OAI22_X0P5N_A9PP84TR_C14 U87 ( .A0(n167), .A1(n142), .B0(n141), .B1(n140), 
        .Y(n146) );
  OAI22P_X0P5N_A9PP84TR_C14 U88 ( .A0(n141), .A1(n80), .B0(n138), .B1(n79), 
        .Y(n81) );
  OAI22P_X0P5N_A9PP84TR_C14 U89 ( .A0(n141), .A1(n116), .B0(n138), .B1(n115), 
        .Y(n117) );
  NAND2_X1R_A9PP84TR_C14 U90 ( .A(d11[7]), .B(n161), .Y(n162) );
  NAND2_X0P5R_A9PP84TR_C14 U91 ( .A(d2[7]), .B(n160), .Y(n163) );
  OAI21P_X0P5N_A9PP84TR_C14 U92 ( .A0(n167), .A1(n166), .B0(n165), .Y(n174) );
  NAND2_X0P5R_A9PP84TR_C14 U93 ( .A(d0[7]), .B(n164), .Y(n165) );
  OAI22_X0P5N_A9PP84TR_C14 U94 ( .A0(n171), .A1(n144), .B0(n169), .B1(n143), 
        .Y(n145) );
  NOR2_X0P5F_A9PP84TR_C14 U95 ( .A(n169), .B(n168), .Y(n173) );
  NOR2_X0P5F_A9PP84TR_C14 U96 ( .A(n171), .B(n170), .Y(n172) );
  NOR2_X0P5F_A9PP84TR_C14 U97 ( .A(n169), .B(n41), .Y(n44) );
  NOR2_X0P5F_A9PP84TR_C14 U98 ( .A(n169), .B(n58), .Y(n61) );
  NOR2_X0P5F_A9PP84TR_C14 U99 ( .A(n169), .B(n75), .Y(n78) );
  NOR2_X0P5F_A9PP84TR_C14 U100 ( .A(n171), .B(n42), .Y(n43) );
  NOR2_X0P5F_A9PP84TR_C14 U101 ( .A(n171), .B(n59), .Y(n60) );
  NOR2_X0P5F_A9PP84TR_C14 U102 ( .A(n171), .B(n76), .Y(n77) );
  NOR2_X0P5F_A9PP84TR_C14 U103 ( .A(n133), .B(n103), .Y(n104) );
  NOR2_X0P5F_A9PP84TR_C14 U104 ( .A(n133), .B(n124), .Y(n125) );
  NAND2B_X1N_A9PP84TR_C14 U105 ( .AN(s[3]), .B(s[2]), .Y(n15) );
  INV_X1P5N_A9PP84TR_C14 U106 ( .A(n15), .Y(n34) );
  NAND2B_X1N_A9PP84TR_C14 U107 ( .AN(s[2]), .B(s[3]), .Y(n16) );
  INV_X1P5N_A9PP84TR_C14 U108 ( .A(n16), .Y(n23) );
  INV_X1P5N_A9PP84TR_C14 U109 ( .A(d8[0]), .Y(n17) );
  NAND2B_X1N_A9PP84TR_C14 U110 ( .AN(s[1]), .B(s[0]), .Y(n18) );
  INV_X1P5N_A9PP84TR_C14 U111 ( .A(n18), .Y(n32) );
  INV_X1P5N_A9PP84TR_C14 U112 ( .A(d9[0]), .Y(n19) );
  NAND2B_X1N_A9PP84TR_C14 U113 ( .AN(s[0]), .B(s[1]), .Y(n22) );
  INV_X1P5N_A9PP84TR_C14 U114 ( .A(n22), .Y(n35) );
  INV_X1P5N_A9PP84TR_C14 U115 ( .A(n167), .Y(n118) );
  AO22_X1N_A9PP84TR_C14 U116 ( .A0(s[3]), .A1(s[2]), .B0(n8), .B1(n4), .Y(n164) );
  INV_X1P5N_A9PP84TR_C14 U117 ( .A(n164), .Y(n141) );
  INV_X1P5N_A9PP84TR_C14 U118 ( .A(d0[0]), .Y(n25) );
  INV_X1P5N_A9PP84TR_C14 U119 ( .A(d11[0]), .Y(n24) );
  INV_X1P5N_A9PP84TR_C14 U120 ( .A(d2[0]), .Y(n27) );
  INV_X1P5N_A9PP84TR_C14 U121 ( .A(d3[0]), .Y(n28) );
  AOI211_X2N_A9PP84TR_C14 U122 ( .A0(d1[0]), .A1(n5), .B0(n30), .C0(n29), .Y(
        n40) );
  INV_X1P5N_A9PP84TR_C14 U123 ( .A(n31), .Y(n154) );
  INV_X1P5N_A9PP84TR_C14 U124 ( .A(d5[0]), .Y(n33) );
  INV_X1P5N_A9PP84TR_C14 U125 ( .A(d6[0]), .Y(n36) );
  AOI211_X2N_A9PP84TR_C14 U126 ( .A0(d4[0]), .A1(n154), .B0(n38), .C0(n37), 
        .Y(n39) );
  INV_X1P5N_A9PP84TR_C14 U127 ( .A(d8[1]), .Y(n41) );
  INV_X1P5N_A9PP84TR_C14 U128 ( .A(d9[1]), .Y(n42) );
  INV_X1P5N_A9PP84TR_C14 U129 ( .A(d0[1]), .Y(n46) );
  INV_X1P5N_A9PP84TR_C14 U130 ( .A(d11[1]), .Y(n45) );
  INV_X1P5N_A9PP84TR_C14 U131 ( .A(d2[1]), .Y(n48) );
  INV_X1P5N_A9PP84TR_C14 U132 ( .A(d3[1]), .Y(n49) );
  AOI211_X2N_A9PP84TR_C14 U133 ( .A0(d1[1]), .A1(n5), .B0(n51), .C0(n50), .Y(
        n57) );
  INV_X1P5N_A9PP84TR_C14 U134 ( .A(d5[1]), .Y(n52) );
  INV_X1P5N_A9PP84TR_C14 U135 ( .A(d6[1]), .Y(n53) );
  INV_X1P5N_A9PP84TR_C14 U136 ( .A(d8[2]), .Y(n58) );
  INV_X1P5N_A9PP84TR_C14 U137 ( .A(d9[2]), .Y(n59) );
  INV_X1P5N_A9PP84TR_C14 U138 ( .A(d0[2]), .Y(n63) );
  INV_X1P5N_A9PP84TR_C14 U139 ( .A(d11[2]), .Y(n62) );
  INV_X1P5N_A9PP84TR_C14 U140 ( .A(d2[2]), .Y(n65) );
  INV_X1P5N_A9PP84TR_C14 U141 ( .A(d3[2]), .Y(n66) );
  AOI211_X2N_A9PP84TR_C14 U142 ( .A0(d1[2]), .A1(n5), .B0(n68), .C0(n67), .Y(
        n74) );
  INV_X1P5N_A9PP84TR_C14 U143 ( .A(d5[2]), .Y(n69) );
  INV_X1P5N_A9PP84TR_C14 U144 ( .A(d6[2]), .Y(n70) );
  INV_X1P5N_A9PP84TR_C14 U145 ( .A(d8[3]), .Y(n75) );
  INV_X1P5N_A9PP84TR_C14 U146 ( .A(d9[3]), .Y(n76) );
  INV_X1P5N_A9PP84TR_C14 U147 ( .A(d0[3]), .Y(n80) );
  INV_X1P5N_A9PP84TR_C14 U148 ( .A(d11[3]), .Y(n79) );
  INV_X1P5N_A9PP84TR_C14 U149 ( .A(d2[3]), .Y(n82) );
  INV_X1P5N_A9PP84TR_C14 U150 ( .A(d5[3]), .Y(n85) );
  INV_X1P5N_A9PP84TR_C14 U151 ( .A(d6[3]), .Y(n86) );
  INV_X1P5N_A9PP84TR_C14 U152 ( .A(d8[4]), .Y(n91) );
  INV_X1P5N_A9PP84TR_C14 U153 ( .A(d9[4]), .Y(n92) );
  INV_X1P5N_A9PP84TR_C14 U154 ( .A(d0[4]), .Y(n96) );
  INV_X1P5N_A9PP84TR_C14 U155 ( .A(d11[4]), .Y(n95) );
  INV_X1P5N_A9PP84TR_C14 U156 ( .A(d2[4]), .Y(n98) );
  INV_X1P5N_A9PP84TR_C14 U157 ( .A(d3[4]), .Y(n99) );
  INV_X1P5N_A9PP84TR_C14 U158 ( .A(d5[4]), .Y(n102) );
  INV_X1P5N_A9PP84TR_C14 U159 ( .A(d6[4]), .Y(n103) );
  AOI211_X2N_A9PP84TR_C14 U160 ( .A0(d4[4]), .A1(n154), .B0(n105), .C0(n104), 
        .Y(n106) );
  INV_X1P5N_A9PP84TR_C14 U161 ( .A(d8[5]), .Y(n110) );
  INV_X1P5N_A9PP84TR_C14 U162 ( .A(d9[5]), .Y(n111) );
  INV_X1P5N_A9PP84TR_C14 U163 ( .A(d0[5]), .Y(n116) );
  INV_X1P5N_A9PP84TR_C14 U164 ( .A(d11[5]), .Y(n115) );
  INV_X1P5N_A9PP84TR_C14 U165 ( .A(d2[5]), .Y(n119) );
  INV_X1P5N_A9PP84TR_C14 U166 ( .A(d3[5]), .Y(n120) );
  INV_X1P5N_A9PP84TR_C14 U167 ( .A(d5[5]), .Y(n123) );
  INV_X1P5N_A9PP84TR_C14 U168 ( .A(d6[5]), .Y(n124) );
  AOI211_X2N_A9PP84TR_C14 U169 ( .A0(d4[5]), .A1(n154), .B0(n126), .C0(n125), 
        .Y(n127) );
  INV_X1P5N_A9PP84TR_C14 U170 ( .A(n132), .Y(n155) );
  NAND2_X1N_A9PP84TR_C14 U171 ( .A(d5[6]), .B(n155), .Y(n135) );
  INV_X1P5N_A9PP84TR_C14 U172 ( .A(n133), .Y(n153) );
  NAND3_X1N_A9PP84TR_C14 U173 ( .A(n136), .B(n135), .C(n134), .Y(n151) );
  INV_X1P5N_A9PP84TR_C14 U174 ( .A(n138), .Y(n161) );
  NAND2_X1N_A9PP84TR_C14 U175 ( .A(d11[6]), .B(n161), .Y(n148) );
  INV_X1P5N_A9PP84TR_C14 U176 ( .A(n139), .Y(n160) );
  NAND2_X1N_A9PP84TR_C14 U177 ( .A(d2[6]), .B(n160), .Y(n147) );
  INV_X1P5N_A9PP84TR_C14 U178 ( .A(d10[6]), .Y(n142) );
  INV_X1P5N_A9PP84TR_C14 U179 ( .A(d0[6]), .Y(n140) );
  INV_X1P5N_A9PP84TR_C14 U180 ( .A(d9[6]), .Y(n144) );
  INV_X1P5N_A9PP84TR_C14 U181 ( .A(d8[6]), .Y(n143) );
  INV_X2N_A9PP84TR_C14 U182 ( .A(d10[7]), .Y(n166) );
  INV_X2N_A9PP84TR_C14 U183 ( .A(d8[7]), .Y(n168) );
  INV_X2N_A9PP84TR_C14 U184 ( .A(d9[7]), .Y(n170) );
endmodule


module zerodetect_WIDTH8 ( a, y );
  input [7:0] a;
  output y;
  wire   n1, n2, n3;

  NOR2XB_X2N_A9PP84TR_C14 U1 ( .BN(n1), .A(a[6]), .Y(n3) );
  NOR3BB_X1N_A9PP84TR_C14 U2 ( .AN(n3), .BN(n2), .C(a[7]), .Y(y) );
  NOR3_X0P5F_A9PP84TR_C14 U3 ( .A(a[2]), .B(a[1]), .C(a[0]), .Y(n1) );
  NOR3_X1N_A9PP84TR_C14 U4 ( .A(a[5]), .B(a[4]), .C(a[3]), .Y(n2) );
endmodule


module alu_WIDTH8 ( a, b, alucontrol, result, zero );
  input [7:0] a;
  input [7:0] b;
  input [4:0] alucontrol;
  output [7:0] result;
  output zero;
  wire   \diffresult[1] , n14, \equalresult[0] , \greaterresult[0] ,
         \greater_oreqresult[0] , \diffresult[0] , n1, n2, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13;
  wire   [7:0] andresult;
  wire   [7:0] orresult;
  wire   [7:0] xorresult;
  wire   [7:0] b2;
  wire   [7:0] sumresult;
  wire   [7:0] multresult;
  wire   [7:0] shiftrightresult;
  wire   [7:0] shiftleftresult;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27;

  andN andblock ( .a({a[7], n11, n10, a[4], n9, a[2], n2, n7}), .b({b[7:6], n4, 
        n8, n1, n13, b[1], n12}), .y(andresult) );
  orN orblock ( .a({a[7], n11, n10, a[4], n9, a[2], n2, n6}), .b({b[7:6], n4, 
        n8, n1, n13, b[1], n12}), .y(orresult) );
  xorN xorblock ( .a({a[7], n11, n10, a[4], n9, a[2], n2, n6}), .b({b[7:6], n4, 
        n8, n1, n13, b[1], n12}), .y(xorresult) );
  condinv binv ( .a({b[7:6], n4, n8, n1, n13, b[1], n12}), .invert(
        alucontrol[4]), .y(b2) );
  adder addblock ( .a({a[7], n11, n10, a[4], n9, a[2], n2, n7}), .b(b2), .cin(
        alucontrol[4]), .y(sumresult) );
  multiplier_trunc multblock ( .a({a[7], n11, n10, a[4], n9, a[2:1], n5}), .b(
        {b[7:3], n13, b[1], n12}), .y(multresult) );
  shiftright shiftrightblock ( .a({a[7], n11, n10, a[4], n9, a[2], n2, n6}), 
        .b({b[7:6], n4, n8, n1, n13, b[1], n12}), .y(shiftrightresult) );
  shiftleft shiftleftblock ( .a({a[7], n11, n10, a[4], n9, a[2], n2, n6}), .b(
        {b[7:6], n4, n8, n1, n13, b[1], n12}), .y(shiftleftresult) );
  equal equalblock ( .a({a[7], n11, n10, a[4], n9, a[2], n2, n7}), .b({b[7:6], 
        n4, n8, n1, n13, b[1], n12}), .y({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, \equalresult[0] })
         );
  greater greaterblock ( .a({a[7], n11, n10, a[4], n9, a[2:1], n7}), .b({
        b[7:6], n4, n8, n1, n13, b[1], n12}), .y({SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, \greaterresult[0] }) );
  greater_oreq greater_oreqblock ( .a({a[7], n11, n10, a[4], n9, a[2:1], n6}), 
        .b({b[7:6], n4, n8, n1, n13, b[1], n12}), .y({SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        \greater_oreqresult[0] }) );
  diff diffblock ( .a({a[7], n11, n10, a[4], n9, a[2], n2, n7}), .b({b[7:6], 
        n4, n8, n1, n13, b[1], n12}), .y({SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, \diffresult[0] })
         );
  mux12 resultmux ( .d0(andresult), .d1(orresult), .d2(xorresult), .d3(
        shiftrightresult), .d4(shiftleftresult), .d5(sumresult), .d6({
        \diffresult[1] , \diffresult[1] , \diffresult[1] , \diffresult[1] , 
        \diffresult[1] , \diffresult[1] , \diffresult[1] , sumresult[7]}), 
        .d7(multresult), .d8({\diffresult[1] , \diffresult[1] , 
        \diffresult[1] , \diffresult[1] , \diffresult[1] , \diffresult[1] , 
        \diffresult[1] , \equalresult[0] }), .d9({\diffresult[1] , 
        \diffresult[1] , \diffresult[1] , \diffresult[1] , \diffresult[1] , 
        \diffresult[1] , \diffresult[1] , \greaterresult[0] }), .d10({
        \diffresult[1] , \diffresult[1] , \diffresult[1] , \diffresult[1] , 
        \diffresult[1] , \diffresult[1] , \diffresult[1] , 
        \greater_oreqresult[0] }), .d11({\diffresult[1] , \diffresult[1] , 
        \diffresult[1] , \diffresult[1] , \diffresult[1] , \diffresult[1] , 
        \diffresult[1] , \diffresult[0] }), .s(alucontrol[3:0]), .y({result[7], 
        n14, result[5:0]}) );
  zerodetect_WIDTH8 zd ( .a({result[7], n14, result[5:0]}), .y(zero) );
  BUF_X10N_A9PP84TR_C14 U2 ( .A(b[2]), .Y(n13) );
  BUFH_X4N_A9PP84TR_C14 U3 ( .A(a[1]), .Y(n2) );
  BUFH_X4N_A9PP84TR_C14 U4 ( .A(a[5]), .Y(n10) );
  BUF_X2N_A9PP84TR_C14 U5 ( .A(b[3]), .Y(n1) );
  BUFH_X4N_A9PP84TR_C14 U6 ( .A(a[0]), .Y(n5) );
  BUF_X2N_A9PP84TR_C14 U7 ( .A(n14), .Y(result[6]) );
  BUF_X10N_A9PP84TR_C14 U8 ( .A(b[0]), .Y(n12) );
  BUF_X2N_A9PP84TR_C14 U9 ( .A(n5), .Y(n7) );
  BUF_X2N_A9PP84TR_C14 U10 ( .A(a[0]), .Y(n6) );
  BUFH_X4N_A9PP84TR_C14 U11 ( .A(a[3]), .Y(n9) );
  BUFH_X4N_A9PP84TR_C14 U12 ( .A(a[6]), .Y(n11) );
  TIELO_X1N_A9PP84TR_C14 U13 ( .Y(\diffresult[1] ) );
  BUF_X2N_A9PP84TR_C14 U14 ( .A(b[5]), .Y(n4) );
  BUF_X2N_A9PP84TR_C14 U15 ( .A(b[4]), .Y(n8) );
endmodule


module datapath_WIDTH8_REGBITS3 ( clk, reset, memdata, alusrca, memtoreg, iord, 
        pcen, regwrite, regdst, pcsrc, alusrcb, irwrite, alucontrol, zero, 
        instr, adr, writedata );
  input [7:0] memdata;
  input [1:0] pcsrc;
  input [1:0] alusrcb;
  input [3:0] irwrite;
  input [4:0] alucontrol;
  output [31:0] instr;
  output [7:0] adr;
  output [7:0] writedata;
  input clk, reset, alusrca, memtoreg, iord, pcen, regwrite, regdst;
  output zero;
  wire   \*Logic1* , \*Logic0* ;
  wire   [7:0] nextpc;
  wire   [7:0] pc;
  wire   [7:0] data;
  wire   [7:0] a;
  wire   [7:0] aluresult;
  wire   [7:0] aluout;
  wire   [7:0] srca;
  wire   [7:0] srcb;
  tri   clk;
  tri   regwrite;
  tri   [2:0] wa;
  tri   [7:0] rd1;
  tri   [7:0] rd2;
  tri   [7:0] wd;

  mux2_WIDTH3 regmux ( .d0(instr[18:16]), .d1(instr[13:11]), .s(regdst), .y(wa) );
  flopen_WIDTH8_0 ir0 ( .clk(clk), .en(irwrite[0]), .d(memdata), .q(instr[7:0]) );
  flopen_WIDTH8_3 ir1 ( .clk(clk), .en(irwrite[1]), .d(memdata), .q(
        instr[15:8]) );
  flopen_WIDTH8_2 ir2 ( .clk(clk), .en(irwrite[2]), .d(memdata), .q(
        instr[23:16]) );
  flopen_WIDTH8_1 ir3 ( .clk(clk), .en(irwrite[3]), .d(memdata), .q(
        instr[31:24]) );
  flopenr_WIDTH8 pcreg ( .clk(clk), .reset(reset), .en(pcen), .d(nextpc), .q(
        pc) );
  flop_WIDTH8_0 datareg ( .clk(clk), .d(memdata), .q(data) );
  flop_WIDTH8_3 areg ( .clk(clk), .d(rd1), .q(a) );
  flop_WIDTH8_2 wrdreg ( .clk(clk), .d(rd2), .q(writedata) );
  flop_WIDTH8_1 resreg ( .clk(clk), .d(aluresult), .q(aluout) );
  mux2_WIDTH8_0 adrmux ( .d0(pc), .d1(aluout), .s(iord), .y(adr) );
  mux2_WIDTH8_3 src1mux ( .d0(pc), .d1(a), .s(alusrca), .y(srca) );
  mux4_WIDTH8 src2mux ( .d0(writedata), .d1({\*Logic0* , \*Logic0* , 
        \*Logic0* , \*Logic0* , \*Logic0* , \*Logic0* , \*Logic0* , \*Logic1* }), .d2(instr[7:0]), .d3({instr[5:0], \*Logic0* , \*Logic0* }), .s(alusrcb), 
        .y(srcb) );
  mux3_WIDTH8 pcmux ( .d0(aluresult), .d1(aluout), .d2({instr[5:0], \*Logic0* , 
        \*Logic0* }), .s(pcsrc), .y(nextpc) );
  mux2_WIDTH8_2 wdmux ( .d0(aluout), .d1(data), .s(memtoreg), .y(wd) );
  regfile_WIDTH8_REGBITS3 rf ( .clk(clk), .regwrite(regwrite), .ra1(
        instr[23:21]), .ra2(instr[18:16]), .wa(wa), .wd(wd), .rd1(rd1), .rd2(
        rd2) );
  alu_WIDTH8 alunit ( .a(srca), .b(srcb), .alucontrol(alucontrol), .result(
        aluresult), .zero(zero) );
  TIEHI_X1N_A9PP84TR_C14 U3 ( .Y(\*Logic1* ) );
  TIELO_X1N_A9PP84TR_C14 U4 ( .Y(\*Logic0* ) );
endmodule


module mips ( clk, reset, memdata, memread, memwrite, adr, writedata );
  input [7:0] memdata;
  output [7:0] adr;
  output [7:0] writedata;
  input clk, reset;
  output memread, memwrite;
  wire   zero, alusrca, memtoreg, iord, pcen, regdst, n1;
  wire   [5:0] op;
  wire   [5:0] funct;
  wire   [1:0] pcsrc;
  wire   [1:0] alusrcb;
  wire   [4:0] alucontrol;
  wire   [3:0] irwrite;
  tri   clk;
  tri   regwrite;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20;

  controller cont ( .clk(clk), .reset(reset), .op(op), .funct(funct), .zero(
        zero), .memread(memread), .memwrite(memwrite), .alusrca(alusrca), 
        .memtoreg(memtoreg), .iord(iord), .pcen(pcen), .regwrite(regwrite), 
        .regdst(regdst), .pcsrc(pcsrc), .alusrcb(alusrcb), .alucontrol({
        SYNOPSYS_UNCONNECTED__0, alucontrol[3:0]}), .irwrite(irwrite) );
  datapath_WIDTH8_REGBITS3 dp ( .clk(clk), .reset(reset), .memdata(memdata), 
        .alusrca(alusrca), .memtoreg(memtoreg), .iord(iord), .pcen(pcen), 
        .regwrite(regwrite), .regdst(regdst), .pcsrc(pcsrc), .alusrcb(alusrcb), 
        .irwrite(irwrite), .alucontrol({n1, alucontrol[3:0]}), .zero(zero), 
        .instr({op, SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, funct}), .adr(adr), 
        .writedata(writedata) );
  TIELO_X1N_A9PP84TR_C14 U1 ( .Y(n1) );
endmodule

