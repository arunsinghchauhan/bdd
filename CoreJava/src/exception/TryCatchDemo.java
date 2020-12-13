package exception;

import java.util.Scanner;


public class TryCatchDemo {
	
	public static void main(String[] args) {
	  //How to take input from keyboard
	  Scanner scan=new Scanner(System.in);
	  System.out.println("Enter the first num1");
	  int num1=scan.nextInt(); //nextInt 
	  System.out.println("Enter the Second num2");
	  int num2=scan.nextInt();
	  try {
		  	int result=num1/num2;
		  	System.out.println("Result(num1/num2) = "+result);
		  	System.out.println("Thanks , computation is done!");
	  }catch (Exception e) {
		 e.printStackTrace(); //detail information about exception
	  } 
	  //just after catch execution will continue
	  System.out.println("More dummy messsage");
	  System.out.println("End of main!!!!!!!!!!!!!");	
	  
	}

}
