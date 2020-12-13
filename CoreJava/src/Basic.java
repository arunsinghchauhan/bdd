import java.util.Scanner;


public class Basic {
	
	
	
	
	public void run()
	{
		int n; int temp;
		Scanner s = new Scanner(System.in);		
		n=s.nextInt();
		boolean isPrime=true;
		
		 
		for(int i=2; i<n; i++)
		{
			temp=n%i;
			if(temp==0)
			{
				isPrime=false;
			}
			
		}
	    if(isPrime)
		System.out.println(n+ " is a prime number");
	    else
	    	System.out.println(n+"  is not a prime number");
		
	}

	
	public static void main(String[] args) {
		
		System.out.println("Enter the number:");	
		Basic r =new Basic();
		r.run();
		}
	}
		
		
		
		
		
		
		
		
		
		
		
	/*int b=n/2;
		for(int i=2;i<=b;i++)
		{
			if(n%i==0);
			{
				temp++;
					
			}
			
		}
	if(temp==0 && n!=1)
	{
		System.out.println("PRIME");
	}
	else
	{
		System.out.println("NOT PRIME");
		
		
	}
		
		
		
	}

}*/