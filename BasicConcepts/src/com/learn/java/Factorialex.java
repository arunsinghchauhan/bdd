package com.learn.java;

import java.util.Scanner;

public class Factorialex {

	int n, fact=1;
	public void f()
	{
		System.out.println("Enter the number");
		Scanner read= new Scanner(System.in);
		n= read.nextInt();
		
		for(int i=1; i<=n; i++)
		{
			fact= fact*i;
		}
		System.out.println("The factorial of " +n+ " is: "+fact);
	}
	
	public static void main(String[] args) {

		Factorialex obj= new Factorialex();
		obj.f();
	}

}
