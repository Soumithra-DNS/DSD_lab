module adderSubtractor(s, c, a, b, M);
input [3:0] a, b;           
input M;                    
output [3:0] s;             
output c;                   
wire c1, c2, c3, c4;        
wire [3:0] bb;              

assign bb = M ? ~b : b;
assign c1 = M ? 1 : 0;      

fulladder f1(s[0], c2, a[0], bb[0], c1);
fulladder f2(s[1], c3, a[1], bb[1], c2);
fulladder f3(s[2], c4, a[2], bb[2], c3);
fulladder f4(s[3], c, a[3], bb[3], c4);

endmodule

module stimulusAS;
reg [0:3]a, b;
reg M;
wire [0:3]s;
wire c;

adderSubtractor AS(s, c, a, b, M);

initial
begin
a = 4'b0100;
b = 4'b0011;
M = 0;
#100;
a = 4'b0010;
b = 4'b0011;
M = 1;
#100;
a = 4'b1110;
b = 4'b1111;
M = 1;
#100;
M = 0;
#100;
a = 4'b0111;
b = 4'b1000;
M = 1;
#100;


end
endmodule
