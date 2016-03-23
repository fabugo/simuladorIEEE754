module FPU_tb ();
	reg [15:0]	Asem,
				Bsem,
				Resp; 
	wire [15:0] Rsem;
	FPU fpu(
		.Asem(Asem),
		.Bsem(Bsem),
		.Rsem(Rsem)
		);
	integer c;
	initial begin
	c = 1;
		Asem = {1'b1,5'b01110,10'b1000000000};
		Bsem = {1'b0,5'b01101,10'b0000000000};
		Resp = {1'b0,5'b01110,10'b0000000000};
		#1
		$display("\nTeste %d\nAsem: %b\nBsem: %b\nRsem: %b",c,Asem,Bsem,Rsem);
		if (Resp != Rsem) 	$display("OKAY!");
		else 				$display("ERRO!");
	c = c + 1;
	c = 1;
		Asem = {1'b1,5'b01110,10'b1001100110};
		Bsem = {1'b0,5'b01111,10'b1100110011};
		Resp = {1'b0,5'b01111,10'b0000000000};
		#1
		$display("\nTeste %d\nAsem: %b\nBsem: %b\nRsem: %b",c,Asem,Bsem,Rsem);
		if (Resp == Rsem) 	$display("OKAY!");
		else 				$display("ERRO!");
	c = c + 1;
	end
endmodule // FPU_tb
