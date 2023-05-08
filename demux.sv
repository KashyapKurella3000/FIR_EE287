// Andres Gamboa
// EE 287 Project: Coefficient DeMUX
// Spring 2023

module demux(

	input  signed Clk,
	input  signed Reset,
	input  signed PushCoef,
	input  signed [4:0] CoefAddr,
	input  signed [26:0] CoefI,
	input  signed [26:0] CoefQ,
	output reg signed [26:0] Coef_Re [0:14],
	output reg signed [26:0] Coef_Img [0:14]
	);

	//reg [26:0] Coef_Re [0:14];
	//reg [26:0] Coef_Img [0:14];

	always @(posedge Clk or posedge Reset) begin
		if (Reset) begin
			Coef_Re[0]  <= 0;
			Coef_Img[0] <= 0;
			Coef_Re[1]  <= 0;
			Coef_Img[1] <= 0;
			Coef_Re[2]  <= 0;
			Coef_Img[2] <= 0;
			Coef_Re[3]  <= 0;
			Coef_Img[3] <= 0;
			Coef_Re[4]  <= 0;
			Coef_Img[4] <= 0;
			Coef_Re[5]  <= 0;
			Coef_Img[5] <= 0;
			Coef_Re[6]  <= 0;
			Coef_Img[6] <= 0;
			Coef_Re[7]  <= 0;
			Coef_Img[7] <= 0;
			Coef_Re[8]  <= 0;
			Coef_Img[8] <= 0;
			Coef_Re[9]  <= 0;
			Coef_Img[9] <= 0;
			Coef_Re[10]  <= 0;
			Coef_Img[10] <= 0;
			Coef_Re[11]  <= 0;
			Coef_Img[11] <= 0;
			Coef_Re[12]  <= 0;
			Coef_Img[12] <= 0;
			Coef_Re[13]  <= 0;
			Coef_Img[13] <= 0;
			Coef_Re[14]  <= 0;
			Coef_Img[14] <= 0; end
		else begin
			case(CoefAddr) 
				1  : begin Coef_Re[0]  <= CoefI; Coef_Img[0]  <= CoefQ; end
				2  : begin Coef_Re[1]  <= CoefI; Coef_Img[1]  <= CoefQ; end
				3  : begin Coef_Re[2]  <= CoefI; Coef_Img[2]  <= CoefQ; $display("Coef: %d", Coef_Re[1]);end
				4  : begin Coef_Re[3]  <= CoefI; Coef_Img[3]  <= CoefQ; end
				5  : begin Coef_Re[4]  <= CoefI; Coef_Img[4]  <= CoefQ; end
				6  : begin Coef_Re[5]  <= CoefI; Coef_Img[5]  <= CoefQ; end
				7  : begin Coef_Re[6]  <= CoefI; Coef_Img[6]  <= CoefQ; end
				8  : begin Coef_Re[7]  <= CoefI; Coef_Img[7]  <= CoefQ; end
				9  : begin Coef_Re[8]  <= CoefI; Coef_Img[8]  <= CoefQ; end
				10 : begin Coef_Re[9]  <= CoefI; Coef_Img[9]  <= CoefQ; end
				11 : begin Coef_Re[10] <= CoefI; Coef_Img[10] <= CoefQ; end
				12 : begin Coef_Re[11] <= CoefI; Coef_Img[11] <= CoefQ; end
				13 : begin Coef_Re[12] <= CoefI; Coef_Img[12] <= CoefQ; end
				14 : begin Coef_Re[13] <= CoefI; Coef_Img[13] <= CoefQ; end
				15 : begin Coef_Re[14] <= CoefI; Coef_Img[14] <= CoefQ; end // addr may be counting from 1 to 10
				//default
			endcase
		end
	end

endmodule : demux

// add pushcoef signal etc
