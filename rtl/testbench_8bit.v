`timescale 1ns/1ns
`include "full_adder_8bit.v"

module testbench_8bit;

    reg [7:0] A, B;
    reg       C_in, Clock;
    wire [7:0] SUM;
    wire       C_out;

    // Instantiate DUT
    full_adder_8bit dut (.A(A), .B(B), .C_in(C_in), .Clock(Clock), .SUM(SUM), .C_out(C_out));

    // Clock generation
    always #5 Clock = ~Clock;

    // Stimulus
    initial begin
        $fsdbDumpvars;

        // Reset the Inputs
        Clock = 0;
        A = 0; 
        B = 0; 
        C_in = 0;

        // Wait for stable startup
        @(posedge Clock);

         // TEST CASE 1
    	@(negedge Clock);
    	A = 8'b00000001; B = 8'b00000001; C_in = 0;
    	@(posedge Clock); // inputs latched
    	@(posedge Clock); // wait one more cycle for outputs
    	#1; // small delay to stabilize
    	$display("TC1: A=%b B=%b C_in=%b => SUM=%b C_out=%b", A, B, C_in, SUM, C_out);

    	// TEST CASE 2
    	@(negedge Clock);
    	A = 8'b00000110; B = 8'b00001010; C_in = 1;
    	@(posedge Clock);
    	@(posedge Clock);
    	#1;
    	$display("TC2: A=%b B=%b C_in=%b => SUM=%b C_out=%b", A, B, C_in, SUM, C_out);

    	// TEST CASE 3
    	@(negedge Clock);
    	A = 8'b00001000; B = 8'b00001111; C_in = 1;
    	@(posedge Clock);
    	@(posedge Clock);
    	#1;
    	$display("TC3: A=%b B=%b C_in=%b => SUM=%b C_out=%b", A, B, C_in, SUM, C_out);
	
    	#50 $finish;
    end

endmodule
