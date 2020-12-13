package com.basicconcepts;

import java.util.Scanner;

public class ReverseOfNumber {

	void calcu()
	{
//		int n= 9%10;
//		System.out.println(n);
		System.out.println("Enter a number");
		Scanner read= new Scanner(System.in);
		int n=read.nextInt();
		int remainder=0;
		while(n!=0)
		{
			remainder= remainder*10;
			remainder=remainder+n%10;
			n=n/10;
			
		}
		System.out.println("The reverse of entered number is: "+remainder);
	}
	
	
	
	public static void main(String[] args) {
		ReverseOfNumber ron= new ReverseOfNumber();
		ron.calcu();
	}

}
