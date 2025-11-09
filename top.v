
module top (
    input  wire [3:0] sw,
    input  wire       btnC,
    output wire [5:0] led
);
    
    wire d_q, d_nq;
    dff u_dff (
        .clk(btnC),
        .D  (sw[0]),
        .Q  (d_q),
        .nQ (d_nq)
    );

    
    wire jk_q, jk_nq;
    jkff u_jkff (
        .clk(btnC),
        .J  (sw[1]),
        .K  (sw[2]),
        .Q  (jk_q),
        .nQ (jk_nq)
    );

    
    wire t_q, t_nq;
    tff u_tff (
        .clk(btnC),
        .T  (sw[3]),
        .Q  (t_q),
        .nQ (t_nq)
    );

    assign led[0] = d_q;
    assign led[1] = d_nq;
    assign led[2] = jk_q;
    assign led[3] = jk_nq;
    assign led[4] = t_q;
    assign led[5] = t_nq;
endmodule
