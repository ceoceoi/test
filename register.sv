module top_register (
    input logic clk,           // Clock signal (BTN_C)
    input logic rst_n,         // Active-low reset signal (CPU_RESET)
    input logic en,            // Enable signal (SW[8])
    input logic [6:0] d,       // 4-bit data input (SW[3:0])
    output logic [6:0] q_behavioral,  // Output from behavioral model
    output logic[6:0] q_dataflow     // Output from dataflow model
);

    // Instance of Behavioral Modeling
    register_behavioral u_register_behavioral (
        .clk(clk),
        .rst_n(rst_n),
        .en(en),
        .d(d),
        .q(q_behavioral)
    );

    // Instance of Dataflow Modeling
    register_dataflow u_register_dataflow (
        .clk(clk),
        .rst_n(rst_n),
        .en(en),
        .d(d),
        .q(q_dataflow)
    );

endmodule