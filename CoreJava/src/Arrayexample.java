import java.util.Scanner;


public class Arrayexample {

	
	void primecheck()
	{
		System.out.println("Enter the number to check it is prime: ");
		Scanner scan=new Scanner(System.in);
		int n=scan.nextInt();
		int flag=0;
			
		for(int b=2;b<n;b++)
	   {

		if(n%b==0)
		{
		System.out.println("It is not a prime number");
		flag=1;
        break;
	    }
		
	   }
		if(flag==0)
			System.out.println("Prime");
	
	}
	
	void checkfactor()
	{
		System.out.println("Enter a number to deliver factor of it:");
		Scanner scan=new Scanner(System.in);
		int fact=scan.nextInt();
		
		for(int count=1;count<=fact;count++){
			if(fact%count==0)
			{
                int store[]=new int[20];
                System.out.format("%d  ",count);
				//System.out.println("The factors of "+fact+" is:","%d",count);
			}
		}
	}
	 
	
	
	public static void main(String[] args) {

		int a[]={11,22,33,44,55};
		
		//int a[]= new int[5];
		
//		for(int i=0;i<=4;i++)
//		{
//			System.out.println("The array values are:" +a[i]);
//			
//		}
		Arrayexample arr=new Arrayexample();
		//arr.primecheck();
		arr.checkfactor();
		
	}

}
