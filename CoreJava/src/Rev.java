import java.util.Scanner;

public class Rev {

	public Rev()
	{
		System.out.println("Enter the number you want to reverse: ");
		Scanner s= new Scanner(System.in);
		int n=s.nextInt();
		
		int rem=0;
		while(n!=0)
		{
			rem=rem*10;
			rem=n%10+rem;
			n=n/10;
		}
		
	}
	
	public static void main(String[] args) {

		new Rev();
		
	}

}
