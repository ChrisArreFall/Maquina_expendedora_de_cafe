module Cafetera_Struct_tb();
	logic clk;
	logic [3:0] Monedas,seleccionador_4bits;
	logic [6:0] Segmentos0,Segmentos1,Segmentos2,Segmentos3;
	logic [3:0] LEDS_Seleccion;
	logic LEDS_Aceptada;
	
	// instantiate device under test 
	Cafetera_Struct dut(clk,Monedas,seleccionador_4bits,Segmentos0,Segmentos1,Segmentos2,Segmentos3,LEDS_Seleccion,LEDS_Aceptada); 
	// apply inputs one at a time 
	// checking results 
	//Variedad Precio
	//Cafe expreso      300 colones   0
	//Cafe con leche    400 colones   1
	//Capuccino         500 colones   2
	//Mocaccino         700 colones   3
	initial begin 
		clk=0; Monedas=4'b0001; seleccionador_4bits=4'b0000; #10; //una moneda de 100 y nada seleccionado
			assert (Segmentos3 === 7'b0000001 && Segmentos2 === 7'b1001111 && Segmentos1 === 7'b0000001 && Segmentos0 === 7'b0000001 && LEDS_Aceptada === 1'b0) else $error("000 failed."); 
		
		
		clk=0; Monedas=4'b0001; seleccionador_4bits=4'b0000; #10; //una moneda de 100 y nada seleccionado
			assert (Segmentos3 === 7'b0000001 && Segmentos2 === 7'b0010010 && Segmentos1 === 7'b0000001 && Segmentos0 === 7'b0000001 && LEDS_Aceptada === 1'b0) else $error("000 failed."); 
		
		
		clk=0; Monedas=4'b0010; seleccionador_4bits=4'b0100; #10; //una moneda de 500 y capuccino seleccionado
			assert (Segmentos3 === 7'b0000001 && Segmentos2 === 7'b0000110 && Segmentos1 === 7'b0000001 && Segmentos0 === 7'b0000001 && LEDS_Aceptada === 1'b1) else $error("000 failed."); 
		
		
		clk=0; Monedas=4'b0001; seleccionador_4bits=4'b0001; #10; //una moneda de 100 y nada seleccionado
			assert (Segmentos3 === 7'b0000001 && Segmentos2 === 7'b1001111 && Segmentos1 === 7'b0000001 && Segmentos0 === 7'b0000001 && LEDS_Aceptada === 1'b0) else $error("000 failed."); 
		
		
		clk=0; Monedas=4'b0010; seleccionador_4bits=4'b0001; #10; //una moneda de 100 y nada seleccionado
			assert (Segmentos3 === 7'b0000001 && Segmentos2 === 7'b0000110 && Segmentos1 === 7'b0000001 && Segmentos0 === 7'b0000001 && LEDS_Aceptada === 1'b1) else $error("000 failed."); 
		
		
		clk=0; Monedas=4'b0001; seleccionador_4bits=4'b0000; #10; //una moneda de 100 y nada seleccionado
			assert (Segmentos3 === 7'b0000001 && Segmentos2 === 7'b1001111 && Segmentos1 === 7'b0000001 && Segmentos0 === 7'b0000001 && LEDS_Aceptada === 1'b0) else $error("000 failed."); 
		
		
		clk=0; Monedas=4'b0100; seleccionador_4bits=4'b0000; #10; //reseteo activado
			assert (Segmentos3 === 7'b0000001 && Segmentos2 === 7'b0000001 && Segmentos1 === 7'b0000001 && Segmentos0 === 7'b0000001 && LEDS_Aceptada === 1'b0) else $error("000 failed."); 
		
		
		clk=0; Monedas=4'b0001; seleccionador_4bits=4'b0000; #10; //una moneda de 100 y nada seleccionado
			assert (Segmentos3 === 7'b0000001 && Segmentos2 === 7'b1001111 && Segmentos1 === 7'b0000001 && Segmentos0 === 7'b0000001 && LEDS_Aceptada === 1'b0) else $error("000 failed."); 
	end 
	
	
endmodule
