package com.basicconcepts;

import java.util.Scanner;

public class TwoDarray {
String arr[][];
int m,n;
Scanner read= new Scanner(System.in);
public void initialize()
{
	
//		{
//			{"rahul","arun"},
//			{"mayank","5"}
//				
//		};
	
	System.out.println("Enter the row and column of the 2D array:");
	m=read.nextInt();
	n=read.nextInt();
	arr= new String[m][n];
	System.out.println("The size of the array is: "+m*n);
	System.out.println("Enter values:");
	for(int i=0;i<arr.length;i++)
    { 
		for(int j=0;j<n;j++)
		{
			arr[i][j]=read.next();
		}	
    }
	
}

void show()
{
	//arr= new String[2][2];
	for(int i=0;i<arr.length;i++)
    { 
		for(int j=0;j<n;j++)
		{
			System.out.println(arr[i][j]);
		}
	
    }
	
	System.out.println("");
}


public static void main(String[] args) {
	TwoDarray td= new TwoDarray();
	td.initialize();
	System.out.println("==============");
	td.show();
}

}
	


