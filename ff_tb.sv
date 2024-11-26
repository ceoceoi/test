`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 02:15:10 PM
// Design Name: 
// Module Name: ff_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ff_tb;
logic d, clk, rest ;
logic q;
ff dut (
    d,
    clk ,
    rest,
    q,
    overflow ); 
    
    
     initial clk = 0;
      always #5 clk = ~clk;
      initial begin
         d = 0;
         rest = 0;

        #10 d = 1; rest = 1;
        #10 d = 0; rest = 1;
        #10 d = 1; rest = 1;
        #10 d = 0; rest = 1;

    #30 $finish;
    
    
    end
    
endmodule

