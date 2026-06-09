module dff_struct (
    input d,
    input clk,
    output reg q
);
    always @(posedge clk) begin
        q <= d;
    end
endmodule

module pg_generator (
    input a,
    input b,
    output p,
    output g
);
    xor x1 (p, a, b);
    and a1 (g, a, b);
endmodule

module cla_5bit_pipelined (
    input wire clk,
    input wire cin,
    input wire [4:0] a_in,
    input wire [4:0] b_in,
    output wire [4:0] sum_out,
    output wire cout_out
);

    wire [4:0] a_reg, b_reg;
    wire cin_reg;

    dff_struct dff_a0 (.d(a_in[0]), .clk(clk), .q(a_reg[0]));
    dff_struct dff_a1 (.d(a_in[1]), .clk(clk), .q(a_reg[1]));
    dff_struct dff_a2 (.d(a_in[2]), .clk(clk), .q(a_reg[2]));
    dff_struct dff_a3 (.d(a_in[3]), .clk(clk), .q(a_reg[3]));
    dff_struct dff_a4 (.d(a_in[4]), .clk(clk), .q(a_reg[4]));

    dff_struct dff_b0 (.d(b_in[0]), .clk(clk), .q(b_reg[0]));
    dff_struct dff_b1 (.d(b_in[1]), .clk(clk), .q(b_reg[1]));
    dff_struct dff_b2 (.d(b_in[2]), .clk(clk), .q(b_reg[2]));
    dff_struct dff_b3 (.d(b_in[3]), .clk(clk), .q(b_reg[3]));
    dff_struct dff_b4 (.d(b_in[4]), .clk(clk), .q(b_reg[4]));

    dff_struct dff_cin (.d(cin), .clk(clk), .q(cin_reg));

    wire [4:0] p, g;
    pg_generator pg0 (.a(a_reg[0]), .b(b_reg[0]), .p(p[0]), .g(g[0]));
    pg_generator pg1 (.a(a_reg[1]), .b(b_reg[1]), .p(p[1]), .g(g[1]));
    pg_generator pg2 (.a(a_reg[2]), .b(b_reg[2]), .p(p[2]), .g(g[2]));
    pg_generator pg3 (.a(a_reg[3]), .b(b_reg[3]), .p(p[3]), .g(g[3]));
    pg_generator pg4 (.a(a_reg[4]), .b(b_reg[4]), .p(p[4]), .g(g[4]));

    wire [4:0] c;

    wire t0;
    and (t0, p[0], cin_reg);
    or  (c[0], g[0], t0);

    wire t1;
    and (t1, p[1], c[0]);
    or  (c[1], g[1], t1);

    wire t2;
    and (t2, p[2], c[1]);
    or  (c[2], g[2], t2);

    wire t3;
    and (t3, p[3], c[2]);
    or  (c[3], g[3], t3);

    wire t4;
    and (t4, p[4], c[3]);
    or  (c[4], g[4], t4);

    wire [4:0] sum_raw;
    xor sum0 (sum_raw[0], p[0], cin_reg);
    xor sum1 (sum_raw[1], p[1], c[0]);
    xor sum2 (sum_raw[2], p[2], c[1]);
    xor sum3 (sum_raw[3], p[3], c[2]);
    xor sum4 (sum_raw[4], p[4], c[3]);

    dff_struct dff_s0   (.d(sum_raw[0]), .clk(clk), .q(sum_out[0]));
    dff_struct dff_s1   (.d(sum_raw[1]), .clk(clk), .q(sum_out[1]));
    dff_struct dff_s2   (.d(sum_raw[2]), .clk(clk), .q(sum_out[2]));
    dff_struct dff_s3   (.d(sum_raw[3]), .clk(clk), .q(sum_out[3]));
    dff_struct dff_s4   (.d(sum_raw[4]), .clk(clk), .q(sum_out[4]));
    dff_struct dff_cout (.d(c[4]),       .clk(clk), .q(cout_out));

endmodule
