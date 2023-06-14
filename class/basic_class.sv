module top_m;

class  top; //class 
	int bal; //property of class
  
	//this new function is called the default constructor, it is by-default called everytime we create an object 
  //it do 3 task
  // 1- allocate memory
  //2- return the address of memory to handle
  //2- initialize all the property (default/user defined)
  function new (input int b =6);  //input argument with default value
	begin
	bal = b; //passing the argument value to bal variable
	end
	endfunction
	
endclass

  top top_h = new(101); //creating the handle and then the object at the same time, passing the value 101 to the input argument of new constructor

initial
  $display("initial balance is :%d", top_h.bal); //it will print the updated value
endmodule 
