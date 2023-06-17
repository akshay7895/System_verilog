//---------dynamic casting- $cast------------

module tb;
  
class a;
  
  virtual function void display;
    $display("in a");
  endfunction
endclass

  class b extends a;
    
    virtual function void display;
      $display("in b");
  endfunction
  endclass


	
  a a1;
  b b1,b2;
  
  initial
    begin
      b1 = new;
      a1 = b1; //child class assigned to parent class
      $cast(b2,a1); //this is dynamic casting(in OOPs only static casting not possible)
      //now we can assign the parent class to child class, bcz now the parent class is also same as child class
      b1.display();
      a1.display();
      b2.display();
      
    end
endmodule
  
