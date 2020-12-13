package javabasic;

import java.util.Scanner;


public class Jb {
 
	void function()
	{
		System.out.println("Enter the numbers=");
		Scanner s =new Scanner(System.in);
		int n;
		n=s.nextInt();
		
		
	for(n=1;n<=9;n++){
		n=s.nextInt();
	}
		
	}
		
		
	
	public static void main(String args[])
	
	{
		Jb obj=new Jb();
        obj.function();		
	}

}
