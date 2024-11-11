module mux2(
    input d0, d1, sel,
    output ya, yb
    );
    
assign ya = (~sel & d0) | (sel & d1);
assign yb = (sel == 0) ? d0 : d1;
   
endmodule
