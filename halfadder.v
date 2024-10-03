module halfadder(s, c, a, b);
input a, b;
output s, c;
xor(s, a, b);
and(c, a, b);
endmodule

module stimulus;
reg a, b;
wire s, c;
halfadder h1(s, c, a, b);
initial
begin
	a = 0;
	b = 0;

	#100 a = 1;
	#100 b = 1;
end
endmodule