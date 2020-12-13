import java.util.Scanner;


public class Fact {
int n,f=1;
	public void take()
	{
		System.out.println("Enter any number: ");
		try
		{
		Scanner read= new Scanner(System.in);
		n=read.nextInt();
		}catch(Exception InputMismatchException)
		  {
        System.out.println("Please enter any numerical values");
        take();
          }
	}
	
	void fcalc()
	{
		for(int i=1;i<=n;i++)
		{
			f=f*i;
		}
		System.out.println("Your factorial of entered number is: "+f);
	}
	
	public static void main(String[] args) {
		Fact f= new Fact();
		f.take();
		f.fcalc();
	}

}
