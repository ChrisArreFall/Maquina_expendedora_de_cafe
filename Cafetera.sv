module Cafetera(input  Clock,
								input logic[3:0] cofeeSelection,
								output logic[4:0] status);
							/*
	logic[7:0] timer,data;
	assign timer = 8'b00000000';

	case (cofeeSelection)
	
	
		//Se selecciona un cafe expresso
		'0001' : begin 
		
			do
				begin
					assign status = '10000';//Se echa agua por dos segundos
					counter c10 (Clock, 0, 0, 1, 1, data, timer);
				end
			 while(timer != 8'b00010000');
			 
			 assign timer ='00000000';
			 
			 do
				begin
					assign status = '01000';//Se echa cafe por tres segundos
					counter c20 (Clock, 0, 0, 1, 1, data, timer);
				end
			 while(timer != '00011000');
			
			assign timer ='00000000';
			 
			 do
				begin
					assign status = '00001';//Se echa azucar por un segundo
					counter c30 (Clock, 0, 0, 1, 1, data, timer);
				end
			 while(timer != '00001000');
			
		end
		
		
		
		
		//Se selecciona un cafe con leche
		'0010' : begin 
			do
				begin
					assign status = '10000';//Se echa agua por dos segundos
					counter c11 (Clock, 0, 0, 1, 1, data, timer);
				end
			 while(timer != '00010000');
			 
			 assign timer ='00000000';
			 
			 do
				begin
					assign status = '01000';//Se echa cafe por dos segundos
					counter c21 (Clock, 0, 0, 1, 1, data, timer);
				end
			 while(timer != '00010000');
			 
			 assign timer ='00000000';
			 
			 do
				begin
					assign status = '00100';//Se echa leche por un segundo
					counter c31 (Clock, 0, 0, 1, 1, data, timer);
				end
			 while(timer != '00001000');
			
			assign timer ='00000000';
			 
			 do
				begin
					assign status = '00001';//Se echa azucar por un segundo
					counter c41 (Clock, 0, 0, 1, 1, data, timer);
				end
			 while(timer != '00001000');
		end
		
		
		
		
		
		
		//Se selecciona un cafe capuccino
		'0100' : begin 
			do
				begin
					assign status = '10000';//Se echa agua por dos segundos
					counter c11 (Clock, 0, 0, 1, 1, data, timer);
				end
			 while(timer != '00010000');
			 
			 assign timer ='00000000';
			 
			 do
				begin
					assign status = '01000';//Se echa cafe por un segundo
					counter c21 (Clock, 0, 0, 1, 1, data, timer);
				end
			 while(timer != '00001000');
			 
			 assign timer ='00000000';
			 
			 do
				begin
					assign status = '00100';//Se echa leche por dos segundos
					counter c31 (Clock, 0, 0, 1, 1, data, timer);
				end
			 while(timer != '00010000');
			
			assign timer ='00000000';
			 
			 do
				begin
					assign status = '00001';//Se echa azucar por un segundo
					counter c41 (Clock, 0, 0, 1, 1, data, timer);
				end
			 while(timer != '00001000');
		end
		
		
		
		
		
		//Se selecciona un cafe mocca
		'1000' : begin 
			do
				begin
					assign status = '10000';//Se echa agua por un segundo
					counter c11 (Clock, 0, 0, 1, 1, data, timer);
				end
			 while(timer != '00001000');
			 
			 assign timer ='00000000';
			 
			 do
				begin
					assign status = '01000';//Se echa cafe por un segundo
					counter c2 (Clock, 0, 0, 1, 1, data, timer);
				end
			 while(timer != '00001000');
			 
			 assign timer ='00000000';
			 
			 do
				begin
					assign status = '00100';//Se echa leche por un segundo 
					counter c3 (Clock, 0, 0, 1, 1, data, timer);
				end
			 while(timer != '00010000');
			
			assign timer ='00000000';
			
			do
				begin
					assign status = '00010';//Se echa chocolate por dos segundos
					counter c3 (Clock, 0, 0, 1, 1, data, timer);
				end
			 while(timer != '00010000');
			
			assign timer ='00000000';
			 
			 do
				begin
					assign status = '00001';//Se echa azucar por un segundo
					counter c4 (Clock, 0, 0, 1, 1, data, timer);
				end
			 while(timer != '00001000');
		end
		end
		
		default : begin
		// Other code
		end
	endcase
*/
endmodule