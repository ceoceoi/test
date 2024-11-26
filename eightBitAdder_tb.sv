`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 04:42:36 PM
// Design Name: 
// Module Name: eightBitAdder_tb
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

module eBitAdder;
 logic [7:0]a;
     logic [7:0]b;
     logic carry;
     logic cout;
     logic [7:0]sum;

       FourBitAdder dut(
        .a(a),
        .b(b),
        .carry(carry),
        .cout(cout),
        .sum(sum)
        
        );
        
        
        initial begin
        
                a=8'b00000111;
                b=8'b00000011;

 
                 #100;


        $finish;
    end 
endmodule