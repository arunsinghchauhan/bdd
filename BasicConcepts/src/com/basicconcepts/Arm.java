package com.basicconcepts;

import java.util.Scanner;

public class Arm {

	int n,s=0,r,temp;
	public void enterNum()
	{
		System.out.println("Enter the number you want to validate that number is armstring or not ?");
		Scanner read= new Scanner(System.in);
		n=read.nextInt();
		temp=n;
		
	}
	
	public void checkarm()
	{
		while(n>0)
		{
		r=n%10;
		n=n/10;
		s=s+r*r*r;
		
		}
		
		if(s==temp)
		{
		System.out.println("Armstrong");
		}
		else
			System.out.println("Not armstrong");
		
	}
	
	
	public static void main(String[] args) {

		Arm am= new Arm();
		am.enterNum();
		am.checkarm();
	}

}
