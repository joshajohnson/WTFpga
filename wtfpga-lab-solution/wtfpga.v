`default_nettype none
`include "clockDiv.v"
`include "nibbleDecode.v"
`include "displaySelect.v"
`include "displayMux.v"

module top(
    input clk,
    input [7:0] sw,
    input switch,
    output [6:0] seg,
    output [1:0] anode
    );

	// wires and registers go here
	wire dividedClk;
	wire [6:0] disp0, disp1;
	wire [3:0] nibbleMS, nibbleLS;

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
	 	.nibblein 	(nibbleLS), 
		.seg 		(disp1)
	);

	nibbleDecode nibbleDecodeMSD (
	 	.nibblein 	(nibbleMS), 
		.seg 		(disp0)
	);

	// mux displays
	displayMux inst_displayMux (
		.clk        (clk),
		.dividedClk (dividedClk),
		.disp0      (disp0),
		.disp1      (disp1),
		.seg        (seg),
		.anode      (anode)
	);

	// generate clock for switching displays
	clockDiv inst_clockDiv (
		.clk(clk), 
		.clkout(dividedClk)
	);

endmodule

