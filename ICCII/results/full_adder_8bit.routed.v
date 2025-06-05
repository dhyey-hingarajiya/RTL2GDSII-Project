// IC Compiler II Version W-2024.09 Verilog Writer
// Generated on 6/5/2025 at 11:17:43
// Library Name: FULL_ADDER_8BIT_LIB
// Block Name: full_adder_8bit_v
// User Label: 
// Write Command: write_verilog ./results/full_adder_8bit.routed.v
module full_adder_8bit ( A , B , C_in , Clock , SUM , C_out ) ;
input  [7:0] A ;
input  [7:0] B ;
input  C_in ;
input  Clock ;
output [7:0] SUM ;
output C_out ;

wire [7:0] regA ;
wire [7:0] regB ;
wire [6:1] sum_wire ;

DFFX1_RVT \regB_reg[7] ( .D ( B[7] ) , .CLK ( ctosc_drc_0 ) , .Q ( regB[7] ) ) ;
DFFX1_RVT \regB_reg[6] ( .D ( B[6] ) , .CLK ( ctosc_drc_0 ) , .Q ( regB[6] ) ) ;
DFFX1_RVT \regB_reg[4] ( .D ( B[4] ) , .CLK ( ctosc_drc_0 ) , .Q ( regB[4] ) ) ;
DFFX1_RVT \regB_reg[1] ( .D ( B[1] ) , .CLK ( ctosc_drc_0 ) , .Q ( regB[1] ) ) ;
DFFX1_RVT \SUM_reg[6] ( .D ( sum_wire[6] ) , .CLK ( ctosc_drc_0 ) , 
    .Q ( SUM[6] ) ) ;
DFFX1_RVT \SUM_reg[5] ( .D ( sum_wire[5] ) , .CLK ( ctosc_drc_0 ) , 
    .Q ( SUM[5] ) ) ;
DFFX1_RVT \SUM_reg[4] ( .D ( sum_wire[4] ) , .CLK ( ctosc_drc_0 ) , 
    .Q ( SUM[4] ) ) ;
DFFX1_RVT \SUM_reg[3] ( .D ( sum_wire[3] ) , .CLK ( ctosc_drc_0 ) , 
    .Q ( SUM[3] ) ) ;
DFFX1_RVT \SUM_reg[2] ( .D ( sum_wire[2] ) , .CLK ( ctosc_drc_0 ) , 
    .Q ( SUM[2] ) ) ;
DFFX1_RVT \SUM_reg[1] ( .D ( sum_wire[1] ) , .CLK ( ctosc_drc_0 ) , 
    .Q ( SUM[1] ) ) ;
DFFX1_RVT C_out_reg ( .D ( \carry[7] ) , .CLK ( ctosc_drc_0 ) , .Q ( C_out ) ) ;
DFFSSRX1_RVT regCin_reg ( .D ( 1'b0 ) , .SETB ( C_in ) , .RSTB ( 1'b1 ) , 
    .CLK ( ctosc_drc_0 ) , .Q ( n138 ) , .QN ( regCin ) ) ;
DFFSSRX1_RVT \regB_reg[5] ( .D ( 1'b0 ) , .SETB ( 1'b0 ) , .RSTB ( B[5] ) , 
    .CLK ( ctosc_drc_0 ) , .Q ( regB[5] ) , .QN ( n148 ) ) ;
DFFSSRX1_RVT \regB_reg[3] ( .D ( 1'b0 ) , .SETB ( 1'b0 ) , .RSTB ( B[3] ) , 
    .CLK ( ctosc_drc_0 ) , .Q ( regB[3] ) , .QN ( n146 ) ) ;
DFFSSRX1_RVT \regB_reg[2] ( .D ( 1'b0 ) , .SETB ( 1'b0 ) , .RSTB ( B[2] ) , 
    .CLK ( ctosc_drc_0 ) , .Q ( regB[2] ) , .QN ( n144 ) ) ;
DFFSSRX1_RVT \regB_reg[0] ( .D ( 1'b0 ) , .SETB ( 1'b0 ) , .RSTB ( B[0] ) , 
    .CLK ( ctosc_drc_0 ) , .Q ( regB[0] ) , .QN ( n142 ) ) ;
DFFSSRX1_RVT \regA_reg[7] ( .D ( 1'b0 ) , .SETB ( 1'b0 ) , .RSTB ( A[7] ) , 
    .CLK ( ctosc_drc_0 ) , .Q ( regA[7] ) , .QN ( n150 ) ) ;
