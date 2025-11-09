
module dff (
    input  wire clk,     // btnC
    input  wire D,       // sw[0]
    output reg  Q,       // led[0]
    output wire nQ       // led[1]
);
    initial Q = 1'b0;
    always @(posedge clk) begin
        Q <= D;
    end
    assign nQ = ~Q;
endmodule

