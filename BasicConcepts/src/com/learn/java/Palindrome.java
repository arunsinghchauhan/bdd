package com.learn.java;

import java.util.Scanner;

public class Palindrome {

	int n,rem=0;
	int temp=0;
	public void takein()
	{
		Scanner read= new Scanner(System.in);
		System.out.println("Enter the number to find it is palindrome or not:  ");
		n=read.nextInt();
		temp=n;
	}
	
	public void logictoexe()
	{
		while(n!=0)
		{
			rem=rem*10;
			rem=rem+n%10;
			n=n/10;
		}
		
		if(rem==temp)
		   System.out.println("The number "+ temp +"  is palindrome");
		else
			System.out.println("The number "+ temp +" is not palindrome");
	
	}
	
	
	public static void main(String[] args) {

		Palindrome p= new Palindrome();
		p.takein();
		p.logictoexe();
	}

}
