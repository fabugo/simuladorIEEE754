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
	
		Asem = {1'b1,5'b01110,10'b1001100110};
		Bsem = {1'b0,5'b01111,10'b1100110011};
		Resp = {1'b0,5'b01111,10'b0000000000};
		#1
		$display("\nTeste %d\nAsem: %b\nBsem: %b\nRsem: %b",c,Asem,Bsem,Rsem);
		if (Resp == Rsem) 	$display("OKAY!");
		else 				$display("ERRO!");
	c = c + 1;

		Asem = {1'b1,5'b10010,10'b1001100000};
		Bsem = {1'b1,5'b10001,10'b0001100000};
		Resp = {1'b1,5'b10011,10'b0001001000};
		#1
		$display("\nTeste %d\nAsem: %b\nBsem: %b\nRsem: %b",c,Asem,Bsem,Rsem);
		if (Resp == Rsem) 	$display("OKAY!");
		else 				$display("ERRO!");
	c = c + 1;

		Asem = {1'b1,5'b10001,10'b0010000000};
		Bsem = {1'b1,5'b10010,10'b0010100000};
		Resp = {1'b1,5'b10010,10'b1011100000};
		#1
		$display("\nTeste %d\nAsem: %b\nBsem: %b\nRsem: %b",c,Asem,Bsem,Rsem);
		if (Resp == Rsem) 	$display("OKAY!");
		else 				$display("ERRO!");
	c = c + 1;

		Asem = {1'b1,5'b10001,10'b0000000000};
		Bsem = {1'b1,5'b10010,10'b1000100000};
		Resp = {1'b1,5'b10011,10'b0000010000};
		#1
		$display("\nTeste %d\nAsem: %b\nBsem: %b\nRsem: %b",c,Asem,Bsem,Rsem);
		if (Resp == Rsem) 	$display("OKAY!");
		else 				$display("ERRO!");
	c = c + 1;

		Asem = {1'b0,5'b10001,10'b0000000000};
		Bsem = {1'b0,5'b10010,10'b1000100000};
		Resp = {1'b0,5'b10011,10'b0000010000};
		#1
		$display("\nTeste %d\nAsem: %b\nBsem: %b\nRsem: %b",c,Asem,Bsem,Rsem);
		if (Resp == Rsem) 	$display("OKAY!");
		else 				$display("ERRO!");
	c = c + 1;

		Asem = {1'b0,5'b10001,10'b0000000000};
		Bsem = {1'b1,5'b10001,10'b0000000000};
		Resp = {1'b0,5'b00000,10'b0000000000};
		#1
		$display("\nTeste %d\nAsem: %b\nBsem: %b\nRsem: %b",c,Asem,Bsem,Rsem);
		if (Resp == Rsem) 	$display("OKAY!");
		else 				$display("ERRO!");
	c = c + 1;
	end

	initial begin
		
	end
endmodule // FPU_tb
