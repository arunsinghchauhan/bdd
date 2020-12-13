package com.basicconcepts;

import java.util.InputMismatchException;
import java.util.Scanner;

public class TryCatchEx {
int x,y;
//int array[]=new int[3];
int array[]={1,2,3,4,5};
	public void taketrycatch()
	
	{
		System.out.println("Enter any number for dividend:");
		try{
		Scanner read= new Scanner(System.in);
		x=read.nextInt();
		
		System.out.println("Enter any number for divisor:");
		y=read.nextInt();
		
		
		int quotient=x/y;
		
		System.out.println("The quotient is: "+quotient);
		System.out.println("The array at position"+array[6]);
		}
		
		
		catch(InputMismatchException i)
		{
			System.out.println("Please enter integer value in order to divide");
		}
		catch(ArithmeticException a)
		{
			System.out.println("you are trying to divide by 0");
		}
		catch(ArrayIndexOutOfBoundsException ar)
		{
			System.out.println("you are trying to find array element which is does not exist");
		}
		
	}
	
	
	
	public static void main(String[] args) {
		TryCatchEx tc= new TryCatchEx();
		tc.taketrycatch();
	}

}
