module tb;
  //dimension written RHS of variable
  logic [4:0] arr[3:0]; //created 4 rows each with 5 bits
  initial begin
    foreach(arr[i]) begin
      arr[i] = i;
      $display("array[%d] = %b", i, arr[i]);
    end
  end
endmodule
