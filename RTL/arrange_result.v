module arrange_result (
	input 		[4:0] 	exp,
	input 		[2:0] 	arround,
	input 		[9:0] 	Rm,
	input 				As,
	input 				Bs,
	input 				swap,
	input 				carry,
	output 	reg [15:0]	Rsem
	);
			reg [4:0] 	rexp;
			reg [9:0] 	rRm;
	always @ ( * ) begin
				rexp = exp + carry;
				rRm = Rm + arround;
		if(swap)Rsem = {Bs,rexp,rRm};
		else 	Rsem = {As,rexp,rRm};
	end
endmodule // arrange_result
