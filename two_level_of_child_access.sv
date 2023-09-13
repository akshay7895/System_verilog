// Code your testbench here
// or browse Examples
class a;
  int p=10;
endclass

class b extends a;
  int p=5;
   function new ();
       p = super.p; //access parent's(class a) poperty p
  endfunction
endclass

class c extends b;
  int p;
    function new (); 
        p = super.p; //access parent's(class b) poperty p
    $display("cc--%d",p);
  endfunction
endclass

module tbb;
  c ch;
  initial begin
    ch = new();
      $display("%d",ch.p); //will display value from class a properties

  end
  
endmodule
