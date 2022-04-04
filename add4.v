module add4(a, b, sum, cout);
	input [3:0] a, b; 
	output reg [3:0] sum; //adder result;
	output reg cout; //output wire for carryout bit
	
	wire [4:0] sum1; //define a bus wider than 4bits to accomodate carrybit

	assign sum1 = a + b;
	assign cout = sum1[4]; //assign carryout bit
	assign sum = sum1[3:0]; //final result
	
endmodule