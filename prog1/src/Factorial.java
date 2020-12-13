import java.util.Scanner;
public class Factorial {
int num;
void input()
{
	Scanner scanner=new Scanner(System.in);
	System.out.println("ENTER YOUR NUMBER:");
	this.num=scanner.nextInt();
}
void result()
{
	int sum=1;
	for(int i=2;i<=num;i++)
	{
		sum=sum*i;
	
	}
	System.out.println("fact is"+num+"is="+sum);
}

public static void main(String[] args){
	Factorial fact=new Factorial();
	fact.input();
	fact.result();
	
}

	
}