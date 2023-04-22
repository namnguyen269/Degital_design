`timescale 10ps/1ps

module testbench();
    reg [31:0] cur_in;
    wire cur_out;
    
    MAJORITY major(
            .in(cur_in),
            .out(cur_out)
            );
    parameter NUMBER_32bit = 32'h11111111;

    //test random
    integer i;
    initial
    begin


	for (i=0;i<10000;i=i+1)
		begin
			cur_in = $random();
			#10
;
		end
/*
	cur_in = 32'd0;
	#10;
	cur_in = 4'b0001;
	#10;	
	cur_in = 4'b1101;
	#10;
	cur_in = 4'b0001;
	#10;
*/
       end

    //golden output
/*
    wire golden_out;
    integer golden_count_0;
    integer golden_count_1;
    always @(cur_in)begin        
    end
*/
endmodule
