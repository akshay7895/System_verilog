module tb;
int array1[int];
int array2[string];
string array3[string];

//initializing each associative array
initial begin
array1 = '{1:32,
		   5:62 };

array2 = '{"amit" : 100,
		   "ram" : 200 };

  array3 = '{"amita" : "akshay",
			"rani" : "raja" };
  $display("array1=%p, array2=%p, array3=%p",array1,array2,array3);
end
endmodule
