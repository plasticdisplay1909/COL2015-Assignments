`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2026 10:44:07 PM
// Design Name: 
// Module Name: gates
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


module AND (
    input a,b,
    output c
);
    assign c=a&b;
endmodule

module OR (
    input a,b,
    output c
);
    assign c=a|b;
endmodule

module NOT (
    input a,
    output b
);
    assign b=~a;
endmodule



module gates(
    // AND GATE
    input a,b,
    output c,
    
    // OR GATE
    input d,e,
    output f,
    
    // NOT GATE
    input g,
    output h
);
    AND AND_OUT (
    .a(a),.b(b),.c(c)
    );
    
    OR OR_OUT (
    .a(d),.b(e),.c(f)
    );
    
    NOT NOT_OUT (
    .a(g),.b(h)
    );
    
endmodule
