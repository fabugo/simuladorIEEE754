module arrange_operands(
	input 		[15:0] 	Asem,
	input 		[15:0] 	Bsem,
	output 	reg 		As,
	output	reg 		Bs,
	output 	reg	[4:0] 	moves,
	output 	reg	 		swap,
	output 	reg [4:0] 	exp,
	output 	reg [9:0] 	Am,
	output 	reg [9:0] 	Bm
	);
	always @ ( * ) begin
		if (Asem[14:0] == Bsem[14:0] && Asem[15] != Bsem[15]) begin
			swap = 0;
			Am = 0;
			Bm = 0;
			As = 0;
			Bs = 0;
			exp = 0;
			moves = 0;
		end else begin
			if(Asem[14:10]<Bsem[14:10])begin
				swap = 1;
				Am = Bsem[9:0];
				Bm = Asem[9:0];
				As = Asem[15];
				Bs = Bsem[15];
				exp = Bsem[14:10];
				moves = Bsem[14:10] - Asem[14:10];
			end else begin
				swap = 0;
				Am = Asem[9:0];
				Bm = Bsem[9:0];
				As = Asem[15];
				Bs = Bsem[15];
				exp = Asem[14:10];
				moves = Asem[14:10] - Bsem[14:10];
			end
		end
	end
endmodule // arrange_operands
