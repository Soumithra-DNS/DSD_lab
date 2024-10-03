module fulladder(s, c, a, b, cin);
input a, b, cin;
output s, c;
wire c1, s1, c2;
halfadder h1(s1, c1, a, b);
halfadder h2(s, c2, s1, cin);
or(c, c1, c2);
endmodule

module stimulusFA;
reg a, b, cin;
wire s, c;
fulladder f1(s, c, a, b, cin);
initial
begin
	a = 1;
	b = 1;
	cin = 0;
	#100 cin = 1;
	#100 a = 0;
	#100 b = 0;
end
endmodule


