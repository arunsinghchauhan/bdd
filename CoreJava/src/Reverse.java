import java.util.Scanner;


public class Reverse {

	
	/*public static void main(String[] args) {
		int n, reverse = 0;
		 
	      System.out.println("Enter the number to reverse");
	      Scanner in = new Scanner(System.in);
	      n = in.nextInt();
		  while( n != 0 )
	      {
	          reverse = reverse * 10;
	          reverse = reverse + n%10;
	          n = n/10;
	      }
		 System.out.println("Reverse of entered number is "+reverse);*/
	public static void main(String[] args)
	{
	      String original, reverse = "";
	      Scanner in = new Scanner(System.in);
	 
	      System.out.println("Enter a string to reverse");
	      original = in.nextLine();
	 
	      int length = original.length();
	 
	      for ( int i = length - 1 ; i >= 0 ; i-- )
	         reverse = reverse + original.charAt(i);
	 
	      System.out.println("Reverse of entered string is: "+reverse);
	   }
	 		
	}


