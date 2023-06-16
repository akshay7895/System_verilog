module test_inheritance;

	// In class account_base;
	class account_base;
		
		int balance = 200;
		
		function int summary_base;
		
		return balance;
		endfunction
	

	
		task deposit( int pay);
		balance = balance + pay;
		endtask
		
	endclass: account_base




	class account_extd extends account_base;
	

		int balance = 300;

		function int summary_extd;
		return balance + super.balance; //super.balance goes to parent class 
		
		endfunction


	endclass: account_extd
  
		account_extd acc_h;
		initial
		begin
		acc_h = new;
		acc_h.deposit(400);
		
      $display("parent class balance=%d",acc_h.summary_base());  //go to parent class
		
      $display("child class balance =%d",acc_h.summary_extd); //go to child class
	

        
		
		end
		
endmodule : test_inheritance
