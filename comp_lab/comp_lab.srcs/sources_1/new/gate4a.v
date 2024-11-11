module gate4a(
    input a, b, c, d,
    output y_a, y_b
    );
    
wire and_ab;
wire and_cd, or_bc;

assign and_ab = a&b;
assign and_cd = c&d;
assign or_bc = b|c;

assign y_a = (and_ab | and_cd);
assign y_b = (a&d) & or_bc;
   
endmodule
