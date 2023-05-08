// Andres Gamboa
// EE 287 Project: FIR Filter
// Spring 2023

`include "fifo.sv"
`include "counter.sv"
`include "sr.sv"
`include "demux.sv"

module firc(

	input  signed Clk,
	input  signed Reset,
	input  signed PushIn,
	output reg signed StopIn,
	input  signed [23:0] SampI,
	input  signed [23:0] SampQ,
	input  signed PushCoef,
	input  signed [4:0] CoefAddr,
	input  signed [26:0] CoefI,
	input  signed [26:0] CoefQ,
	output reg signed PushOut,
	output reg signed [31:0] FI,
	output reg signed [31:0] FQ
	);

	wire signed Read;
	wire signed [23:0] FifoOutI;
	wire signed [23:0] FifoOutQ;
	wire signed [26:0] Coef_Re [0:14];
	wire signed [26:0] Coef_Img [0:14];

	fifo fifo (
		.Clk(Clk),
		.Reset(Reset),
		.PushIn(PushIn),
		.StopIn(StopIn),
		.DataInI(SampI),
		.DataInQ(SampQ),
		.FifoOutI(FifoOutI),
		.FifoOutQ(FifoOutQ),
		.Read(Read)
	);

	counter counter(
		.Clk(Clk),
		.Reset(Reset),
		.StopIn(StopIn),
		.Read(Read)
	);

	sr sr(
		.Clk(Clk),
		.Reset(Reset),
		.Read(Read),
		.FifoOutI(FifoOutI),
		.FifoOutQ(FifoOutQ),
		.DataOutI(FI),
		.DataOutQ(FQ)
	);

	demux demux(
		.Clk(Clk),
		.Reset(Reset),
		.PushCoef(PushCoef),
		.CoefAddr(CoefAddr),
		.CoefI(CoefI),
		.CoefQ(CoefQ)
	);



	/*

	reg signed [3:0] [23:0] FIFO_Re; // Packed Array
	reg signed [2:0] WrPtr;
	reg signed [2:0] Count, Counter;
	reg signed Count_En;

	always @(*) begin
		if (Count_En) begin
			if (Counter != 3'b100) Counter = Count + 1;
			else Counter = 0; end
		else begin
			Counter = Counter;
		end
	end

	// Counter
	always @(posedge Clk or posedge Reset) begin
		if (Reset) Count <= 0;
		else Count <= #1 Counter;
	end

	// FIFO Write Pointer
	always @(*) begin
		case(WrPtr)
			3'b001 : FIFO_Re[0] <= 24'hFFFFFF;
			3'b010 : FIFO_Re[1] <= 24'hFFFFFF;
			3'b011 : FIFO_Re[2] <= 24'hFFFFFF;
			3'b100 : FIFO_Re[3] <= 24'hFFFFFF;
			default : WrPtr <= 0;
		endcase
	end


	always @(posedge Clk or posedge Reset) begin
		if (Reset) begin
			FIFO_Re <= 0;
			WrPtr <= 0;
			Count_En <= 0;
			StopIn <= 0;
			PushOut <= 0;
			FI <= 0;
			FQ <= 0; end
		else begin
			if (PushIn) begin WrPtr <= WrPtr + 1; end
			
			Count_En <= 1;
			
			StopIn <= 0; // Need to add final signals here with thewith the push in
			PushOut <= 0;
			FI <= 3;
			FQ <= 7;
		end
	end
	
	*/
	
/*	// FIFO Controller
	always @(*) begin
		case(Cycle)
			2'b10 : begin 
			
	
	// 4 deep
	// needs to be the size of the bits
	
	*/
	
	
endmodule : firc
