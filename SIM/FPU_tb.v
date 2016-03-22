module FPU_tb ();
	reg [15:0]	Asem,
				Bsem; 
	wire [15:0] Rsem;
	FPU fpu(
		.Asem(Asem),
		.Bsem(Bsem),
		.Rsem(Rsem)
		);
	always begin
		Asem = {1'b0,5'b10000,10'b0000000000};
		Bsem = {1'b0,5'b10000,10'b0000000000};
		#1
		$display("\n\nAsem: %b\nBsem: %b\nRsem: %b",Asem,Bsem,Rsem);
		//----------------------------------------------------------
		Asem = {1'b0,5'b10000,10'b011000000};
		Bsem = {1'b0,5'b10000,10'b001000000};
		#1
		$display("\n\nAsem: %b\nBsem: %b\nRsem: %b",Asem,Bsem,Rsem);
		//----------------------------------------------------------
		Asem = {1'b0,5'b10011,10'b0110000000};
		Bsem = {1'b0,5'b10011,10'b0101000000};
		#1
		$display("\n\nAsem: %b\nBsem: %b\nRsem: %b",Asem,Bsem,Rsem);
		//----------------------------------------------------------
		Asem = {1'b0,5'b10000,10'b0000000000};
		Bsem = {1'b1,5'b10000,10'b0000000000};
		#1
		$display("\n\nAsem: %b\nBsem: %b\nRsem: %b",Asem,Bsem,Rsem);
		//----------------------------------------------------------
		Asem = {1'b0,5'b10000,10'b011000000};
		Bsem = {1'b1,5'b10000,10'b001000000};
		#1
		$display("\n\nAsem: %b\nBsem: %b\nRsem: %b",Asem,Bsem,Rsem);
		//----------------------------------------------------------
		Asem = {1'b0,5'b10011,10'b0110000000};
		Bsem = {1'b1,5'b10011,10'b0101000000};
		#1
		$display("\n\nAsem: %b\nBsem: %b\nRsem: %b",Asem,Bsem,Rsem);
		//----------------------------------------------------------
	end
endmodule // FPU_tb
