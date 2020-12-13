package com.learn.java;

import java.util.Scanner;

public class PrimeNumber {

	public static void main(String[] args) {

		System.out.println("Enter the number: ");
		Scanner read= new Scanner(System.in);
		int a=read.nextInt();
		boolean IsPrime=true;
		for(int i=2;i<a;i++)
		{
			if(a%i==0)
			{
				IsPrime=false;
				break;
				
			}
		}	
		
		if(IsPrime)
		System.out.println(a + "   is Prime number");
		else
		System.out.println(a + "  is Not Prime");
			
		
	}

}
