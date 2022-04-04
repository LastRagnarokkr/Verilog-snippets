module mux41(a, b, c, d, s, y);
	input [3:0] a, b, c, d; 	//4bit input vector
	input [1:0] s; 				//declare 2bit selector, effectively s0 & s1
	output reg [3:0] y;  	

always@(*) begin
	assign y = s[1] ? (s[0] ? d : c) : (s[0] ? b : a);
	//first check selector MSB s[1], then check selector LSB s[0], and finally assign
end
	
endmodule