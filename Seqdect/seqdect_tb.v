module seqdect_tb;
reg clk,rst,prtx;
wire prtz;
seqdect DUT(.clk(clk),.rst(rst),.prtx(prtx),.prtz(prtz));
//-----CLOCK GENERATION-----
initial begin
clk=0;
forever begin #5 clk=~clk; end 
<<<<<<< HEAD
end
=======
end
>>>>>>> 6470f23568a498135a895714c5244b89f265f72f
//-----Apply RESET logic Here-----
initial begin
  rst=1;
  #15 rst=0;
end
//-----TEST BENCH-----
<<<<<<< HEAD
initial begin
//Variety of test cases.Remove comments to test one by one.

/*//1st case
#12 prtx=1;#10 prtx=0;#10 prtx=1;#10 prtx=0;#10 prtx=1;#10 prtx=0;
//---End of 1st case---*/
/*//2nd case
#12 prtx=0;#10 prtx=1;#10 prtx=0;#10 prtx=1;#10 prtx=0;#10 prtx=1;#10 prtx=0;
//---End of 2nd case---*/
/*//3rd Case
#12 prtx=0;#10prtx=1;#10 prtx=0;#10 prtx=1;#10 prtx=0;#10 prtx=1;#10 prtx=0;#10 prtx=1;#10 prtx=0;
//---End of 3rd case---*/
//4th case
#12 prtx=0;#10 prtx=1;#10 prtx=0;#10 prtx=1;#10 prtx=0;#10 prtx=1;#10 prtx=0;#10 prtx=0;#10 prtx=1;#10 prtx=0;
//---End of 4th case---
/*5th case
#12 prtx=0;#10 prtx=0; #10 prtx=1;#10 prtx=0;#10 prtx=1;#10 prtx=0;#10 prtx=1;#10 prtx=0;#10 prtx=1;#10 prtx=0;
#10 prtx=0;#10 prtx=1;#10 prtx=0;#10 prtx=1;#10 prtx=0;#10 prtx=1;#10 prtx=0;
=======
initial begin
//Variety of test cases.Remove comments to test one by one.

/*//1st case
#12 prtx=1;#10 prtx=0;#10 prtx=1;#10 prtx=0;#10 prtx=1;#10 prtx=0;
//---End of 1st case---*/
/*//2nd case
#12 prtx=0;#10 prtx=1;#10 prtx=0;#10 prtx=1;#10 prtx=0;#10 prtx=1;#10 prtx=0;
//---End of 2nd case---*/
/*//3rd Case
#12 prtx=0;#10prtx=1;#10 prtx=0;#10 prtx=1;#10 prtx=0;#10 prtx=1;#10 prtx=0;#10 prtx=1;#10 prtx=0;
//---End of 3rd case---*/
//4th case
#12 prtx=0;#10 prtx=1;#10 prtx=0;#10 prtx=1;#10 prtx=0;#10 prtx=1;#10 prtx=0;#10 prtx=0;#10 prtx=1;#10 prtx=0;
//---End of 4th case---
/*5th case
#12 prtx=0;#10 prtx=0; #10 prtx=1;#10 prtx=0;#10 prtx=1;#10 prtx=0;#10 prtx=1;#10 prtx=0;#10 prtx=1;#10 prtx=0;
#10 prtx=0;#10 prtx=1;#10 prtx=0;#10 prtx=1;#10 prtx=0;#10 prtx=1;#10 prtx=0;
>>>>>>> 6470f23568a498135a895714c5244b89f265f72f
---End of 5th case---*/
end
//-----MONITOR-----
initial begin
$monitor($time,"CLOCK =%b, RESET= %b, PORT X= %b, PORT Z= %b",clk,rst,prtx,prtz);
end
endmodule
