module top;

class trasn;
	bit [31:0] src, dst, tr;
	
  function new (int src_a, int dst_a=10, int tr_a); 
	this.src = src_a; //this.src represents the class property src, scr_a refers to the argument
	this.dst = dst_a;
	this.tr = tr_a;
	endfunction
	
endclass
	
  trasn tra = new(5,,11); //needs to pass the arguments in the order they are 
	initial
	$display("src:%d,dst:%d, tr:%d",tra.src, tra.dst, tra.tr);
	endmodule
