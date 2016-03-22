module operate (
	input 		[4:0]	moves,
	input 		[9:0]	Am,
	input 		[9:0]	Bm,
	output 				arround,
	output				carry,
	output	reg [9:0]	Rm
	);
			reg [24:0] 	bgas;
			reg [10:0] 	R;
	always @ ( * ) begin
		bgas = 0;
		bgas = B >> moves;
		R = Am + bgas[24:15];
		Rm = R[9:0];
		carry = R[10];
		if(bgas[14:0]>0)arround = 1;
	end
endmodule // operate
