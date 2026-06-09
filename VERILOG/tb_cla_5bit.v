`timescale 1ns / 1ps

module tb_cla_5bit;

    // Inputs
    reg clk;
    reg cin;
    reg [4:0] a_in;
    reg [4:0] b_in;

    // Outputs
    wire [4:0] sum_out;
    wire cout_out;

    // Instantiate the Unit Under Test (UUT)
    cla_5bit_pipelined uut (
        .clk(clk),
        .cin(cin),
        .a_in(a_in),
        .b_in(b_in),
        .sum_out(sum_out),
        .cout_out(cout_out)
    );

    // Clock Generation (Period = 4ns, similar to SPICE Ton=2n)
    initial begin
        clk = 0;
        forever #2 clk = ~clk;
    end

    // Simulation Sequence
    initial begin
        // Setup Waveform Dumping
        $dumpfile("cla_waves.vcd");
        $dumpvars(0, tb_cla_5bit);

        // Initialize Inputs
        a_in = 0; b_in = 0; cin = 0;
        
        // Wait for global reset/stabilization
        #5;

        // Test Case 1: 1 + 1 (with Cin=0)
        // Input applied
        a_in = 5'd1; b_in = 5'd1; cin = 0;
        // Wait one clock cycle for input registration
        @(posedge clk);
        // Wait one clock cycle for output registration (Pipeline depth)
        @(posedge clk);
        #1; // Sample output

        // Test Case 2: Max Value + 1 (Trigger Carry Chain)
        // 31 + 1 = 32 (Sum=0, Cout=1)
        a_in = 5'd31; b_in = 5'd1; cin = 0;
        @(posedge clk);
        @(posedge clk);
        #1;

        // Test Case 3: Carry Propagation Ripple
        // 01010 + 10101 + 0 = 11111 (31)
        a_in = 5'b01010; b_in = 5'b10101; cin = 0;
        @(posedge clk);
        @(posedge clk);
        #1;

        // Test Case 4: Full Carry Chain with Cin
        // 11111 + 00000 + 1 = 00000, Cout=1
        a_in = 5'b11111; b_in = 5'b00000; cin = 1;
        @(posedge clk);
        @(posedge clk);
        #1;

        // Test Case 5: Random Vector
        a_in = 5'd10; b_in = 5'd15; cin = 1;
        @(posedge clk);
        @(posedge clk);
        #1;

        $display("Simulation Finished");
        $finish;
    end

    // Monitor changes
    initial begin
        $monitor("Time=%t | Input A=%d B=%d Cin=%b | Sum=%d Cout=%b", 
                 $time, a_in, b_in, cin, sum_out, cout_out);
    end

endmodule