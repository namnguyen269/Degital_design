module giaima7thanh(
	input wire [3:0] x,
	output reg  [6:0] abcdefg
	);
always @(*) begin
	case (x)
		4'b0000 : abcdefg = 7'b1000000;
		4'b0001 : abcdefg = 7'b1111001;
		4'b0010 : abcdefg = 7'b0100100;
		4'b0011 : abcdefg = 7'b0110000;
		4'b0100 : abcdefg = 7'b0011001;
		4'b0101 : abcdefg = 7'b0010010;
		4'b0110 : abcdefg = 7'b0000010;
		4'b0111 : abcdefg = 7'b1111000;
		4'b1000 : abcdefg = 7'b0000000;
		4'b1001 : abcdefg = 7'b0010000;
		default : abcdefg = 7'b1000000;
	endcase
end
endmodule