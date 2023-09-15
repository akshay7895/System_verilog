// Code your testbench here
// or browse Examples
class a ;
  rand bit  len[];
  rand bit [5:0] b;
  
  constraint abc { len.size()>10 ;
                  len.size()<20;
                  
                  if(len.size()>15)
                     b[2:0] == 0;
                     }
  //below constraint will ensure that len should be solved before b (as constraints calculated in parallel).
  //if below costraint not used, you will see the combinations where len >15 and b[2:0] != 0, because both executes parallelly
  constraint solver { solve len before b;} 
  
  
  function void disp();
    $display("len=%d, b=%b", len.size(),b);
  endfunction
endclass

module tb;
  a ah;
  initial begin
    ah = new();
    repeat(5) begin
      ah.randomize();
      ah.disp();
    end
  end
endmodule
                     
    
