import java.util.Arrays;
import java.util.Scanner;

public class SocksProblem {

	public static void main(String[] args) {

		Scanner read= new Scanner(System.in);
		System.out.println("Enter Number of Socks: ");
		int n=read.nextInt();
		int i=0;
		int s[]= new int[n];
		System.out.println("=========================");
		System.out.println("Enter the socks numbers to relate it with color: )");
		for(i=0;i<n;i++)
		{
			s[i]=read.nextInt();
		}
		System.out.println("=========================");
		int count=0;
		Arrays.sort(s);
		for(i=0;i<n-1;i++)
		{
			if(i<n && s[i]==s[i+1])
			{
				count++;
				i++;
			}
			
		}
		
		System.out.println("The count of pairs of socks are: "+count);
		
	}

}
