//**** super is a keyword used to access the parent class properties & methods within the child class*****
//**** It cannot be used outside the class definition ***

module tb;

class parent;
	int balance;
	
	function new (int pay); //here value = pay
	balance = pay;
	endfunction
endclass

class child extends parent;

	function new (int value);
	super.new(value); //super.new means now it will go to the base class's new method and pass the "value" to "pay"
	endfunction
endclass

child h1 = new(160);
initial
$display("balance=%d",h1.balance);
endmodule
