module F_adder();
input x, y, z;
output s2, c2;

wire s1, c1, c2_temp;

h_adder u0 (x, y, s1, c1);

assign s2 = s1^z;
assign c2_temp = z&s1;

assign c2 = c2_temp|c1;

endmodule
