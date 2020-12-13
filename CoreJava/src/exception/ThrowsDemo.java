package exception;

import java.util.Scanner;
//We can write try , catch , finally together
public class ThrowsDemo {

	
	static void chechAge(int age) throws Exception{
		if(age<1) {
 			 Exception exception=new Exception("age cannot be negative!");
 			 throw exception;
 		}
		System.out.println("Congrates your age is  = "+age);
	}
	public static void main(String[] args) {
	  //How to take input from keyboard
	  Scanner scan=new Scanner(System.in);
	  System.out.println("Enter the your age");
	  int num=scan.nextInt(); //nextInt 
	  try {
		  chechAge(num);
		  System.out.println("Congrates your age is valid!");
		  //System.exit(0); //finally will not execute
	  }catch (ArithmeticException e) {
		  e.printStackTrace();
	  }catch (Exception e) {
		  System.out.println(e.getMessage()); 
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
