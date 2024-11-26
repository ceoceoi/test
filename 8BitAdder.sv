`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 04:38:16 PM
// Design Name: 
// Module Name: 8BitAdder
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


module eightBitAdder(
 input [7:0] a,
     input [7:0] b,
     output [7:0] sum,
     input carry,
     output  [7:0]cout 
     );
    
    logic cout1 , cout2 ,cout3 , cout4,cout5,cout6,cout7;
    
    FourBitAdder four_bit_addr_inst1(
        .a(a[3:0]),
        .b(b[3:0]),
        .sum(sum[3:0]),
        .carry(carry),
        .cout(cout[7:4])
        );
        
         FourBitAdder four_bit_addr_inst2(
        .a(a[3:0]),
        .b(b[3:0]),
        .sum(sum[3:0]),
        .carry(cout[7:10]),
        .cout(cout[8:10])
        ); 
     
     
     
     
   
    

endmodule
