//Comments for future reference and personal notes
`timescale 1ns / 1ns
module add4_tb();
	reg [3:0] a, b; //4bit address declaration of a, b 
	wire [3:0] s_7108; //4bit bus declaration
	wire cout; //carry-out bit
	
add4 u1(a, b, s_8107, cout); //first specify module to be used and then give it a identifier!

initial begin
	$monitor(cout);
	
	a = 4'b0000;
	b = 4'b0000;
		
	#20 $finish; //wait 20ns and finish
end

always begin
	#1 a = $random; b = $random; //to limit bite size -- $random%10 or $random20 etc etc
end

initial begin
    $dumpfile("output.vcd");
	$dumpvars(0);
end

endmodule