import java.util.InputMismatchException;
import java.util.Scanner;


public class BankEx {

	Scanner read= new Scanner(System.in);
	int acno;
	int amount=50000;String userinput;
	void takeaccountnumber()
	{
		System.out.println("Enter your account number: ");
		try{
			
		
		acno=read.nextInt();
		 
		 if (acno==1021063319)
		 {
			System.out.println("Your name is Arun Chauhan"); 
			System.out.println("your balanced amount is:"+amount);
			System.out.println("Do you want to withdraw/deposit. Please enter(Yes/No): ");
			userinput=read.next();
			
			if(userinput.equalsIgnoreCase("yes"))
			{
				action();
				
			}
			
			else{
				System.out.println("Thank you...");
				//greeting();
			}
		 }
		 
	
		else{
			 System.out.println("Wrong input data.");
			 takeaccountnumber();
		 }
		} catch(InputMismatchException e)
		{
			System.out.println("Please enter numerical value");
		}
		catch(NullPointerException n)
		{
			System.out.println("Entered number is out of limit");
		}
	}
	
	
	void action()
	{
		System.out.println("What you want : withdraw or deposit: ");
		String userinput1=read.next();
		
		if(userinput1.equalsIgnoreCase("withdraw"))
		{
			System.out.println("How many amount you want to withdraw");
			int inputwithdraw=read.nextInt();
			if(inputwithdraw>amount)
			{
				System.out.println("You are not eligible to withdraw this amount.Thank you.");
			}
			else
			{    amount= amount-inputwithdraw;
			
				System.out.println("Please collect your " +inputwithdraw+ " rupees..Now your account balanced is: "+amount+" Thank you.");
			}
		}
		
		else{
			System.out.println("Enter the amount you want to deposit:");
			int inputdeposit=read.nextInt();
			int amount=inputdeposit+50000;
			System.out.println("Your total amount after deposited "+inputdeposit+ " rupees.. is: "+amount+" Thank you.");

		}
	}
	
//	void greeting()
//	{
//		System.out.println("Have a nice day");
//	}
	
	
	public static void main(String[] args) {

		BankEx b= new BankEx();
		b.takeaccountnumber();
		if(b.userinput.equalsIgnoreCase("no"))
		{   return;
		}
		b.action();
		
	}

}
