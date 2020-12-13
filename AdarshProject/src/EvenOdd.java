import java.util.Scanner;

public class EvenOdd {

	Scanner s = new Scanner(System.in);
	
	
	

	public void run() {
		System.out.println("Enter any number");
		int n = s.nextInt();
		if (n % 2 == 0) {
			System.out.println("number is even");
		} else {
			System.out.println("odd");
		}

	}

	void nextEx() {
		System.out.println("Enter first name");
		String b = s.next();
		if (b.equalsIgnoreCase("arun")) {
			System.out.println("you are arun");
		} else {
			System.out.println("you are not arun");
		}
	}

	void nextLineEx() {
		System.out.println("Enter the full name");
		String a = s.next();
		
		if (a.equalsIgnoreCase("arun singh chauhan")) {
			System.out.println("you are arun singh chauhan");
		} else {
			System.out.println("you are not arun singh chauhan");
		}
	}

	public static void main(String[] args) {
		
		EvenOdd ob = new EvenOdd();
		ob.run();
		ob.nextEx();
		ob.nextLineEx();

	}
}