module tb;
  int d[][];
  // int d[3][5]; //it has 3 ROW, 5 COLUMN
  initial
    begin
      d = new[5]; //construct lef-most or first dimension
      foreach(d[i]) d[i] = new[i+2];  //construct 2nd dimension, here each array have different size
      $display("dynamic array=%p",d);
    end
endmodule
