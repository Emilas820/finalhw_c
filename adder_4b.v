module adder_4bit ();
    input [3:0] x, y;
    output [4:0] s;

    wire c1, c2, c3;

    input c0;

    f_adder u0 (x[0], y[0], c0, s[0], c1);
    f_adder u1 (x[1], y[1], c1, s[1], c2);
    f_adder u2 (x[2], y[2], c2, s[2], c3);
    f_adder u3 (x[3], y[3], c3, s[3], s[4]);




endmodule