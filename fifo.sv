// Andres Gamboa
// EE 287 Project: FIFO
// Spring 2023

module fifo(

	input  signed Clk,
	input  signed Reset,
	input  signed PushIn,
	input  signed [23:0] DataInI,
	input  signed [23:0] DataInQ,
	input  signed Read,
	output reg signed StopIn,
	output reg signed [23:0] FifoOutI,
	output reg signed [23:0] FifoOutQ
	
	//input signed Read
	);
	
	reg [23:0] FIFOI [0:3];
	reg [23:0] FIFOQ [0:3];
	reg [3:0] WritePointer;
	reg [3:0] ReadPointer;
	
	
	always @(posedge Clk or posedge Reset) begin
		if (Reset) begin
			WritePointer <= 0;
			ReadPointer  <= 0;
			StopIn   <= 0;
			FifoOutI <= 0;
			FifoOutQ <= 0; end
		else begin
			if (PushIn & !StopIn) begin
				FIFOI[WritePointer] <= DataInI;
				FIFOQ[WritePointer] <= DataInQ;
				WritePointer <= (WritePointer == 3) ? 0 : WritePointer + 1;
				StopIn 		 <= (WritePointer == 3) ? 1 : 0; end
			else if (Read) begin
				FifoOutI <= FIFOI[ReadPointer];
				FifoOutQ <= FIFOQ[ReadPointer];
				ReadPointer <= (ReadPointer == 3) ? 0 : ReadPointer + 1;
				StopIn <= (ReadPointer == 3) ? 0 : 1; // There will be a problem here
			end
		end
	end
	
endmodule : fifo	

// change fifo so that it can write and read at the same time





	/*
	reg [16:0] FIFO [0:7];
	reg [3:0]  WritePointer, ReadPointer;
	reg [16:0] FIFOInReg;
	wire [16:0] FIFOIn;
	wire [16:0] FIFOOut;	
	
	assign	FIFOIn = (TestMode == 1) ? ScanIn : DataIn;
	assign	FIFOOut = (TestMode == 1) ? FIFOInReg : FIFO[ReadPointer];
	assign	ScanOut = DataOut;
	
	always @ (posedge clk or posedge Reset) begin
		if (Reset) begin
			DataOut 	 <= 0;
			Full  		 <= 0;
			WritePointer <= 0;
			ReadPointer  <= 0;
			FIFOInReg 	 <= 0; end
		else begin
			FIFOInReg <= FIFOIn;
			if ((PushIn && !Full) | (ScanPushIn)) begin
				FIFO[WritePointer] <= FIFOInReg;
				Full <= (WritePointer == 7) ? 1 : 0;
				WritePointer <= (WritePointer == 7) ? 0 : WritePointer + 1; end	
				else if ((PushOut) | (ScanPushOut)) begin
				DataOut <= FIFOOut;
				ReadPointer <= (ReadPointer == 7) ? 0 : ReadPointer + 1;
				Full <= 0;
			end
		end	
	end
	
	*/
	
