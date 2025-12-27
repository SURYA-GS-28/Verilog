module seqdect(
input rst,prtx,clk,
output reg prtz
);
reg [2:0]ps,ns;
parameter s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100,s5=3'b101;
always@(posedge clk,posedge rst) begin
if(rst)begin
ps<=s0; end
else begin
ps<=ns; end
end
always@(prtx,ps) begin
prtz=1'b0;
case(ps)
s0:begin
ns=prtx ? s1:s0;
end
s1:begin
ns=prtx? s1:s2;
end
s2:begin
ns=prtx? s3:s0;
end
s3:begin
ns=prtx? s1:s4;
end
s4:begin
ns=prtx? s5:s0;
end
s5:begin
ns=prtx? s0:s4;
prtz=prtx? 1'b0:1'b1;
end
endcase
end
endmodule
