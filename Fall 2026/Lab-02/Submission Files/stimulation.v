`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2026 12:46:12 AM
// Design Name: 
// Module Name: stimulation
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


module stimulation;
        reg [9:0] sw;
        wire [6:0] seg;
        
        seven_segment test (
            .sw(sw), .seg(seg)
        );
        
        initial begin
            
            sw = 10'b0000000000; #20;       // Blank
            
            sw = 10'b0000000001; #20;       // 0
            sw = 10'b0000000010; #20;       // 1
            sw = 10'b0000000100; #20;       // 2
            sw = 10'b0000001000; #20;       // 3
            sw = 10'b0000010000; #20;       // 4
            sw = 10'b0000100000; #20;       // 5
            sw = 10'b0001000000; #20;       // 6
            sw = 10'b0010000000; #20;       // 7
            sw = 10'b0100000000; #20;       // 8
            sw = 10'b1000000000; #20;       // 9
            
            
            // Test Priority
            sw = 10'b0000000000; #20;       // constraint_mode
            
            $finish;
        end
endmodule
