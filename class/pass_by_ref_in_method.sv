module tb;

class tras;
	int data;
	
	endclass
	
	function void create (ref tras h1); //here ref keyword is used 
	h1 = new;
	h1.data = 50;
	endfunction
	
	tras h2;
	initial
	begin
	create(h2); //it will be referenced
	$display("data=%d",h2.data);
	end
	endmodule
