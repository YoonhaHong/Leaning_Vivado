module hex2seg
(
    input[3:0] din,
    output[7:0] seg_d
);

assign seg_d = (din==4'h0) ? 8'h3F :
               (din==4'h1) ? 8'h06 :
               (din==4'h2) ? 8'h5B :
               (din==4'h3) ? 8'h4F :
               (din==4'h4) ? 8'h66 :
               (din==4'h5) ? 8'h6D :
               (din==4'h6) ? 8'h7D :
               (din==4'h7) ? 8'h27 :
               (din==4'h8) ? 8'h7F :
               (din==4'h9) ? 8'h6F :
               (din==4'hA) ? 8'h5F :
               (din==4'hB) ? 8'h7C :
               (din==4'hC) ? 8'h58 :
               (din==4'hD) ? 8'h5E :
               (din==4'hE) ? 8'h7B :
               8'h71;

endmodule
