//full adder n bits
module ripplenbit_add #(parameter N = 6) (a,b,s,c);
	
	input wire [N-1:0] a, b;
	output wire [N-1:0] s;
	output wire c;
	
	wire [N-1:0] w;
	
	//bit 0 đầu tiên của bộ cộng
	full_adder fa0 (
				.a(a[0]),
				.b(b[0]),
				.cin(1'b0),
				.s(s[0]),
				.cout(w[0])
	);
	
	genvar i;
	
	generate
		for (i=1;i<N;i=i+1) begin
			full_adder fa (
				.a(a[i]),
				.b(b[i]),
				.cin(w[i-1]),
				.s(s[i]),
				.cout(w[i])
			);
		end
	endgenerate
	
	assign c = w[N-1];
	
endmodule

//full adder 3 bits
module ripple3bit (a,b,s,c);
	
	input wire [2:0] a, b;
	output wire [2:0] s;
	output wire c;
	wire w[1:0];
	
	full_adder fa1 (.a(a[0]),.b(b[0]),.cin(1'b0),.s(s[0]),.cout(w[0]));
	full_adder fa2 (.a(a[1]),.b(b[1]),.cin(w[0]),.s(s[1]),.cout(w[1]));
	full_adder fa3 (.a(a[2]),.b(b[2]),.cin(w[1]),.s(s[2]),.cout(c));
	
endmodule

//full adder
module full_adder (a,b,cin,s,cout);
	
	input wire a, b, cin;
	output wire s, cout;
	
	//wire w1, w2, w3;
	wire [2:0] w;

	half_adder ha1 (.a(a), .b(b), .s(w[1]), .cout(w[0]));
	half_adder ha2 (.a(w[1]), .b(cin), .s(s), .cout(w[2]));
	
	//assign cout = w[0] | w[2];
	or or_inst(cout, w[0], w[2]);
endmodule

//half adder
module half_adder (a, b, s, cout);
	
	input wire a, b;
	output wire s, cout;

	xor x (s, a, b);
	and a_1 (cout, a, b);
	
	// always @(a,b) begin
	// 	s = a^b;
	// 	cout = a&b;
	// end

endmodule