module ALU(
	input reg [31:0] in1,in2, // in1, in2 lan luot la dau vao A va B
	input reg [2:0] opcode, // dau vao 3 bit xac dinh 8 phep toan
	output wire [31:0] out // out la dau ra C
);

always @(*) begin 
	case (opcode)
		3'b000: out = in1 + in2;
		3'b001: out = in1 - in2;
		3'b010: assign out = ~in1; // not A
		3'b011: assign out = in1 & in2;
		3'b100: assign out = in1 | in2;
		3'b101: assign out = in1 ^ in2;
		3'b110: assign out = in1 << 1; // dich trai in1 1 bit
		3'b111: assign out = in1 >> 1; 
 		default : out = 8'h0000;
	endcase
end
endmodule
