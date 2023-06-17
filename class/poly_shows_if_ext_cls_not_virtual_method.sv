//-----in sv By default the extended classes's method will become virtual if parent class method is virtual-----

module tb;
  
class a;
  
  virtual function void display;
    $display("in a");
  endfunction
endclass

  class b extends a;
    
     function void display;
      $display("in b");
  endfunction
  endclass

    class c extends b;
      
       function void display;
        $display("in c");
  endfunction
      
    endclass
	
  a a1;
  b b1;
  c c1;
  
  initial
    begin
 c1 = new;
      c1.display();  //here it prints from class c, as it treats the display method as virtual, because there root parent class method "display" is virtual
    end
endmodule
  
