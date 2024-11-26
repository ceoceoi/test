module tb_registers;    // Parameters
    parameter n = 4;

    // Testbench Signals
    logic clk, rst_n, en;
    logic [n-1:0] d;
    logic [n-1:0] q_behavioral, q_dataflow;

    // Clock Generation
    initial clk = 0;
    always #5 clk = ~clk; // 10ns period

    // DUT Instantiations
    register_behavioral #(.n(n)) u_register_behavioral (
        .clk(clk),
        .rst_n(rst_n),
        .en(en),
        .d(d),
        .q(q_behavioral)
    );

    register_dataflow #(.n(n)) u_register_dataflow (
        .clk(clk),
        .rst_n(rst_n),
        .en(en),
        .d(d),
        .q(q_dataflow)
    );

    // Test Scenarios
    initial begin
        $monitor("Time=%0d clk=%b rst_n=%b en=%b d=%b q_behavioral=%b q_dataflow=%b", 
                 $time, clk, rst_n, en, d, q_behavioral, q_dataflow);
        
        // Initialize Signals
        rst_n = 0; en = 0; d = 4'b0000;

        // Reset Test
        #10 rst_n = 1;

        // Enable and Load Data
        #10 en = 1; d = 4'b1010;
        #10 d = 4'b1100;

        // Disable Enable Signal
        #10 en = 0; d = 4'b0110;

        // Reset Again
        #10 rst_n = 0;
        #10 rst_n = 1;

        #10 $stop;
    end
endmodule
