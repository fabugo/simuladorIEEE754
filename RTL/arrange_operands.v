module arrange_operands(
	input 		[15:0] 	Asem,
	input 		[15:0] 	Bsem,
	output 	reg	[4:0] 	moves,
	output 	reg	 		swap,
	output 	reg [4:0] 	exp,
	output 	reg [9:0] 	Am,
	output 	reg [9:0] 	Bm
	);
	always @ ( * ) begin
		if(Asem[14:10]<Bsem[14:10])begin
			swap = 1;
			Am = Bsem[9:0];
			Bm = Asem[9:0];
			exp = Bsem[14:10];
			moves = Bsem[14:10] - Asem[14:10];
		end else begin
			swap = 0;
			Am = Asem[9:0];
			Bm = Bsem[9:0];
			exp = Asem[14:10];
			moves = Asem[14:10] - Bsem[14:10];
		end
	end
endmodule // arrange_operands
