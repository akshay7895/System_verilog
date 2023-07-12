module tb;
	
	
	class tras;
	static int ctr=0;
	int a;
	
	function new();
	ctr++;
	$display("a=%d, ctr=%d",a,ctr); // "ctrl" will increment each time but not "a"
	endfunction
	
	
	static function dis ();
	//$display("a=%d",a); //compilation error as static method can't access non-static method
	$display("ctr=%d",ctr);
	endfunction
	endclass
	
	tras t1,t2;
	initial
	begin
	t1 = new;
	tras::dis; //directly accessing the static method using class name 
	t2 = new;
	tras::dis;
	
	end
	
	endmodule