DFFSSRX1_RVT \regA_reg[6] ( .D ( 1'b0 ) , .SETB ( 1'b0 ) , .RSTB ( A[6] ) , 
    .CLK ( ctosc_drc_0 ) , .Q ( regA[6] ) , .QN ( n149 ) ) ;
DFFSSRX1_RVT \regA_reg[5] ( .D ( 1'b0 ) , .SETB ( 1'b0 ) , .RSTB ( A[5] ) , 
    .CLK ( ctosc_drc_0 ) , .Q ( regA[5] ) , .QN ( n140 ) ) ;
DFFSSRX1_RVT \regA_reg[4] ( .D ( 1'b0 ) , .SETB ( 1'b0 ) , .RSTB ( A[4] ) , 
    .CLK ( ctosc_drc_0 ) , .Q ( regA[4] ) , .QN ( n147 ) ) ;
DFFSSRX1_RVT \regA_reg[3] ( .D ( 1'b0 ) , .SETB ( 1'b0 ) , .RSTB ( A[3] ) , 
    .CLK ( ctosc_drc_0 ) , .Q ( regA[3] ) , .QN ( n145 ) ) ;
DFFSSRX1_RVT \regA_reg[2] ( .D ( 1'b0 ) , .SETB ( 1'b0 ) , .RSTB ( A[2] ) , 
    .CLK ( ctosc_drc_0 ) , .Q ( regA[2] ) , .QN ( n139 ) ) ;
DFFSSRX1_RVT \regA_reg[1] ( .D ( 1'b0 ) , .SETB ( 1'b0 ) , .RSTB ( A[1] ) , 
    .CLK ( ctosc_drc_0 ) , .Q ( regA[1] ) , .QN ( n143 ) ) ;
DFFSSRX1_RVT \regA_reg[0] ( .D ( 1'b0 ) , .SETB ( 1'b0 ) , .RSTB ( A[0] ) , 
    .CLK ( ctosc_drc_0 ) , .Q ( regA[0] ) , .QN ( n141 ) ) ;
