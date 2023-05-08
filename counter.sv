// Andres Gamboa
// EE 287 Project: Counter
// Spring 2023

module counter(

	input  signed Clk,
	input  signed Reset,
	input  signed StopIn,
	output reg signed Read
	);
	
	always @(posedge Clk or posedge Reset) begin
		/*If (Reset)
			Read <= 0;
		else begin */
			if (StopIn) Read <= 1;
			else Read <= 0;
	end
	
endmodule : counter

// will need a fsm for controller
// need to add counter for 3 clocks etc.
// control signals etc
