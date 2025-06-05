`include "full_adder_1bit.v"

module full_adder_8bit (
    input [7:0] A,
    input [7:0] B,
    input       C_in,
    input       Clock,
    output reg [7:0] SUM,
    output reg       C_out
);

    // Internal signals
    reg [7:0] regA, regB;
    reg       regCin;
    wire [7:0] sum_wire;
    wire [7:0] carry;

    // Input latching
    always @(posedge Clock) begin
        regA   <= A;
        regB   <= B;
        regCin <= C_in;
    end

    // Output latching
    always @(posedge Clock) begin
        SUM   <= sum_wire;
        C_out <= carry[7];
    end

    // Full adder chaining (ripple carry)
    full_adder_1bit FA0 (regA[0], regB[0], regCin,      sum_wire[0], carry[0]);
    full_adder_1bit FA1 (regA[1], regB[1], carry[0],    sum_wire[1], carry[1]);
    full_adder_1bit FA2 (regA[2], regB[2], carry[1],    sum_wire[2], carry[2]);
    full_adder_1bit FA3 (regA[3], regB[3], carry[2],    sum_wire[3], carry[3]);
    full_adder_1bit FA4 (regA[4], regB[4], carry[3],    sum_wire[4], carry[4]);
    full_adder_1bit FA5 (regA[5], regB[5], carry[4],    sum_wire[5], carry[5]);
    full_adder_1bit FA6 (regA[6], regB[6], carry[5],    sum_wire[6], carry[6]);
    full_adder_1bit FA7 (regA[7], regB[7], carry[6],    sum_wire[7], carry[7]);

endmodule

