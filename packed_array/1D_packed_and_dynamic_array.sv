// Code your testbench here
// or browse Examples
module tb;
  string str;
  int array[]; //dynamic array
  initial
    array = new[10]; //size defination of dynamic array
  //int [3] arry; it is illegal to define like this, as size of int is already fixed as 32-bit
  int arry[3]; //here it gives 3, 32-bit integer
  int arr[3] = '{1,2,3}; //1 D array
  initial 
    $display("array = %p", arr); //%p to print whole arrya at once
    initial begin
      foreach(arr[i]) $display("array[%d] = %d",i, arr[i]); //prints elements one by one
      foreach(arry[i]) $display("size=%b", arry[i]); //you will get 32-bit data for each iteration
      $display("size=%0d",array.size()); //to see the size of dynamic array
    end
endmodule
