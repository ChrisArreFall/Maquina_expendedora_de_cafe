module Seleccionador_tb();

	logic [3:0] seleccionador_4bits;
	logic [3:0] Acumulador_Monedas;
  	logic [6:0] Segmentos0,Segmentos1,Segmentos2,Segmentos3;
	logic LEDS_Aceptada;

	// instantiate design under test
	assign Acumulador_Monedas = 4'b0111;
	Seleccionador dut(seleccionador_4bits, Acumulador_Monedas, Segmentos0, Segmentos1, Segmentos2, Segmentos3, LEDS_Aceptada);

		// apply inputs
	initial begin
			seleccionador_4bits = 4'b0001; #20;	
			seleccionador_4bits = 4'b0010; #20;
			seleccionador_4bits = 4'b0100; #20; 
			seleccionador_4bits = 4'b1000; #20;
		end
		
endmodule

	
	