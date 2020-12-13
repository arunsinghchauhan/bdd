package com.basicconcepts;

import java.util.Scanner;

public class ConsecutiveOneEx {
int arr[]=new int[1];
int n;int temp=0;
	public void takeArrInput()
	{
		System.out.println("Enter the array values in 0 and 1 format: ");
		for(int i=0;i<=arr.length-1;i++)
		{
			Scanner read= new Scanner(System.in);
			n=read.nextInt();
			
		}
	}
	public void count1()
	{
		for(int i=0;i<=arr.length;i++)
		{
			if(n==1)
			{
				temp=temp+1;
			}
		}
		System.out.println(temp);
	}
	
	
	public static void main(String[] args) {
		ConsecutiveOneEx obj1= new ConsecutiveOneEx();
		obj1.takeArrInput();
		obj1.count1();

	}

}
