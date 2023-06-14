module tb;

class sub_class;

	int obj;
	endclass
	
class tras;
	
	int data;
	sub_class sub_h = new;
	endclass

tras h1, h2;
initial
begin
h1 = new;
h1.data = 10;
h1.sub_h.obj = 20;
h2 = new h1; //only the objects of base class(tras) is copied not the object of sub-class(sub_class), the sub-class(sub_class) will point to same address as it is pointed by h1
end
endmodule
