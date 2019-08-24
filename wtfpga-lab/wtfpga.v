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

	assign anode = 2'b11;
	assign seg[0] = sw[0];
	assign seg[1] = sw[1];
	assign seg[2] = sw[2];
	assign seg[3] = sw[3];
	assign seg[4] = sw[4];
	assign seg[5] = sw[5];
	assign seg[6] = sw[6];

	// // choose what number to show on display
	// displaySelect inst_displaySelect (
	// 	.clk 		(clk), 
	// 	.sw 		(sw), 
	// 	.switch 	(switch), 
	// 	.nibbleMS 	(nibbleMS), 
	// 	.nibbleLS 	(nibbleLS)
	// );

	// decodes nibble to 7 segment display	
	nibbleDecode nibbleDecodeLSD (
		// add ports here
	);


	// // mux displays
	// displayMux inst_displayMux (
	// 	.clk        (clk),
	// 	.dividedClk (dividedClk),
	// 	.disp0      (disp0),
	// 	.disp1      (disp1),
	// 	.seg        (seg),
	// 	.anode      (anode)
	// );

	// generate clock for switching displays
	clockDiv inst_clockDiv (
		.clk(clk), 
		.clkout(dividedClk)
	);

endmodule

