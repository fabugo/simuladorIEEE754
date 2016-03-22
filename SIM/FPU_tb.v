module FPU_tb ();
	FPU fpu(
		.Asem(Asem),
		.Bsem(Bsem),
		.Rsem(Rsem)
		);
	always begin
		Asem = 1;
		Bsem = 0;
		#1
		$display("Rsem: %b",Rsem);
	end
endmodule // FPU_tb
