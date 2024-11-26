`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 01:58:17 PM
// Design Name: 
// Module Name: ff
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


module ff(
input d,
input clk,
input reset,
output logic q,
output logic overflow );

    
    always @ (posedge clk,  negedge reset)
    begin
    if (reset ==0) q<=0 ;
    else
    q<=d;
    end
    assign overflow=q&~d;

    
    


endmodule
