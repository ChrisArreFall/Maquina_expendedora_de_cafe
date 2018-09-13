module Seleccionador
			(input logic [3:0]seleccionador_4bits,
			 input logic [3:0] Acumulador_Monedas,
  			 output logic [6:0] Segmentos0,Segmentos1,Segmentos2,Segmentos3,
			 output logic LEDS_Aceptada);
			 
			 logic [3:0]vuelto;
			 
			 always_comb
				if (seleccionador_4bits==4'b0001&&Acumulador_Monedas>=4'b0011) 
					begin
						LEDS_Aceptada = 1'b1;
						vuelto = Acumulador_Monedas - 4'b0011;
					end	
				else if (seleccionador_4bits==4'b0010&&Acumulador_Monedas>=4'b0100) 
					begin
						LEDS_Aceptada = 1'b1;
						vuelto = Acumulador_Monedas - 4'b0100;
					end
				else if (seleccionador_4bits==4'b0100&&Acumulador_Monedas>=4'b0101) 
					begin
						LEDS_Aceptada = 1'b1;
						vuelto = Acumulador_Monedas - 4'b0101;
					end
				else if (seleccionador_4bits==4'b1000&&Acumulador_Monedas>=4'b0111)
					begin
						LEDS_Aceptada = 1'b1;
						vuelto = Acumulador_Monedas - 4'b0111;
					end
				else 
					begin
						LEDS_Aceptada = 1'b0;
						vuelto = 4'b1111;
					end
					
			always_comb 
				case(vuelto) 
					4'b0000: 
						begin             //abcdefg
							Segmentos0 = ~7'b1111110; 
							Segmentos1 = ~7'b1111110;
							Segmentos2 = ~7'b1111110;
							Segmentos3 = ~7'b1111110;
						end
					4'b0001: 
						begin
							Segmentos0 = ~7'b1111110; 
							Segmentos1 = ~7'b1111110;
							Segmentos2 = ~7'b1111001;
							Segmentos3 = ~7'b1111110;
						end 
					4'b0010: 
						begin
							Segmentos0 = ~7'b1111110; 
							Segmentos1 = ~7'b1111110;
							Segmentos2 = ~7'b1101101;
							Segmentos3 = ~7'b1111110;
						end 
					4'b0011: 
						begin
							Segmentos0 = ~7'b1111110; 
							Segmentos1 = ~7'b1111110;
							Segmentos2 = ~7'b1111001;
							Segmentos3 = ~7'b1111110;
						end 
					4'b0100: 
						begin
							Segmentos0 = ~7'b1111110; 
							Segmentos1 = ~7'b1111110;
							Segmentos2 = ~7'b0110011;
							Segmentos3 = ~7'b1111110;
						end 
					4'b0101: 
						begin
							Segmentos0 = ~7'b1111110; 
							Segmentos1 = ~7'b1111110;
							Segmentos2 = ~7'b1011011;
							Segmentos3 = ~7'b1111110;
						end 
					4'b0110: 
						begin
							Segmentos0 = ~7'b1111110; 
							Segmentos1 = ~7'b1111110;
							Segmentos2 = ~7'b1011111;
							Segmentos3 = ~7'b1111110;
						end 
					4'b0111: 
						begin
							Segmentos0 = ~7'b1111110; 
							Segmentos1 = ~7'b1111110;
							Segmentos2 = ~7'b1110000;
							Segmentos3 = ~7'b1111110;
						end 
					4'b1000: 
						begin
							Segmentos0 = ~7'b1111110; 
							Segmentos1 = ~7'b1111110;
							Segmentos2 = ~7'b1111111;
							Segmentos3 = ~7'b1111110;
						end
					4'b1001: 
						begin
							Segmentos0 = ~7'b1111110; 
							Segmentos1 = ~7'b1111110;
							Segmentos2 = ~7'b1111011;
							Segmentos3 = ~7'b1111110;
						end 
					4'b1010: 
						begin
							Segmentos0 = ~7'b1111110; 
							Segmentos1 = ~7'b1111110;
							Segmentos2 = ~7'b1111110;
							Segmentos3 = ~7'b0110000;
						end 
					4'b1011: 
						begin
							Segmentos0 = ~7'b1111110; 
							Segmentos1 = ~7'b1111110;
							Segmentos2 = ~7'b0110000;
							Segmentos3 = ~7'b0110000;
						end 
					4'b1100: 
						begin
							Segmentos0 = ~7'b1111110; 
							Segmentos1 = ~7'b1111110;
							Segmentos2 = ~7'b1101101;
							Segmentos3 = ~7'b0110000;
						end 
					4'b1101: 
						begin
							Segmentos0 = ~7'b1111110; 
							Segmentos1 = ~7'b1111110;
							Segmentos2 = ~7'b1111001;
							Segmentos3 = ~7'b0110000;
						end 
					4'b1110: 
						begin
							Segmentos0 = ~7'b1111110; 
							Segmentos1 = ~7'b1111110;
							Segmentos2 = ~7'b0110011;
							Segmentos3 = ~7'b0110000;
						end  
					4'b1111: 
						begin
							Segmentos0 = ~7'b1111110; 
							Segmentos1 = ~7'b1111110;
							Segmentos2 = ~7'b1011011;
							Segmentos3 = ~7'b0110000;
						end
					default: 
						begin
							Segmentos0 = ~7'b1111110; 
							Segmentos1 = ~7'b0000101;
							Segmentos2 = ~7'b0000101;
							Segmentos3 = ~7'b1001111;
						end 
				endcase 
endmodule 
			 
			 