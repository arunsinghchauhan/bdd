package com.basicconcepts;

import java.util.Scanner;

public class Nth {
Scanner read= new Scanner(System.in);
int n;
int total=0;

	public void takeNumber(){
		System.out.println("Enter the number limit");
		n=read.nextInt();
	}
	
	void plus()
	{
		
		int sum=n*(n+1)*(2*n+1)/6;
		System.out.println("The total is: "+sum);
	}
	public static void main(String[] args) {

		Nth obj= new Nth();
		obj.takeNumber();
		obj.plus();
	}

}
