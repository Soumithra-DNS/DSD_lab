module bcdToExc3(b,a);
input [3:0]a;
output [3:0]b;
assign b[3] = a[3] | (a[2] & a[1]) | (a[2] & a[0]);
assign b[2] = (~a[2] & a[1]) | (~a[2] & a[0]) | (a[2] & a[1] & ~a[0]);
assign b[1] = (a[1] & a[0]) | (~a[1] & ~a[0]);
assign b[0] = (~a[0]);
endmodule

module stimulusBcdToExc3;
reg [3:0]a;
wire [3:0]b;
bcdToExc3 x(b, a);
initial
begin
a = 4'b0000;
#100;
a = 4'b0001;
#100;
a = 4'b0010;
#100;
a = 4'b0011;
end
endmodule

