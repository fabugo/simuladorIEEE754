module operate (
	input 		[4:0]	moves,
	input 		[9:0]	Am,
	input 		[9:0]	Bm,
	output 	reg			arround,
	output	reg			carry,
	output	reg [9:0]	Rm
	);
			reg [24:0] 	bgas;
			reg [10:0] 	R;
			reg [10:0]  B;
	always @ ( * ) begin
		bgas = 0;
		arround = 0;
		Rm = 0;
		if(moves) begin
			B = Bm;
			B[10] = 1;
			bgas = B >> moves;
			R = Am + bgas[24:15];
			Rm = R[9:0];
			carry = R[10];
			if(bgas[14:0]>0)arround = 1;
			else 			arround = 0;
		end else begin
			R = Am + Bm;
			Rm = R >> 1;
			carry = 1;
		end
	end
endmodule // operate
