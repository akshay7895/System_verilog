module tb;
  int d [4];
  
  initial begin
  foreach(d[i]) begin
    d[i] = $urandom_range(20,0);
    $display("d[%d] = %d", i, d[i]);
  end
  end
endmodule
