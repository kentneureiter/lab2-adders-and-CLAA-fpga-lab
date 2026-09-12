`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09/11/2026 01:49:34 PM
// Design Name:
// Module Name: 4bitadder
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


module FA(
    input a,
    input b,
    input cin,
    output cout,
    output s
    );
    assign s = a^b^cin;
    assign cout = (a & cin)| (b & cin) |a&b;
   
endmodule

module adder_4bit(
    input[3:0]A,B,
    input cin,
    output[3:0] s,
    output cout
    );
    wire c1, c2, c3;
    FA uut0(.a(A[0]), .b(B[0]), .cin(cin), .s(s[0]), .cout(c1));
    FA uut1(.a(A[1]), .b(B[1]), .cin(c1), .s(s[1]), .cout(c2));
    FA uut2(.a(A[2]), .b(B[2]), .cin(c2), .s(s[2]), .cout(c3));
    FA uut3(.a(A[3]), .b(B[3]), .cin(c3), .s(s[3]), .cout(cout));
   
endmodule

