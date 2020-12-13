package com.basicconcepts;

import java.util.Scanner;

public class PF {

	int n;
	public void takenum()
	{
		Scanner read= new Scanner(System.in);
		System.out.println("Enter the number you want to find prime factors: ");
		n=read.nextInt();
	}
	
	public void primeFactorLogic()
	{
		System.out.println("The prime factors of "+n+" are :");
		while(n>1)
		{
			int i=2;
			if(n%i==0)
			{
				System.out.println(i+" ");
				n=n/i;
			}
			else
			{
				i++;
			}
		}
		
	}
	//System.out.print("The Prime Factors of "+n+" are : ");
	 
//	int i=2;
//	while(n>1)
//	  {
//	   if(n%i == 0)
//	    {
//	     System.out.print(i+" ");
//	     n=n/i;
//	    }
//	   else
//	    i++;
//	  }
//	}
//	}

	
	
	public static void main(String[] args) {
 
		PF p= new PF();
		p.takenum();
		p.primeFactorLogic();
	}

}
