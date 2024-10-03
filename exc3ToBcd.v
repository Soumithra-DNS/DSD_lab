module exc3ToBcd(b, a);
input [3:0]a;
output [3:0]b;
assign b[0] = (~a[0]);
assign b[1] = ((~a[1] & a[0]) | (a[1] & ~a[0]));
assign b[2] = ((~a[2] & ~a[1]) | (~a[2] & ~a[0]) | (a[2] & a[1] & a[0]));
assign b[3] = ((a[3] & a[2]) | (a[3] & a[1] & a[0]));
endmodule

module stimulusExc3ToBcd;
reg [3:0]a;
wire [3:0]b;

exc3ToBcd x(b, a);

initial
begin
a = 4'b0011;
#100;
a = 4'b0100;
#100;
a = 4'b0101;
#100;
a = 4'b0110;
end
endmodule
