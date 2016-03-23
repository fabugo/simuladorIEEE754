module arrange_result (
	input 		[4:0] 	exp,
	input 			 	arround,
	input 		[10:0] 	Rm,
	input 				As,
	input 				Bs,
	input 				swap,
	input 				carry,
	output 	reg [15:0]	Rsem
	);
			reg [4:0] 	rexp;
			reg [9:0] 	rRm;
			integer i,
					notfind,
					counter;
	always @ ( * ) begin
		rexp = 0;
		rRm = 0;
		if(As^Bs)begin
			notfind = 1;
			counter = 1;
			for(i=9;i>=0;i=i-1)begin
				if(Rm[i])	notfind = 0;
				if(notfind) 			counter = counter + 1;
			end
			if(!carry) 	rexp = exp - counter;
			else 		rexp = exp;
			rRm = Rm >> counter;
		end else begin
				rexp = exp + carry;
				rRm = Rm + arround;
		end
		if(swap)Rsem = {Bs,rexp,rRm};
		else 	Rsem = {As,rexp,rRm};
	end
endmodule // arrange_result
