
module tff (
    input  wire clk,     // btnC
    input  wire T,       // sw[3]
    output reg  Q,       // led[4]
    output wire nQ       // led[5]
);
    wire D = T ^ Q;

    initial Q = 1'b0;
    always @(posedge clk) begin
        Q <= D;
    end

    assign nQ = ~Q;
endmodule
