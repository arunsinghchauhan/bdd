//import java.util.Scanner;


public class Checkprime {

	public static void main(String[] args) {
		
		int n=17;//the num. to be cheked.
		int m=0;int flag=0;
		//System.out.println("Enter the number to check: ");
		
//		Scanner s= new Scanner(System.in);
//		int n=s.nextInt();
		m=n/2;
		for(int i=2;i<=m;i++)
		{
			if(n%i==0)
			{
				System.out.println("not prime");
			}
			flag=1;
			break;
		}
		if(flag==0)
			System.out.println("prime");

	}

}
