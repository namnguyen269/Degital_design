module testbench ();
	reg [7:0] x,y;
	reg c_in;
	wire c_out;
	wire [7:0] s;
	
	CLA_8bit cla(.x(x), .y(y), .c_in (c_in), .c_out(c_out),.s(s));

	initital
	begin
		x=8'd3;
		y=8'd5;
		c_in=0;
	end

endmodule
