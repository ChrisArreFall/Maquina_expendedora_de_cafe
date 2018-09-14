module Sumador_tb;

	logic [3:0] Monedas;
	logic Aceptada;
	logic [3:0] Saldo;
	logic [6:0] Segmentos0, Segmentos1;

	// instantiate design under test
	Sumador DUT (Monedas, Aceptada, Saldo, Segmentos0, Segmentos1);

		// apply inputs
	initial 
		begin
			Monedas = 4'b0100; Aceptada = 1'b0; #10; //Initial reset may be needed   
			Monedas = 4'b0001; Aceptada = 1'b0; #10; //+100  
			Monedas = 4'b0000; Aceptada = 1'b0; #10; //lower lever 			
			Monedas = 4'b0001; Aceptada = 1'b0; #10; //+100
			Monedas = 4'b0000; Aceptada = 1'b0; #10; //lower lever  
			Monedas = 4'b0001; Aceptada = 1'b0; #10; //+100
			Monedas = 4'b0010; Aceptada = 1'b0; #10; //Reached max balance
			Monedas = 4'b0001; Aceptada = 1'b0; #10; //should not increase balance
			Monedas = 4'b0100; Aceptada = 1'b0; #10; //reset
			Monedas = 4'b0010; Aceptada = 1'b0; #10; //+500
			Monedas = 4'b0001; Aceptada = 1'b0; #10; //+100
			Monedas = 4'b0010; Aceptada = 1'b0; #10; //+500 reach max
			Monedas = 4'b0001; Aceptada = 1'b0; #10; //should not increase balance
			Monedas = 4'b0010; Aceptada = 1'b0; #10; //should not increase balance
			Monedas = 4'b0111; Aceptada = 1'b0; #10; //"dirty" reset
			Monedas = 4'b0010; Aceptada = 1'b0; #10; //+500
			Monedas = 4'b0000; Aceptada = 1'b1; #10; //test accepted signal reset
		end
		
endmodule
