package com.learn.java;

import java.util.Scanner;

public class PrmeFactor {

	public static void main(String[] args) {
       int i=2;
		System.out.println("Enter the number to find the prime factor: ");
		Scanner s= new Scanner(System.in);
		int n=s.nextInt();
		
		while(i<=n)
		{
			if(n%i==0)
			{
			System.out.println("The prime factor of "+n+"is: "+i);
			n=n/i;
			}
			else
				i++;
		}
		
	}

}
