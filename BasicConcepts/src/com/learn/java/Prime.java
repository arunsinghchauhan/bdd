package com.learn.java;

import java.util.Scanner;

public class Prime {
int n;
   public void PrimeOrNot()
    {
        System.out.println("Enter a number to verify it is prime or not: ");
		Scanner read= new Scanner(System.in);
		n=read.nextInt();
		
		int i;
	        for (i=2; i<n; i++)
	        {
	            if (n%i==0)
	            { 
	                break;
	            }
	        }
	        if (i==n)
	        { 
	           // return "PRIME";
	            System.out.println("Prime");
	        }
	        else
	        {
	           // return "NOT"+"PRIME";
	        	System.out.println("Not Prime");
	        }
	}
	
	public static void main(String[] args) {
    
		Prime p= new Prime();
		p.PrimeOrNot();
	}

}
