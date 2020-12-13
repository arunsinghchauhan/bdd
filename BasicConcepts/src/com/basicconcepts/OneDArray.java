package com.basicconcepts;

import java.util.Scanner;

public class OneDArray {
	Scanner read= new Scanner(System.in);
	String array[]=new String[3];
	int l;
	int i;
	
	public void arrlength()
	{
		System.out.println("Enter the length of the array:"); 
		//Scanner read= new Scanner(System.in);
		 l=read.nextInt();
		 array= new String[l];
	}

	void enterValues()
	{
		

		System.out.println("Enter the values of array:");
		for(i=0;i<=array.length-1;i++)
		{
			array[i]=read.next();
			
		}
		for(i=0;i<array.length;i++)
		{
			System.out.println(array[i]);
		
		}
	
	}
	
	
	public static void main(String[] args) {

		OneDArray one= new OneDArray();
		one.arrlength();
		one.enterValues();
		
	}

}
