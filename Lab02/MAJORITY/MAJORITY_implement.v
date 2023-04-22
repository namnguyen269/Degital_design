
module MAJORITY(
    input wire [31:0] in,
    output reg out
    );
    
    integer i;
    integer count_0, count_1;

    always @(in)
	begin
        //in1 = 8'b00001111;
        count_0=0;
        count_1=0;
	//out = 0;
        for(i = 0;i < 32;i = i + 1) begin
            if(in[i] == 0)
            begin
                count_0=count_0+1;
            end
            else
            begin
                count_1=count_1+1;
            end
        end
        if (count_0>count_1) begin
            out = 0;
        end
        else
        begin
            out = 1;    
        end
    end
endmodule
