module rca16biter #(parameter n=16)
(
input carryin,
input[n-1:0] a,b,
output [n-1:0]f,
output carryout
);
wire[n:0]carry;
assign carry[0]=carryin;
assign carryout = carry[n];
genvar i;
generate for(i=0;i<n;i=i+1)begin:lp
wire w1,w2,w3;
xor g1(w1,a[i],b[i]), g2(f[i],w1,carry[i]);
and g3(w2,a[i],b[i]), g4(w3,w1,carry[i]);
or g5(carry[i+1],w2,w3);
end
endgenerate
endmodule

