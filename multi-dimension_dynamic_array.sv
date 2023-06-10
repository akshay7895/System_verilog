module tb;
  int d[][];
  initial
    begin
      d = new[5]; //construct lef-most or first dimension
      foreach(d[i]) d[i] = new[i+2];  //construct 2nd dimension, here each array have different size
      $display("dynamic array=%p",d);
    end
endmodule
