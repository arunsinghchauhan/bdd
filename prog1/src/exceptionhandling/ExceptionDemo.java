package exceptionhandling;
import java.util.Scanner;
public class ExceptionDemo {
public static void main(String[] args) {
	Scanner apple=new Scanner(System.in);
	System.out.println("ENTER FIRST NUMBER");
	int num1=apple.nextInt();
	System.out.println("ENTER SECOND NUMBER");
	int num2=apple.nextInt();
try{
	int result=num1/num2;
	System.out.println("THE RESULT IS::"+result);
	
}
catch(Exception e)
{
	e.printStackTrace();
	System.out.println("EXCEPTION OCCUR");
}
finally{
	System.out.println("FINAL STATEMENT IS ALWAYS EXECUTED");
}
}


}

