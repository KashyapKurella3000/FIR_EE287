// Andres Gamboa
// EE 287 Project: Shift Register
// Spring 2023

module sr(

	input  signed Clk,
	input  signed Reset,
	input  signed Read,
	input  signed [23:0] FifoOutI,
	input  signed [23:0] FifoOutQ,
	output reg signed [23:0] DataOutI,
	output reg signed [23:0] DataOutQ
	);

	reg [23:0] SRI [0:28];
	reg [23:0] SRQ [0:28];

	always @(posedge Clk or posedge Reset) begin
		if (Reset) begin
			SRI[0] <= 0;
			SRQ[0] <= 0;
			SRI[1] <= 0;
			SRQ[1] <= 0;
			SRI[2] <= 0;
			SRQ[2] <= 0;
			SRI[3] <= 0;
			SRQ[3] <= 0;
			SRI[4] <= 0;
			SRQ[4] <= 0;
			SRI[5] <= 0;
			SRQ[5] <= 0;
			SRI[6] <= 0;
			SRQ[6] <= 0;
			SRI[7] <= 0;
			SRQ[7] <= 0;
			SRI[8] <= 0;
			SRQ[8] <= 0;
			SRI[9] <= 0;
			SRQ[9] <= 0;
			SRI[10] <= 0;
			SRQ[10] <= 0;
			SRI[11] <= 0;
			SRQ[11] <= 0;
			SRI[12] <= 0;
			SRQ[12] <= 0;
			SRI[13] <= 0;
			SRQ[13] <= 0;
			SRI[14] <= 0;
			SRQ[14] <= 0;
			SRI[15] <= 0;
			SRQ[15] <= 0;
			SRI[16] <= 0;
			SRQ[16] <= 0;
			SRI[17] <= 0;
			SRQ[17] <= 0;
			SRI[18] <= 0;
			SRQ[18] <= 0;
			SRI[19] <= 0;
			SRQ[19] <= 0;
			SRI[20] <= 0;
			SRQ[20] <= 0;
			SRI[21] <= 0;
			SRQ[21] <= 0;
			SRI[22] <= 0;
			SRQ[22] <= 0;
			SRI[23] <= 0;
			SRQ[23] <= 0;
			SRI[24] <= 0;
			SRQ[24] <= 0;
			SRI[25] <= 0;
			SRQ[25] <= 0;
			SRI[26] <= 0;
			SRQ[26] <= 0;
			SRI[27] <= 0;
			SRQ[27] <= 0;
			SRI[28] <= 0;
			SRQ[28] <= 0;
			DataOutI <= 0;
			DataOutQ <= 0; end
		else begin
			if (Read) begin // will need to use an enable signal to shift in a new value from the FIFO
				SRI[0] <= FifoOutI;
				SRQ[0] <= FifoOutQ;
				SRI[1] <= SRI[0];
				SRQ[1] <= SRQ[0];
				SRI[2] <= SRI[1];
				SRQ[2] <= SRQ[1];
				SRI[3] <= SRI[2];
				SRQ[3] <= SRQ[2];
				SRI[4] <= SRI[3];
				SRQ[4] <= SRQ[3];
				SRI[5] <= SRI[4];
				SRQ[5] <= SRQ[4];
				SRI[6] <= SRI[5];
				SRQ[6] <= SRQ[5];
				SRI[7] <= SRI[6];
				SRQ[7] <= SRQ[6];
				SRI[8] <= SRI[7];
				SRQ[8] <= SRQ[7];
				SRI[9] <= SRI[8];
				SRQ[9] <= SRQ[8];
				SRI[10] <= SRI[9];
				SRQ[10] <= SRQ[9];
				SRI[11] <= SRI[10];
				SRQ[11] <= SRQ[10];
				SRI[12] <= SRI[11];
				SRQ[12] <= SRQ[11];
				SRI[13] <= SRI[12];
				SRQ[13] <= SRQ[12];
				SRI[14] <= SRI[13];
				SRQ[14] <= SRQ[13];
				SRI[15] <= SRI[14];
				SRQ[15] <= SRQ[14];
				SRI[16] <= SRI[15];
				SRQ[16] <= SRQ[15];
				SRI[17] <= SRI[16];
				SRQ[17] <= SRQ[16];
				SRI[18] <= SRI[17];
				SRQ[18] <= SRQ[17];
				SRI[19] <= SRI[18];
				SRQ[19] <= SRQ[18];
				SRI[20] <= SRI[19];
				SRQ[20] <= SRQ[19];
				SRI[21] <= SRI[20];
				SRQ[21] <= SRQ[20];
				SRI[22] <= SRI[21];
				SRQ[22] <= SRQ[21];
				SRI[23] <= SRI[22];
				SRQ[23] <= SRQ[22];
				SRI[24] <= SRI[23];
				SRQ[24] <= SRQ[23];
				SRI[25] <= SRI[24];
				SRQ[25] <= SRQ[24];
				SRI[26] <= SRI[25];
				SRQ[26] <= SRQ[25];
				SRI[27] <= SRI[26];
				SRQ[27] <= SRQ[26];
				SRI[28] <= SRI[27];
				SRQ[28] <= SRQ[27];
				DataOutI <= SRI[28];
				DataOutQ <= SRQ[28];
			end
		end
	end
	
endmodule : sr
