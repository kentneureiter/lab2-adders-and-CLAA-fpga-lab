`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09/11/2026 03:13:20 PM
// Design Name:
// Module Name: CLAA
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
    //assign cout = (a & cin)| (b & cin) |a&b;
   
endmodule

module CLAA(
    input [3:0]A, input [3:0]B, input Cin,
    output cout, [3:0]s
);
wire[3:0] P, G;
wire c1, c2, c3, c4;


assign P[0]=A[0]^B[0];
assign G[0]=A[0]&B[0];

assign c1 = G[0] | (P[0] & Cin);
assign c2 = G[1] | (P[1] & G[0]) | (P[1] & P[0] & Cin);
assign c3 = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & Cin);
assign Cout = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & Cin);
assign s = P ^ {c3, c2, c1, Cin};

FA uut0(.a(A[0]), .b(B[0]), .cin(cin), .s(s[0]));
FA uut1(.a(A[1]), .b(B[1]), .cin(c1), .s(s[1]));
FA uut2(.a(A[2]), .b(B[2]), .cin(c2), .s(s[2]));
FA uut3(.a(A[3]), .b(B[3]), .cin(c3), .s(s[3]));


assign cout=c4;

endmodule