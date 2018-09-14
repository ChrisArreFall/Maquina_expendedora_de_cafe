module Sumador (input logic [3:0] monedas,
					 input logic LEDS_Aceptada,
					output logic [3:0] saldo,
					output logic [6:0] segm1, segm2);
					
					logic enable = 1'b0;	
					
	// Main input logic
	always_ff @ (LEDS_Aceptada, monedas[0], monedas[1], monedas[2])
		if (monedas[2] || LEDS_Aceptada) 
			saldo <= 0;
		else if (monedas[1] && ~enable)
			saldo = saldo + 5;
		else if (monedas[0] && ~enable)
			saldo = saldo +1;

	always_comb
		if (saldo>=7)
			enable = 1'b1;
		else
			enable = 1'b0;
	
	// Diplays 				
	always_comb
		case (saldo)
			4'b0000: segm1=  7'b111_1110;
			4'b0001: segm1 = 7'b011_0000;
			4'b0010: segm1 = 7'b110_1101;
			4'b0011: segm1 = 7'b111_1001;
			4'b0100: segm1 = 7'b011_0011;
			4'b0101: segm1 = 7'b101_1011;
			4'b0110: segm1 = 7'b101_1111;
			4'b0111: segm1 = 7'b111_0000;
			4'b1000: segm1 = 7'b111_1111;
			4'b1001: segm1 = 7'b111_0011;
			4'b1010: segm1 = 7'b111_1110;
			4'b1011: segm1 = 7'b011_0000;
			4'b1100: segm1 = 7'b110_1101;
			4'b1101: segm1 = 7'b111_1001;
			4'b1110: segm1 = 7'b011_0011;
			4'b1111: segm1 = 7'b101_1011;
			default: segm1 = 7'b000_0000;
		endcase
		
	always_comb
		case (saldo)
			4'b0000: segm2 = 7'b111_1110;
			4'b0001: segm2 = 7'b111_1110;
			4'b0010: segm2 = 7'b111_1110;
			4'b0011: segm2 = 7'b111_1110;
			4'b0100: segm2 = 7'b111_1110;
			4'b0101: segm2 = 7'b111_1110;
			4'b0110: segm2 = 7'b111_1110;
			4'b0111: segm2 = 7'b111_1110;
			4'b1000: segm2 = 7'b111_1110;
			4'b1001: segm2 = 7'b111_1110;
			4'b1010: segm2 = 7'b011_0000;
			4'b1011: segm2 = 7'b011_0000;
			4'b1100: segm2 = 7'b011_0000;
			4'b1101: segm2 = 7'b011_0000;
			4'b1110: segm2 = 7'b011_0000;
			4'b1111: segm2 = 7'b011_0000;
			default: segm2 = 7'b000_0000;
		endcase
		
		
endmodule
		