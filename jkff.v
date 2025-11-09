
module jkff (
    input  wire clk,     // btnC
    input  wire J,       // sw[1]
    input  wire K,       // sw[2]
    output reg  Q,       // led[2]
    output wire nQ       // led[3]
);
    wire D;

    assign D  = (J & ~Q) | (~K & Q); 
    initial Q = 1'b0;

    always @(posedge clk) begin
        Q <= D;
    end

    assign nQ = ~Q;
endmodule

