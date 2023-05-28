module tb;
  int da[];
  int result;
  initial
    begin
      da = new[10];
      foreach(da[i]) begin
        da[i] = $urandom_range(30,0);
        $display("da[%d] = %d", i, da[i]);
      end
      result = da.sum();
      $display("sum=%d",result);
      result = da.sum with (int'(item>7)); //it counts total numbers greater then 7, that's because the type of item>5 is a 1-bit expression, and sum of 1-bit expressions is a 1-bit result. --> so it adds up everytime number greater then 7 found out and gives total counts of numbers greater then 7 in mentioned array
      $display("counts of number of elements whose size is greater then 7 =%d",result);
      result = da.sum with (int'(item>7?item:0)); //now it will give the sum of elements whose size is greater then 7
      $display("sum of elements greater then 7 is =%d",result);
      
    end
endmodule
