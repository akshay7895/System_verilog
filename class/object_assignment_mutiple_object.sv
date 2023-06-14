module object_assign;

class tras;
	int data;

endclass

//class instance not necessarily needed inside initial block
tras t1= new;
tras t2= new;

initial
begin
t1.data = 10;
$display("t1.data=%d",t1.data);
t2.data = 50;
$display("t2.data=%d",t2.data);
t2 = t1; //t1 is assigned to t2, now t2 will also point to same address location as t1
$display("t1.data=%d",t1.data);
$display("t2.data=%d",t2.data);
t2.data = 30; //as t1, t2 pointing to same address location so changing any one will change both the object's value(although it's one address location)
$display("t1.data=%d",t1.data);
$display("t2.data=%d",t2.data);
t1.data = 100;
$display("t1.data=%d",t1.data);
$display("t2.data=%d",t2.data);
t2 = new t1;
$display("t1.data=%d",t1.data);
$display("t2.data=%d",t2.data);
t2.data = 500; //will allocate separate memory for h2 and will also copy all the values of h1 to h2.
//now both will have values accordingly  assigned to them as now both points to separate memory location
$display("t1.data=%d",t1.data); 
$display("t2.data=%d",t2.data);
end
endmodule
