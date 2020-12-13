package com.learn.java;

import java.util.Scanner;

public class FindMinArray {

	Scanner read= new Scanner(System.in);
	int arr[];
	int asize;
	int max=0,i;
	
	public void arraysize()
	{
		System.out.println("Enter the size of array: ");
		asize=read.nextInt();
		
	}
	
	public void EnterArrayNumber()
	{
		arr=new int[asize];
		System.out.println("Enter array numbers one by one");
		for(i=0;i<asize;i++)
		{
			arr[i]=read.nextInt();
			if(arr[i]>max)
			{
				max=arr[i];
			}
		}
		
		
		
		System.out.println("The maximum in the entered inputs are: "+max);
		
		
	}
	
	public static void main(String[] args) {
		
		FindMinArray ma= new FindMinArray();
		ma.arraysize();
		ma.EnterArrayNumber();

	}

}
