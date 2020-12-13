
import  java.util.Scanner;

public class HelloName {

	public static void main(String[] args) {
		//System.in is reference of keyboard
		Scanner apple=new Scanner(System.in); 
		System.out.println("Enter your name please");
		String cname=apple.next();
		System.out.println("Hello Your Name is : "+cname);
		
	}

}
