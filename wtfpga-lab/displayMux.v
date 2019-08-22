`default_nettype none

module displayMux(
    input clk,
    input dividedClk,
    input [6:0] disp0, disp1,
    output reg [6:0] seg,
    output [1:0] anode
    );

	reg [1:0] current;
	
	assign anode=current;

	// mux displays together
	always @(posedge clk) begin
		case (dividedClk)
			0:begin
				seg <= disp0;
				current <= 2'b01;
			end
			1:begin
				seg <= disp1;
				current <= 2'b10;
			end
		endcase
	end

endmodule
