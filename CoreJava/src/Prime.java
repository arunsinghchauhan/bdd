import java.util.Scanner;


public class Prime {

	
	public static void main(String[] args) {
	    int n; int i;int j;
		//Scanner s=new Scanner(System.in);
		/*System.out.println("Enter the number");
		n=s.nextInt();*/
		
		for(i=2;i<=100;i++);
		{
			for(j=2;j<=100;j++)
			{
				if(j==i)
					System.out.println(i);
				if(i%j==0)
					break;
			}
		}
	}

}
