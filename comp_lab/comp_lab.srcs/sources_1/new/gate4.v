module gate4(
    input a, b, c, d,
    output y_a, y_b
    );
    
    assign y_a = (a&b) | (c&d);
    assign y_b = a & (b|c) & d;
   
endmodule
