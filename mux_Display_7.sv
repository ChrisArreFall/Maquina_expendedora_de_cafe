module mux_Display_7
			(input logic [6:0] Segmentos0_Suma,Segmentos1_Suma,Segmentos2_Suma,Segmentos3_Suma,Segmentos0_Selec,Segmentos1_Selec,Segmentos2_Selec,Segmentos3_Selec,
			 output logic [6:0] Segmentos0,Segmentos1,Segmentos2,Segmentos3);
			 
			 
			 
			 always_comb 
				if (Segmentos3_Selec == ~7'b1001111) 
					begin
						Segmentos0 = Segmentos0_Suma;
						Segmentos1 = Segmentos1_Suma;
						Segmentos2 = Segmentos2_Suma;
						Segmentos3 = Segmentos3_Suma;
					end
				else 
					begin
						Segmentos0 = Segmentos0_Selec;
						Segmentos1 = Segmentos1_Selec;
						Segmentos2 = Segmentos2_Selec;
						Segmentos3 = Segmentos3_Selec;
					end
					
			
endmodule 
			 
			 