module full_adder(
	input wire x,y,
	input wire c_in,
	output reg c,
	output reg s 
);
	wire p;
	wire g;
	wire c;
	always @(x & y & c_in) begin
		assign c = (c_in ^ x ^ y) | (x & y);
		assign s = x ^ y ^ c_in;
	end

endmodule 


module CA_8bit(
	input wire [7:0] x,y,
	input wire c_in,
	output reg c_out,
	output reg [7:0] s 
);
	wire [7:0] p;
	wire [7:0] g;
	wire [6:0] c;
	
	full_adder cla0(.x(x[0]), .y(y[0]), .c_in(c_in), c[0], s[0]);
	full_adder cla1(.x(x[1]), .y(y[1]), .c_in(c[0]), c[1], s[1]);
	full_adder cla2(.x(x[2]), .y(y[2]), .c_in(c[1]), c[2], s[2]);
	full_adder cla3(.x(x[3]), .y(y[3]), .c_in(c[2]), c[3], s[3]);
	full_adder cla4(.x(x[4]), .y(y[4]), .c_in(c[3]), c[4], s[4]);
	full_adder cla5(.x(x[5]), .y(y[5]), .c_in(c[4]), c[5], s[5]);
	full_adder cla6(.x(x[6]), .y(y[6]), .c_in(c[5]), c[6], s[6]);
	full_adder cla7(.x(x[7]), .y(y[7]), .c_in(c[6]), c_out, s[7]);
endmodule 
