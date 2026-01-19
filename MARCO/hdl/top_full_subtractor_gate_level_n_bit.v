//full adder n bits
module ripplenbit_sub #(parameter N = 6) (a,b,d,borrow);
	
	input wire [N-1:0] a, b;
	output wire [N-1:0] d;
	output wire borrow;
	
	wire [N-1:0] w;
	
	//bit 0 đầu tiên của bộ trừ
	full_subtractor fs0 (
				.a(a[0]),
				.b(b[0]),
				.bin(1'b0),
				.d(d[0]),
				.bout(w[0])
	);
	
	genvar i;
	
	generate
		for (i=1;i<N;i=i+1) begin
			full_subtractor fs (
				.a(a[i]),
				.b(b[i]),
				.bin(w[i-1]),
				.d(d[i]),
				.bout(w[i])
			);
		end
	endgenerate
	
	assign borrow = w[N-1];
	
endmodule

//full subtractor 3 bits
module ripple3bit (a,b,d,borrow);
	
	input wire [2:0] a, b;
	output wire [2:0] d;
	output wire borrow;
	wire w[1:0];
	
	full_subtractor fs1 (.a(a[0]),.b(b[0]),.bin(1'b0),.d(d[0]),.bout(w[0]));
	full_subtractor fs2 (.a(a[1]),.b(b[1]),.bin(w[0]),.d(d[1]),.bout(w[1]));
	full_subtractor fs3 (.a(a[2]),.b(b[2]),.bin(w[1]),.d(d[2]),.bout(borrow));
	
endmodule

//full subtractor
module full_subtractor (a,b,bin,d,bout);
	input wire a, b, bin;
	output wire d, bout;

	//wire w1, w2, w3;
	wire [2:0] w;

	half_subtractor hs1 (.a(a), .b(b), .d(w[1]), .bout(w[0]));
	half_subtractor hs2 (.a(w[1]), .b(bin), .d(d), .bout(w[2]));
	
	or (bout,w[0],w[2]);
endmodule

//half subtractor
module half_subtractor (a, b, d, bout);
	input wire a, b;
	output wire d, bout;
	wire w;
	
	xor(d,a,b);
	not(w,a);
	and(bout,w,b);
endmodule