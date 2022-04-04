										//Comments for future reference and personal notes
`timescale 1ns / 1ns
module mux41_tb();
	reg [3:0] i1, i2, i3, i4;  //4bit input vectors
	reg [1:0] sel; 			//2bit  selector
	wire [3:0] z_8107; 		//4bit output bus 
	
	integer i; //counter variable --> for loop

mux41 u1(i1, i2, i3, i4, sel, z_8107); 

initial begin
	//init vectors to zero
	i1= 4'b0000;  i2= 4'b0000;  i3= 4'b0000; i4= 4'b0000; sel= 2'b00; 
	#15 $finish;
end


always begin
	for (i = 0; i < 4; i = i + 1) begin
		#1
		i1= $random; 
		i2= $random;
		i3= $random;
		i4= $random;
		sel= i; 
	end
		
end	


initial begin
  $dumpfile("output.vcd");
	$dumpvars(0);
end

endmodule
