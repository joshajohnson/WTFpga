`default_nettype none

module nibbleDecode(
    input [3:0] nibblein,
    output reg [6:0] seg
    );

    // light up required sections for each number
    always @(*) begin
        case (nibblein)
            4'h0: seg = ~7'b0111111;
            4'h1: seg = ~7'b0000110;
            // add more statements here
            default: seg = ~7'b0000000;
        endcase
        end 
endmodule
