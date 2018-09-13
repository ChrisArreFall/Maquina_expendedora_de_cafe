module Cafetera_Struct
		(input logic clk,
	    input logic [3:0] Monedas,seleccionador_4bits,
	    output logic [6:0] Segmentos0,Segmentos1,Segmentos2,Segmentos3,
	    output logic [4:0] LEDS_Seleccion,
		 output logic LEDS_Aceptada);
	  
	  
	  logic [3:0] Acumulador_Monedas = 4'b111;
	  logic [6:0] Segmentos0_Suma,Segmentos1_Suma,Segmentos2_Suma,Segmentos3_Suma,Segmentos0_Selec,Segmentos1_Selec,Segmentos2_Selec,Segmentos3_Selec;
	  
	  /*
	  Sumador suma_Monedas(Monedas,Acumulador_Monedas,Segmentos0_Suma,Segmentos1_Suma,Segmentos2_Suma,Segmentos3_Suma);
	  */
	  
	  Seleccionador seleccionador_Cafe(seleccionador_4bits,Acumulador_Monedas,Segmentos0_Selec,Segmentos1_Selec,Segmentos2_Selec,Segmentos3_Selec,LEDS_Aceptada);
	  
	  
	  mux_Display_7 display(Segmentos0_Suma,Segmentos1_Suma,Segmentos2_Suma,Segmentos3_Suma,Segmentos0_Selec,Segmentos1_Selec,Segmentos2_Selec,Segmentos3_Selec,Segmentos0,Segmentos1,Segmentos2,Segmentos3);
	  
	  /*
	  Cafetera cafetera_Proc(seleccionador_4bits,LEDS_Aceptada,LEDS_Seleccion);
	  */
					
	  
	  
	  
endmodule 