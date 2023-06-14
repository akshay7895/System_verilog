//to implement deep copy we have to write copy method is all the class.
module tb;

class sub_class;
	int a;
	int b;
	
	function sub_class copy; //copy is handle, sub_class is the name of class 
	copy = new; //object creation
	copy.a = this.a; //copying the objects of class 
	copy.b = this.b;
	return copy;
	endfunction
endclass

class ins_class;
	int c;
	int d;
	
	sub_class s1 = new;
	
	function void display();
	$display("a=%d",s1.a);
	$display("b=%d",s1.b);
	$display("c=%d",c);
	$display("d=%d",d);
	endfunction
	
	function ins_class copy; //copy is handle, sub_class is the name of class
	copy = new;
	copy.c = this.c;
	copy.d = this.d;
	copy.s1 = s1.copy; //s1.copy it will call the copy method of class "sub_class"
	return copy;
	endfunction

endclass

ins_class h1, h2;

initial
begin
h1 = new;
h1.c = 5;
h1.d = 6;
h1.s1.a = 7;
h1.s1.b = 8;
$display("calling the h1 display method");
h1.display();
	h2 = h1.copy();  //have to use this syntax for deep copy -->new will work if the top class(here "ins_class") have only variable and no method(that will be shallow copy)
	//.copy() so it will go to copy method of "ins_class" and allocate memory there and copy the objects mentioned there.
	//c, d it will copy normally, then we have "copy.s1 = s1.copy" statement, so it will go to copy method of "sub_class" and create an object and copy the properties a,b and return 
$display("calling the h2 display method");
h2.display();
h2.s1.a = 10;
h2.s1.b = 20;
$display("calling the h1 --after-- changing --h2--display method");
h1.display();
$display("calling the h2 --after-- changing --h2--display method");
h2.display();
end
endmodule
