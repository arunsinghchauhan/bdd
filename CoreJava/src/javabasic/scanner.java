package javabasic;

import java.util.Scanner;


public class scanner {
 
	void function()
	{
		int[] a=new int[9];
		System.out.println("Enter the numbers=");
		Scanner s =new Scanner(System.in);
		int n;
		n=s.nextInt();
		for(n=1;n<=9;n++)
		{
			a[n]=s.nextInt();
	    }
		System.out.println("The sum of numbers:"+a[n]);
		
	}
		
		
	
	public static void main(String args[])
	
	{
		scanner obj=new scanner();
        obj.function();		
	}

}
