module tb;
  logic [4:0][3:0] arr; //5 elements each with 4 bits, in contiguous memory location 
  initial begin
    foreach(arr[i]) begin
      arr[i] = i;
      $display("array[%d] = %b", i, arr[i]);
    end
  end
endmodule
