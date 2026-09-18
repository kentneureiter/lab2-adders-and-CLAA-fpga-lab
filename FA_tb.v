`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2026 02:43:22 PM
// Design Name: 
// Module Name: FA_tb
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


module FA_tb;
    reg cin1;
    reg [3:0] a, b; //input
    wire [3:0]s;
    wire cout1; //output 

 
// Instantiate original module (named DUT {device under test}) 
//FA uut (a1,b1,cin1,s1,cout1);
   //CLAA uut(.a(a), .b(b), .cin(cin1), .s(s), .cout(cout1));
   
  CLAA uut2 (.A(a),.B(b),.Cin(cin1),.s(s),.cout(cout1));
  


    initial 
    begin 
    #10 a=4'b0000;b=4'b0010;cin1=1'b0;
	#10 a=4'b0000;b=4'b0110;
	#10 a=4'b0001;b=4'b1000;
	#10 a=4'b0100;b=4'b1010;
	#10 a=4'b1001;b=4'b0001;
	#10 a=4'b1110;b=4'b0011;
	#10 a=4'b1010;b=4'b1110;
	#10 a=4'b1111;b=4'b1111;

	#10 $stop;
end
    
endmodule
