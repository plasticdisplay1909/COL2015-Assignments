`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2026 10:57:41 PM
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


module gates_tb;
    reg a,b;        // AND GATE
    wire c;
    
    reg d,e;        // OR GATE
    wire f;
    
    reg g;          // NOT GATE
    wire h;
    
    gates test(
        .a(a),.b(b),.c(c),      // AND GATE
        .d(d),.e(e),.f(f),      // OR GATE
        .g(g),.h(h)             // NOT GATE
    );
    
    initial begin
    
        // O ns
        a=0; b=0;
        d=0; e=0;
        g=0;
        
        #20;        // Adds 20ns a
        //20 ns
        a=0; b=1;
        d=0; e=1;
        g=1;
        
        #20;
        // 40 ns
        a=1; b=1;
        d=1; e=1;
        g=0;
        
        #20;
        //60 ns
        a=1; b=0;
        d=1; e=0;
        g=1;
        
        #20;
        // end
        
        $finish;
    end
endmodule