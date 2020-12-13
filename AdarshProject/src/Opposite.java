import java.util.Scanner;


public class Opposite {

	int num,reverse=0;
	void t()
	{
		System.out.println("Enter any number:");
		Scanner read= new Scanner(System.in);
		num=read.nextInt();
	}
	
	void opp()
	{
		while(num!=0)
		{
			reverse= reverse*10;
			reverse= reverse+num%10;
			num=num/10;
			
			
		}
		System.out.println("The reverse is: "+reverse);
	}
	
	public static void main(String[] args) {
		Opposite op= new Opposite();
		op.t();
		op.opp();
		
	}

}
