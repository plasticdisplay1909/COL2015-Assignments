`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2026 12:30:24 AM
// Design Name: 
// Module Name: code
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


module seven_segment (
    input [9:0] sw,
    output reg [6:0] seg
);

always @(*) begin
    // Higher switch gets more constraint_mode
    // 0 for ON 1 for OFF
    //      a
    //     ___
    // d  |   |  e
    //     ---  b
    // f  |___|  g
    //      c
    
    if (sw[9]) seg=7'b0000010;  //9
    else if (sw[8]) seg = 7'b0000000;  //8
    else if (sw[7]) seg = 7'b0111010;  //7
    else if (sw[6]) seg = 7'b0000100;  //6
    else if (sw[5]) seg = 7'b0000110;  //5
    else if (sw[4]) seg = 7'b1010010;  //4
    else if (sw[3]) seg = 7'b0001010;  //3
    else if (sw[2]) seg = 7'b0001001;  //2
    else if (sw[1]) seg = 7'b1111010;  //1
    else seg = 7'b1111111;       // Blank

end
endmodule