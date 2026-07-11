`timescale 1ns / 1ps

module Booth_CLA_TB();

reg signed [7:0] X, Y;   // ✅ FIXED
wire [15:0] Product;
wire Overflow;

Booth_CLA_Top UUT (
    .X(X),
    .Y(Y),
    .Product(Product),
    .Overflow(Overflow)
);

initial begin
    
    // Test Case 1: 5 * 3
    X = 8'd5; Y = 8'd3; #10;
    $display("Test Case 1: %d * %d = %d, Overflow: %b", X, Y, Product, Overflow);

    // Test Case 2: -5 * 3
    X = -8'd5; Y = 8'd3; #10;
    $display("Test Case 2: %d * %d = %d, Overflow: %b", X, Y, Product, Overflow);

    // Test Case 3: -5 * -3
    X = -8'd5; Y = -8'd3; #10;
    $display("Test Case 3: %d * %d = %d, Overflow: %b", X, Y, Product, Overflow);

    // Test Case 4: 127 * 127 (large result)
    X = 8'd127; Y = 8'd127; #10;
    $display("Test Case 4: %d * %d = %d, Overflow: %b", X, Y, Product, Overflow);

    // Test Case 5: -128 * -128 (large result)
    X = -8'd128; Y = -8'd128; #10;
    $display("Test Case 5: %d * %d = %d, Overflow: %b", X, Y, Product, Overflow);

    // Test Case 6: -128 * 127
    X = -8'd128; Y = 8'd127; #10;
    $display("Test Case 6: %d * %d = %d, Overflow: %b", X, Y, Product, Overflow);
    
    $finish;
end

endmodule