package com.learn.java;

import java.util.Scanner;

public class MinArray {

	 static int size;
	 static int a[]= new int[size];
	 Scanner read= new Scanner(System.in);
	public void inputArr()
	{
		
		System.out.println("Enter the size of the array");
		size=read.nextInt();
		a= new int[size];
	}
	public void enterNumbers()
	{
		
		System.out.println("Enter the numbers in array one by one: ");
		for(int j=0;j<size; j++)
		{
			a[j]=read.nextInt();
		}
		
		
	}
			
	public void methodArr(int arr[])
	{
		int min=arr[0];
		for(int i=1;i<arr.length;i++)
		{
			if(min>arr[i])
				min=arr[i];
	
		}
		System.out.println("The minimun value in array is: "+min);
	}
	public static void main(String[] args) {
		MinArray m= new MinArray();
		m.inputArr();
		m.enterNumbers();
		m.methodArr(a);
		
	}
	
}
