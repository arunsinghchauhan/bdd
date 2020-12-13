package exception;

import java.util.Scanner;


//We can write try , catch , finally together
public class TryCatchFinallyDemo {
	
	public static void main(String[] args) {
	  //How to take input from keyboard
	  Scanner scan=new Scanner(System.in);
	  System.out.println("Enter the first num1");
	  int num1=scan.nextInt(); //nextInt 
	  System.out.println("Enter the Second num2");
	  int num2=scan.nextInt();
	  //one try can have multiple catch  block
	  try {
		  	int result=num1/num2;
		  	System.out.println("Result(num1/num2) = "+result);
		  	System.out.println("Thanks , computation is done!");
			if(result==10){
			  	  return;	
			 }
			System.exit(0); //finally will not execute
	  }catch (ArithmeticException e) {
		 e.printStackTrace();
	  }catch (Exception e) {
		  e.printStackTrace();
	  } finally {
		 // 1. finally can come with try,  catch block
		  //2. Finally should be last block
		  //3. Only one, finally block is allow with try block.
		  //4. Finally block will always execute irrespective of exception.
		       //while catch will execute only in case of exception.
		  //5. this block will execute even we write some return statement inside the
		   //try block
		  //6. Finally  block will execute even exception is not caught inside the catch block 
		  System.out.println("Finally block will always execute!!11");
	  }
	  //just after catch execution will continue
	  System.out.println("More dummy messsage");
	  System.out.println("End of main!!!!!!!!!!!!!1");
	  
	}

}
