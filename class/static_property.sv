
module tb;

	class tras;
	int addr;
	int data;
	int ctr=0;
	static int ctr_st=0;
	
	function new (int a, b);
	addr = a;
	data = b;
	ctr++;
	ctr_st++; //this is static property so it will increment for each new object creation , as it is shared across all the objects of this class
	$display("addr=%d,data=%d, ctr=%d, ctr_st=%d",addr,data,ctr,ctr_st);
	endfunction
	
	endclass
	
	initial
	begin
	tras handle[3];
	foreach(handle[i]) begin
	handle[i] = new(i+10, i+5);
	end
      $display("static ctr= %d",tras::ctr_st); //accessing the static property using class name 
	  //$display("static ctr= %d",tras::ctr); //it will give compilation error as ctr is non-static property, so we can't access it directly
end
	endmodule
	
	
