`default_nettype none
`include "clockDiv.v"
`include "nibbleDecode.v"
`include "displaySelect.v"

module top(
    input clk,
    input [7:0] sw,
    input switch,
    output reg [6:0] seg,
    output reg [1:0] com
);

	// wires and registers go here
	wire dividedClk;
	wire [6:0] disp0, disp1;
	wire [3:0] nibbleMS, nibbleLS;

	// mux displays together
	always @(posedge clk) begin
		case (dividedClk)
			0:begin
				seg <=disp1;
				com <= 2'b10;
			end
			1:begin
				seg <=disp0;
				com <= 2'b01;
			end
		endcase
	end

	// choose what number to show on display
	displaySelect inst_displaySelect (
		.clk 		(clk), 
		.sw 		(sw), 
		.switch 	(switch), 
		.nibbleMS 	(nibbleMS), 
		.nibbleLS 	(nibbleLS)
	);

	// decodes nibble to 7 segment display	
	nibbleDecode nibbleDecodeLSD (
			.clk 		(clk), 
		 	.nibblein 	(nibbleLS), 
			.seg 		(disp0)
	);

	nibbleDecode nibbleDecodeMSD (
			.clk 		(clk), 
		 	.nibblein 	(nibbleMS), 
			.seg 		(disp1)
	);

	// generate clock for switching displays
	clockDiv inst_clockDiv (
		.clk(clk), 
		.clkout(dividedClk)
	);

endmodule

