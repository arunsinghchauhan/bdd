package tv;

import java.util.Scanner;

public class StringDemo {

	public static void main(String[] args) {
		Scanner scanner=new Scanner(System.in);
		System.out.println("Enter the name please");
		String name=scanner.nextLine();
		boolean b=name.startsWith("am");
		if(b){
			System.out.println("Yes your name starts with am (="+name+")");
		}else{
				System.out.println("your name do not start with am (="+name+")");
		}
		
		
	}

}
