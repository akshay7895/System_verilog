//******chaining constructor example*******
module tb;

	class parent;
	int a;
	
	function new (int a);
	this.a = a;
	endfunction 
	
	endclass
	
  class child extends parent(100); //the parent class argument is passed to parent class constructor(new). so a =100 (value passed)
	
	function void display;
	
	$display("a=%d",a);
	
	endfunction
	endclass
	
	initial
	begin
	child ch;
	ch = new;
	ch.display();
	end
endmodule

//*************************************************************
//***************if we use another method then constructor(new)
//*************************************************************
module tb;

	class parent;
	int a;
	
	function int dis (int a);
	this.a = a;
	return dis;
	endfunction 
	
	endclass
	
	class child extends parent; //the parent class argument is passed to parent class new constructor. so a =100 (value passed)
	

	function void display;
	
	$display("a=%d",a);
	
	endfunction
	endclass
	
	initial
	begin
	child ch;
	ch = new;
    ch.dis(100); //passed value to base class method "dis"
	ch.display();
	end
endmodule


