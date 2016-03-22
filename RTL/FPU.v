module FPU (
	input 		[15:0]	Asem,
	input 		[15:0]	Bsem,
	output 		[15:0]	Rsem
	);
	wire 			swap,
					arround,
					carry;
	wire 	[4:0] 	moves,
					exp;
	wire 	[9:0] 	Am,
					Bm,
					Rm;
	arrange_operands ao(
		.Asem(Asem),
		.Bsem(Bsem),
		.moves(moves),
		.swap(swap),
		.exp(exp),
		.Am(Am),
		.Bm(Bm)
		);
	operate o(
		.moves(moves),
		.Am(Am),
		.Bm(Bm),
		.arround(arround),
		.carry(carry),
		.Rm(Rm)
		);
	arrange_result ar(
		.exp(exp),
		.arround(arround),
		.Rm(Rm),
		.As(Asem[15]),
		.Bs(Bsem[15]),
		.swap(swap),
		.carry(carry),
		.Rsem(Rsem)
		);
endmodule // FPU
