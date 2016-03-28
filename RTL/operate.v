module operate (
	input 		[4:0]	moves,
	input 		[9:0]	Am,
	input 		[9:0]	Bm,
	input 				As,
	input 				Bs,
	output 	reg			arround,
	output	reg			carry,
	output	reg [10:0]	Rm
	);
			reg [25:0] 	bgas;
			reg [11:0] 	R;
			reg [10:0]  A;
			reg [10:0]  B;
	always @ ( * ) begin
		bgas = 0;
		arround = 0;
		Rm = 0;
		if(moves) begin
			A = Am;
			A[10] = 1;
			B = Bm;
			B[10] = 1;
			bgas[25:15] = B >> moves;
			if(As != Bs) bgas[25:15] = ~bgas[25:15] + 10'b0000000001;
			else bgas[25:15] = bgas[25:15] + 10'b0000000000;
			R = A + bgas[25:15];
			carry = R[11];
			if(carry && As == Bs) R[10:0] = R[10:0] >> 1;
			Rm = R[10:0];
			if(bgas[14:0]>0)arround = 1;
			else 			arround = 0;
		end else begin
			R = Am + Bm;
			Rm = R >> 1;
			carry = 1;
		end
	end
endmodule // operate
