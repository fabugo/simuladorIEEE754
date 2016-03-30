module FPU_tb ();
	reg [15:0]	Asem,
				Bsem,
				Resp;
	wire [15:0] Rsem;
	/*
	integer erro;
    task checkOutput;
    	input [15:0] A,B,Resp;
        if(Rsem!=Resp) begin
        	$display("A: %b\nB: %b",A,B);
        	erro = erro + 1;
    	end
    endtask
	*/
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

			Asem = {1'b0,5'b10101,10'b0000101100};
			Bsem = {1'b1,5'b10101,10'b0000001100};
			Resp = {1'b0,5'b10000,10'b0000000000};
			#1
			$display("\nTeste %d\nAsem: %b\nBsem: %b\nRsem: %b",c,Asem,Bsem,Rsem);
			if (Resp == Rsem) 	$display("OKAY!");
			else 				$display("ERRO!");
		c = c + 1;

			Asem = {1'b0,5'b11000,10'b0100111101};
			Bsem = {1'b1,5'b11000,10'b0100101001};
			Resp = {1'b0,5'b10010,10'b0100000000};
			#1
			$display("\nTeste %d\nAsem: %b\nBsem: %b\nRsem: %b",c,Asem,Bsem,Rsem);
			if (Resp == Rsem) 	$display("OKAY!");
			else 				$display("ERRO!");
		c = c + 1;

			Asem = {1'b0,5'b00000,10'b0000000000};
			Bsem = {1'b1,5'b10000,10'b0000000000};
			Resp = {1'b1,5'b10000,10'b0000000000};
			#1
			$display("\nTeste %d\nAsem: %b\nBsem: %b\nRsem: %b",c,Asem,Bsem,Rsem);
			if (Resp == Rsem) 	$display("OKAY!");
			else 				$display("ERRO!");
		c = c + 1;

			Asem = {1'b1,5'b00000,10'b0000000000};
			Bsem = {1'b1,5'b10000,10'b0100101001};
			Resp = {1'b1,5'b10000,10'b0100101001};
			#1
			$display("\nTeste %d\nAsem: %b\nBsem: %b\nRsem: %b",c,Asem,Bsem,Rsem);
			if (Resp == Rsem) 	$display("OKAY!");
			else 				$display("ERRO!");
		c = c + 1;

		Asem = {1'b1,5'b10000,10'b0100101001};
		Bsem = {1'b1,5'b00000,10'b0000000000};
		Resp = {1'b1,5'b10000,10'b0100101001};
		#1
		$display("\nTeste %d\nAsem: %b\nBsem: %b\nRsem: %b",c,Asem,Bsem,Rsem);
		if (Resp == Rsem) 	$display("OKAY!");
		else 				$display("ERRO!");
	c = c + 1;
	end
	/*
	localparam testcases = 1000;
	reg [107:0] testvector [0:testcases-1];
	integer i;
    initial begin
	    erro = 0;
	       $readmemb ( "testvectors.input" , testvector );
	       for(i = 0;i < testcases;i = i + 1)begin
	           Asem   = testvector [i][47:31];
	           Bsem   = testvector [i][32:16];
	           Resp   = testvector [i][15:0];
	           #1
	           checkOutput(Asem,Bsem,Resp);
	       end
	       $display("Executing %d tests...",testcases);
	       $display("Pass: %d",testcases - erro);
	       $display("Erro: %d",erro);
	       $display("Erro Porcent: %d",(erro*100)/(testcases));
    end
	*/
endmodule // FPU_tb
