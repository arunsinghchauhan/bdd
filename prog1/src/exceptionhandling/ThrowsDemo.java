package exceptionhandling;

import java.util.Scanner;

public class ThrowsDemo {

	static void checkage(int age) throws Exception {
		if (age < 1) {
			Exception exception = new Exception("u r nt valid");
			throw exception;
		}
		System.out.println("u r valid");
	}

	public static void main(String[] args)throws Exception {
		Scanner apple = new Scanner(System.in);
		System.out.println("ENTER THE NUMBER:");
		int num = apple.nextInt();
		//try {
			checkage(num);

		//} catch (Exception e) {
			//e.printStackTrace();
			////System.out.println("exception is ocdcured:");
		//}
		
	}
}
