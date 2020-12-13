package com.basicconcepts;
import java.util.Scanner;

public class PerfectNumber {

	void calculate()
	{   System.out.println("Enter any number");
		Scanner read=new Scanner(System.in);
		int n=read.nextInt();
		
		for(int i=n-1;i>=1;i--)
		{
			if(n%i==0)
			{
			System.out.println(" number divisors: "+i);
			}
			
		}
		
		System.out.println();
	}
	
	public static void main(String[] args) {

		PerfectNumber p=new PerfectNumber();
		p.calculate();
	}

}
