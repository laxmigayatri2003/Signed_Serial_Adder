`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2023 03:37:22 PM
// Design Name: 
// Module Name: signed_serial_adder
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


module signed_serial_adder_tb();
         wire [14:0] sum; 
         wire sum_valid ; 
         wire [14:0] result; 
         reg clk ; 
         reg enable ; 
         reg [11:0] n ; 
         
signed_serial_adder u1( 
       .clk(clk), 
       .enable(enable), 
       .n(n), 
       .sum(sum), 
       .sum_valid(sum_valid), 
       .result(result) 
 ); 
 
initial 
  begin 
 clk = 0 ; 

n = 12'h0 ; 
enable = 0 ; 

 #10 enable = 1 ; 
 #17 n = 12'hfff ;
 #20 n = 12'h7ff ;
 #20 n = 12'h800 ; 
 #20 n = 12'h001 ; 
 #20 n = 12'h001 ; 
 #20 n = 12'h7ff ; 
 #20 n = 12'haaa ;  
 #20 n = 12'h0 ; 
 enable = 0 ; 

 #20 enable = 1 ; 
n = 100 ;  
 #20 n = 500 ; 
 #20 n = 300 ; 
 #20 n = 400 ; 
 #20 n = 200 ; 
 #20 n = 656 ; 
 #20 n = 210 ; 
 #20 n = 247 ; 
 #20 enable = 0 ; 
 #100 
 $stop ; 
end 
always 
 #5 clk <= ~clk ;  
endmodule
