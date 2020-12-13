import java.util.Scanner;


public class InputFromUser {

	public void takevalue()
	{
		System.out.println("Enter a number");
		Scanner obj=new Scanner(System.in);
		int result1=obj.nextInt();
		System.out.println("You Entered :"+result1);
	  
		System.out.println("Enter a string");
		String result2=obj.next();
		System.out.println("You Entered :"+result2);
		
		obj.close();
		
		
	}
	
	
	
	
	public static void main(String[] args) {

		InputFromUser i = new InputFromUser();
		
		i.takevalue();
		
	}

}
