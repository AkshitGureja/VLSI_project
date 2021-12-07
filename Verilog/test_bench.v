module test_CLA();

//Inputs
reg [3:0] a;
reg [3:0] b;
reg c0;

//Outputs
wire [3:0] s;
wire [3:0] c;
integer i;
integer j;


CLA Adder(a[3],a[2],a[1],a[0],b[3],b[2],b[1],b[0],c0,c[0],c[1],c[2],c[3],s[0],s[1],s[2],s[3]);

initial 
    begin
    c0 = 0;
    a = 0;
    b = 0;
    $dumpfile("CLA.vcd");
    $dumpvars(0, test_CLA);
    $monitor($time, " a3=%b, a2=%b, a1=%b, a0=%b, b3=%b, b2=%b, b1=%b, b0=%b, c0=%b, c4=%b, c3=%b, c2=%b, c1=%b, s3=%b, s2=%b, s1=%b, s0=%b", a[3],a[2],a[1],a[0],b[3],b[2],b[1],b[0],c[0],c[3],c[2],c[1],c[0],s[3],s[2],s[1],s[0]);
        for (i = 0; i < 16; i = i + 1) begin
            for(j = 0; j < 16; j = j +1) begin
            a = i;
            b = j; #5;
            end
        end
    end
endmodule