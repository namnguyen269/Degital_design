module led7thanh(
	input wire [3:0] x1,x2,x3,x4,
	output reg [6:0] abcdefg_1,abcdefg_2,abcdefg_3,abcdefg_4
	);
	giaima7thanh led1(.x(x1),.abcdefg(abcdefg_1));
	giaima7thanh led2(.x(x2),.abcdefg(abcdefg_2));
	giaima7thanh led3(.x(x3),.abcdefg(abcdefg_3));
	giaima7thanh led4(.x(x4),.abcdefg(abcdefg_4));
endmodule
