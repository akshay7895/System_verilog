module tb;

class sub;
	int a;
	int b;
	
endclass

class top;
	int c;
	int d;
	sub s1 =new;
	
	function void display;
	$display("a=%d",s1.a);
	$display("b=%d",s1.b);
	$display("c=%d",c);
	$display("d=%d",d);
	endfunction
	
endclass

top h1, h2;

initial
begin
h1 = new;
h1.s1.a = 10;
h1.s1.b = 20;
h1.c = 30;
h1.d = 40;
$display("h1 values are:");
h1.display();
h2 = new h1; //this will copy the objects of class top but not the sub-class(sub), the sub-class(sub) objects will be the same for both h1, h2 handle 
$display("h2 values are:");
h2.display();
//changes are made in the sub-class(sub) objects a, b 
h2.s1.a = 1;
h2.s1.b = 2;
h2.c = 3;
h2.d = 4;
$display("h2 values are after change in h2:");
h2.display(); //it will show the changed values 
$display("h1 values are after change in h2:");
h1.display(); //for this also a, b is changed as both h1, h2 is pointing to the same address locations (because the a, b are from sub-class, and in shallow copy the sub-class objects are not copied, they(handles) point to the same address 
end
endmodule
