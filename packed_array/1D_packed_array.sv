module tb;
  string str;
  int arr[3] = '{1,2,3}; //1 D array
  initial 
    $display("array = %p", arr); //%p to print whole arrya at once
    initial
      foreach(arr[i]) $display("array[%d] = %d",i, arr[i]); //prints elements one by one
endmodule
