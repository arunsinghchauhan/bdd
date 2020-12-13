package com.basicconcepts;

import java.util.Scanner;

public class Factorial {

	int n,f=1;
	void takeInput()
	{
		System.out.println("Enter a number u want factorial of it: ");
		Scanner read= new Scanner(System.in);
		n=read.nextInt();
	}
	
	void fact()
	{
		for(int i=1;i<=n;i++)
		{
			f=f*i;
		}
		System.out.println("The factorial of "+n+ " is: "+f);
	}
	
	
	public static void main(String[] args) {
		Factorial f= new Factorial();
		f.takeInput();
		f.fact();
	}

}
