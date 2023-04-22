`timescale 1ns/1ps

module testbench;
	reg [31:0] in1, in2;
	reg [2:0] opcode;

	wire [31:0] cur_out;
	ALU alu(
		.in1(in1),
		.in2(in2),
		.opcode(opcode),
		.out(cur_out)
		);
	// full test

	initial 
	begin
		for (opcode = 0;opcode < 8; opcode=opcode+1)
			for (in1=0; in1 < $pow(2,32); in1=in1+1)
				for (in2=0; in2 < $pow(2,32); in2=in2+1)
		#1
	end

	//generate golden output

	always @(in1 or in2 or opcode)
	begin
		case (opcode)
		3'b000: golden_out = in1 + in2;
		3'b001: golden_out = in1 - in2;
		3'b010: assign golden_out = ~in1; // not A
		3'b011: assign golden_out = in1 & in2;
		3'b100: assign golden_out = in1 | in2;
		3'b101: assign golden_out = in1 ^ in2;
		3'b110: assign golden_out = in1 << 1; // dich trai in1 1 bit
		3'b111: assign golden_out = in1 >> 1; 
 		default : golden_out = 8'h0000;
	endcase
	end
	//compare 
	initial
	begin
		$monitor("%t-%b: golden_out=%d, out=%d",
			$time,(golden_out==cur_out), golden_out, cur_out);
	end
endmodule
