import java.util.InputMismatchException;
import java.util.Scanner;

public class ExceptionTest {

	int a,b;
	public void inputData()
	{
		
		System.out.println("Enter first Number: ");
		Scanner s= new Scanner(System.in);
		try {
		a=s.nextInt();
		
		System.out.println("Enter second Number: ");
		b=s.nextInt();
		
		
		
		}catch(InputMismatchException e)
		{
			System.out.println("Please enter a Number digit");
			inputData();
		}
		
	
	}
	
	public void showData()
	{
		
		System.out.println(a);
		System.out.println(b);
	}
	public static void main(String[] args) {

		ExceptionTest ob= new ExceptionTest();
		ob.inputData();
		System.out.println("============================");
		ob.showData();
		
	}

}
