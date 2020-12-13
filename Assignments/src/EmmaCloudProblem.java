import java.util.Scanner;

public class EmmaCloudProblem {

	public static void main(String[] args) {

		Scanner read= new Scanner(System.in);
		System.out.println("Enter Number of Clouds: ");
		int n=read.nextInt();
		int i=0;
		int c[]= new int[n];
		System.out.println("=========================");
		System.out.println("Enter the type of cloud (0 for Ordinary and 1 for Thunder cloud)");
		for(i=0;i<n;i++)
		{
			c[i]=read.nextInt();
		}
		
		System.out.println("=========================");
		
		int count = 0;
	    i = 0;
		 while(i < n-1){
		 if(i+2 < n && c[i + 2] == 0){   //  //0 0 0 0 1 0 
		 i = i + 2;
		 count++;
		 }
		 else{
		 i++;
		 count++;
		 }
		 }
		System.out.println(count);
		
		
		
	}

}
