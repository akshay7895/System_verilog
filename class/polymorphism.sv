
//vm = virtual method, nvm = non-virtual method
module tb;
  
  class bc;
    
    function void nvm;
      $display("bc:nvm:");
    endfunction
    
    virtual function vm;
      $display("bc:vm:");
    endfunction
    
  endclass
  
  class cc extends bc;
    
    function void nvm;
      $display("cc:nvm:");
    endfunction
    
    virtual function vm;
      $display("cc:vm:");
    endfunction
    
  endclass
  
  bc bc_h, bc_h1;
  cc cc_h;
  
  initial
    begin
      bc_h = new;
      cc_h = new;
      bc_h1 = cc_h; // base class = child class(possible) --> polymorphism
      //the virtual method of parent class will be modified to the method of child class --> if method have same name and prototype (like return type and arguments)
      $display("*******normal prints***********");
      bc_h.nvm();
      bc_h.vm();
      cc_h.nvm();
      $display("***below non vm method, so did not updated to child class method***");
      
      bc_h1.nvm();
      $display("******vm method, so updated to child class method value ********");
      bc_h1.vm(); //the method is updated to the child class method 
      
    end
endmodule
