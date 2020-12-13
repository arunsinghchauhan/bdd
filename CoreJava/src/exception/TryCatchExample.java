package exception;

import java.util.InputMismatchException;
import java.util.Scanner;

public class TryCatchExample {
	Scanner read= new Scanner(System.in);
	int n,d;
	
	
	
	void takeInput()
	
	{
		try
		{
		System.out.println("Enter number for dividend :");
		n= read.nextInt();
		
		System.out.println("Enter number for divisor: ");
		d=read.nextInt();
		
		int remainder= n%d;
		System.out.println("On dividing tha remainder of the given numbers is: "+remainder);
		}
		
		catch(ArithmeticException e)
		{
			System.out.println("Divided by zero exception take place");
		}
		
		catch(InputMismatchException e)
		{
		     //System.out.println(e);
			System.out.println("You entered the string or special character instead of number");	
		}
		catch(Exception e)//this is execute when any other exception will comment out.
		{
			System.out.println("General excption");
		}
		
		finally
		{
			System.out.println("Have a nice day");
		}
		 
	}
	
	
	
	
}
