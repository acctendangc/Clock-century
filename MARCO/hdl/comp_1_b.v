/*Muc tieu la xay dung khoi comparator 6 bit (comp_6_b) so sanh "=="
tu khoi comparator 1 bit (comp_1_b) nen ta chi can xay dung chuc nang
kiem tra 2 dau vao co bang nhau hay khong cua khoi comp_1_b */ 

module comp_1_b(
    input a, 
    input b, 
    input en,
    output c  // c = !((!a && b) || (a && !b)) <=> a=b
);

wire a_not, b_not;
wire c0, c1, c2, c3, c4;

not gn0 (a_not, a);
not gn1 (b_not, b);

and ga0 (c1, a_not, b); // c1 = !a && b
and ga1 (c2, b_not, a); // c2 = a && !b

or go0 (c3, c1, c2); // c3 = c1 || c2

not gn2 (c4, c3); // c4 = !c3

and a3 (c, c4, en); //phai co tin hieu en thi dau ra moi co ket qua
endmodule