module tb;

class parent;
	int balance=10;
	
	function int summary;
	return balance;
	endfunction
	
endclass

class child extends parent;
	int balance =200;  //overrides the base class property balance
	//if you will not declare the "balance" property in child class then it will pick the value of "balance" from base class.

	
	function int summary;
	$display("initial balance=%d",balance); //property balance is overrides in child class, so it will show value whatever in child class
	return balance + super.balance; //super keyword is used to access the property and methods from parent class
	//super.balance will pick the balance from base class (parent)
	endfunction
endclass
initial
begin
child h1 = new;
$display("balance = %d",h1.summary());
end
endmodule
