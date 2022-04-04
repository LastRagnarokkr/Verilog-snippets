module mux21_1(input1,input2,select,out1)
	input input1,input2,select;
	output out1;
	
	not(select_inverted,select); 		
	and(and1_output_wire,input1,select_inverted); 		
	and(and2_output_wire,input2,select); 	
	or(out1,and1_output_wire,and2_output_wire); 		

endmodule




module mux21_2(input1,input2,select,out1)
	input input1,input2,select;
	output out1;
	
	and(and1_output_wire,input1,~select);		
	and(and2_output_wire,input2,select); 		
	or(out1,and1_output_wire,and2_output_wire); 			

endmodule




module mux21_3(input1,input2,select,out1)
	input input1,input2,select;
	output out1;
	
	and(and1_output_wire,input1,~select), (and2_output_wire,input2,select); 
	or(out1,and1_output_wire,and2_output_wire); 		

endmodule




module mux21_4(input1,input2,select,out1)
	input input1,input2,select;
	output out1;

	assign select_inverted = ~select;
	assign and1_output_wire = select_inverted & input1;
	assign and2_output_wire = select & input2;
	assign out1 = and1_output_wire|and2_output_wire;

endmodule




module mux21_5(input1,input2,select,out1)
	input input1,input2,select;
	output out1;

	assign out1 = (input1 & ~select) | (input2 & select); 
endmodule




module mux21_6(input1,input2,select,out1)
	input input1,input2,select;
	output out1;

	assign out1 = (select) ? input1 : input2; 

endmodule




module mux21_7(input1,input2,select,out1)
	input input1,input2,select;
	output out1;

	assign out1 = (select==0) ? input1 : input2; 

endmodule




module mux21_8(input1,input2,select,out1);
	input input1,input2,select;
	output reg out1; 
	
alwaout1s@(*) begin 
	if (s==0)
		out1= input1; 
	else
		out1 = input2;
end

endmodule




module mux21_9(input1,input2,select,out1);
	input input1,input2,select;
	output reg out1; 
	
alwaout1s@(*) begin  
	case (s)
		0: out1 = input1; 
		1: out1 = input2;
	endcase
end

endmodule