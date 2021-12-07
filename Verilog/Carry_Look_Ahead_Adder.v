module CLA(a0,a1,a2,a3,b0,b1,b2,b3,c0,c1,c2,c3,c4,s0,s1,s2,s3);

    input a0,a1,a2,a3,b0,b1,b2,b3,c0;
    output c1,c2,c3,c4,s0,s1,s2,s3;
    wire P0,P1,P2,P3,G0,G1,G2,G3,E1,E2,E3,E4,E5,E6,E7,E8,E9,E10;

// XOR gates for Propagate block
xor X0(P0,a0,b0);
xor X1(P1,a1,b1);
xor X2(P2,a2,b2);
xor X3(P3,a3,b3);

// AND gates for Generate block
and A0(G0,a0,b0);
and A1(G1,a1,b1);
and A2(G2,a2,b2);
and A3(G3,a3,b3);

// Carry 1
and A5(E1,P0,c0);
or O1(c1,G0,E1);

// Carry 2
and A6(E2,P1,G0);
and A7(E3,c0,P0,P1);
or O2(c2,E2,E3,G1);

// Carry 3
and A8(E4,P2,G1);
and A9(E5,G0,P1,P2);
and A10(E6,P2,P1,P0,c0);
or O3(c3,G2,E4,E5,E6);

//Carry 4
and A11(E7,P3,G2);
and A12(E8,P3,P2,G1);
and A13(E9,P3,P2,P1,G0);
and A14(E10,P3,P2,P1,P0,c0);
or O4(c4,E7,E8,E9,E10,G3);

// Sum
xor X4(s0,c0,P0);
xor X5(s1,c1,P1);
xor X6(s2,c2,P2);
xor X7(s3,c3,P3);

endmodule