DFFSSRX1_RVT \SUM_reg[0] ( .D ( n152 ) , .SETB ( 1'b1 ) , .RSTB ( n151 ) , 
    .CLK ( ctosc_drc_0 ) , .QN ( SUM[0] ) ) ;
DFFSSRX1_RVT \SUM_reg[7] ( .D ( n154 ) , .SETB ( 1'b1 ) , .RSTB ( n153 ) , 
    .CLK ( ctosc_drc_0 ) , .QN ( SUM[7] ) ) ;
OR2X1_RVT U67 ( .A1 ( n87 ) , .A2 ( regB[7] ) , .Y ( n154 ) ) ;
NAND2X0_RVT U84 ( .A1 ( n142 ) , .A2 ( n138 ) , .Y ( n57 ) ) ;
NAND2X0_RVT U85 ( .A1 ( regB[0] ) , .A2 ( regCin ) , .Y ( n60 ) ) ;
NAND2X0_RVT U86 ( .A1 ( n60 ) , .A2 ( n141 ) , .Y ( n56 ) ) ;
NAND3X0_RVT U87 ( .A1 ( n57 ) , .A2 ( regA[1] ) , .A3 ( n56 ) , .Y ( n118 ) ) ;
NAND2X0_RVT U88 ( .A1 ( regB[0] ) , .A2 ( regA[0] ) , .Y ( n59 ) ) ;
NAND2X0_RVT U89 ( .A1 ( regCin ) , .A2 ( regA[0] ) , .Y ( n58 ) ) ;
NAND4X0_RVT U90 ( .A1 ( n143 ) , .A2 ( n60 ) , .A3 ( n59 ) , .A4 ( n58 ) , 
    .Y ( n117 ) ) ;
NAND2X0_RVT U91 ( .A1 ( regB[1] ) , .A2 ( n117 ) , .Y ( n64 ) ) ;
NAND2X0_RVT U92 ( .A1 ( regA[2] ) , .A2 ( regB[2] ) , .Y ( n63 ) ) ;
INVX0_RVT ctmTdsLR_1_711 ( .A ( tmp_net4 ) , .Y ( n75 ) ) ;
AND3X1_RVT ctmTdsLR_2_712 ( .A1 ( n72 ) , .A2 ( n102 ) , .A3 ( n96 ) , 
    .Y ( tmp_net4 ) ) ;
NAND2X0_RVT U95 ( .A1 ( n144 ) , .A2 ( n139 ) , .Y ( n65 ) ) ;
AND2X1_RVT U96 ( .A1 ( n62 ) , .A2 ( n65 ) , .Y ( n69 ) ) ;
NAND2X0_RVT U97 ( .A1 ( regB[3] ) , .A2 ( n69 ) , .Y ( n107 ) ) ;
NAND2X0_RVT U98 ( .A1 ( n107 ) , .A2 ( n145 ) , .Y ( n68 ) ) ;
INVX0_RVT ctmTdsLR_1_709 ( .A ( tmp_net3 ) , .Y ( n62 ) ) ;
NAND2X0_RVT U100 ( .A1 ( n118 ) , .A2 ( n64 ) , .Y ( n114 ) ) ;
NAND2X0_RVT U101 ( .A1 ( n114 ) , .A2 ( n65 ) , .Y ( n66 ) ) ;
AND3X1_RVT ctmTdsLR_2_710 ( .A1 ( n63 ) , .A2 ( n118 ) , .A3 ( n64 ) , 
    .Y ( tmp_net3 ) ) ;
NAND3X0_RVT U103 ( .A1 ( regA[4] ) , .A2 ( n68 ) , .A3 ( n106 ) , 
    .Y ( n102 ) ) ;
NAND2X0_RVT U104 ( .A1 ( regA[3] ) , .A2 ( n69 ) , .Y ( n71 ) ) ;
NAND2X0_RVT U105 ( .A1 ( regA[3] ) , .A2 ( regB[3] ) , .Y ( n70 ) ) ;
NAND4X0_RVT U106 ( .A1 ( n147 ) , .A2 ( n107 ) , .A3 ( n71 ) , .A4 ( n70 ) , 
    .Y ( n101 ) ) ;
NAND2X0_RVT U107 ( .A1 ( regB[4] ) , .A2 ( n101 ) , .Y ( n96 ) ) ;
NAND2X0_RVT U108 ( .A1 ( regA[5] ) , .A2 ( regB[5] ) , .Y ( n72 ) ) ;
NAND2X0_RVT U111 ( .A1 ( n148 ) , .A2 ( n140 ) , .Y ( n74 ) ) ;
AND2X1_RVT U112 ( .A1 ( n75 ) , .A2 ( n74 ) , .Y ( n91 ) ) ;
NAND2X0_RVT U113 ( .A1 ( regB[6] ) , .A2 ( n91 ) , .Y ( n78 ) ) ;
NAND2X0_RVT U114 ( .A1 ( regA[6] ) , .A2 ( n91 ) , .Y ( n77 ) ) ;
NAND2X0_RVT U115 ( .A1 ( regB[6] ) , .A2 ( regA[6] ) , .Y ( n76 ) ) ;
NAND4X0_RVT U116 ( .A1 ( n150 ) , .A2 ( n78 ) , .A3 ( n77 ) , .A4 ( n76 ) , 
    .Y ( n84 ) ) ;
OR2X1_RVT U117 ( .A1 ( n91 ) , .A2 ( regB[6] ) , .Y ( n80 ) ) ;
NAND2X0_RVT U118 ( .A1 ( n78 ) , .A2 ( n149 ) , .Y ( n79 ) ) ;
NAND3X0_RVT U119 ( .A1 ( regA[7] ) , .A2 ( n80 ) , .A3 ( n79 ) , .Y ( n86 ) ) ;
NAND2X0_RVT U120 ( .A1 ( n84 ) , .A2 ( n86 ) , .Y ( n87 ) ) ;
NAND2X0_RVT U121 ( .A1 ( regA[0] ) , .A2 ( n138 ) , .Y ( n82 ) ) ;
NAND2X0_RVT U122 ( .A1 ( regCin ) , .A2 ( n141 ) , .Y ( n81 ) ) ;
NAND2X0_RVT U123 ( .A1 ( n82 ) , .A2 ( n81 ) , .Y ( n83 ) ) ;
NAND2X0_RVT U124 ( .A1 ( n83 ) , .A2 ( n142 ) , .Y ( n152 ) ) ;
OR2X1_RVT U125 ( .A1 ( n142 ) , .A2 ( n83 ) , .Y ( n151 ) ) ;
NAND2X0_RVT U126 ( .A1 ( regB[7] ) , .A2 ( n84 ) , .Y ( n85 ) ) ;
NAND2X0_RVT U127 ( .A1 ( n86 ) , .A2 ( n85 ) , .Y ( \carry[7] ) ) ;
NAND2X0_RVT U128 ( .A1 ( regB[7] ) , .A2 ( n87 ) , .Y ( n153 ) ) ;
OR2X1_RVT U129 ( .A1 ( n149 ) , .A2 ( regB[6] ) , .Y ( n89 ) ) ;
NAND2X0_RVT U130 ( .A1 ( regB[6] ) , .A2 ( n149 ) , .Y ( n88 ) ) ;
NAND2X0_RVT U131 ( .A1 ( n89 ) , .A2 ( n88 ) , .Y ( n90 ) ) ;
NAND2X0_RVT U132 ( .A1 ( n90 ) , .A2 ( n91 ) , .Y ( n93 ) ) ;
OR2X1_RVT U133 ( .A1 ( n91 ) , .A2 ( n90 ) , .Y ( n92 ) ) ;
AND2X1_RVT U134 ( .A1 ( n93 ) , .A2 ( n92 ) , .Y ( sum_wire[6] ) ) ;
NAND2X0_RVT U135 ( .A1 ( regB[5] ) , .A2 ( n140 ) , .Y ( n95 ) ) ;
NAND2X0_RVT U136 ( .A1 ( regA[5] ) , .A2 ( n148 ) , .Y ( n94 ) ) ;
NAND2X0_RVT U137 ( .A1 ( n95 ) , .A2 ( n94 ) , .Y ( n97 ) ) ;
NAND2X0_RVT U138 ( .A1 ( n102 ) , .A2 ( n96 ) , .Y ( n98 ) ) ;
NAND2X0_RVT U139 ( .A1 ( n97 ) , .A2 ( n98 ) , .Y ( n100 ) ) ;
OR2X1_RVT U140 ( .A1 ( n98 ) , .A2 ( n97 ) , .Y ( n99 ) ) ;
AND2X1_RVT U141 ( .A1 ( n100 ) , .A2 ( n99 ) , .Y ( sum_wire[5] ) ) ;
NAND2X0_RVT U142 ( .A1 ( n102 ) , .A2 ( n101 ) , .Y ( n103 ) ) ;
OR2X1_RVT U143 ( .A1 ( n103 ) , .A2 ( regB[4] ) , .Y ( n105 ) ) ;
NAND2X0_RVT U144 ( .A1 ( regB[4] ) , .A2 ( n103 ) , .Y ( n104 ) ) ;
NAND2X0_RVT U145 ( .A1 ( n105 ) , .A2 ( n104 ) , .Y ( sum_wire[4] ) ) ;
NAND2X0_RVT U146 ( .A1 ( n107 ) , .A2 ( n106 ) , .Y ( n108 ) ) ;
NAND2X0_RVT U147 ( .A1 ( n108 ) , .A2 ( n145 ) , .Y ( n110 ) ) ;
OR2X1_RVT U148 ( .A1 ( n145 ) , .A2 ( n108 ) , .Y ( n109 ) ) ;
AND2X1_RVT U149 ( .A1 ( n110 ) , .A2 ( n109 ) , .Y ( sum_wire[3] ) ) ;
NAND2X0_RVT U150 ( .A1 ( regB[2] ) , .A2 ( n139 ) , .Y ( n112 ) ) ;
NAND2X0_RVT U151 ( .A1 ( regA[2] ) , .A2 ( n144 ) , .Y ( n111 ) ) ;
NAND2X0_RVT U152 ( .A1 ( n112 ) , .A2 ( n111 ) , .Y ( n113 ) ) ;
NAND2X0_RVT U153 ( .A1 ( n113 ) , .A2 ( n114 ) , .Y ( n116 ) ) ;
OR2X1_RVT U154 ( .A1 ( n114 ) , .A2 ( n113 ) , .Y ( n115 ) ) ;
AND2X1_RVT U155 ( .A1 ( n116 ) , .A2 ( n115 ) , .Y ( sum_wire[2] ) ) ;
NAND2X0_RVT U156 ( .A1 ( n118 ) , .A2 ( n117 ) , .Y ( n119 ) ) ;
OR2X1_RVT U157 ( .A1 ( n119 ) , .A2 ( regB[1] ) , .Y ( n121 ) ) ;
NAND2X0_RVT U158 ( .A1 ( regB[1] ) , .A2 ( n119 ) , .Y ( n120 ) ) ;
NAND2X0_RVT U159 ( .A1 ( n121 ) , .A2 ( n120 ) , .Y ( sum_wire[1] ) ) ;
NBUFFX8_RVT ctosc_drc_inst_615 ( .A ( ctosc_drc_1 ) , .Y ( ctosc_drc_0 ) ) ;
NBUFFX4_RVT ctosc_drc_inst_706 ( .A ( Clock ) , .Y ( ctosc_drc_1 ) ) ;
INVX0_RVT ctmTdsLR_1_707 ( .A ( tmp_net2 ) , .Y ( n106 ) ) ;
AND3X1_RVT ctmTdsLR_2_708 ( .A1 ( n146 ) , .A2 ( n63 ) , .A3 ( n66 ) , 
    .Y ( tmp_net2 ) ) ;
endmodule


