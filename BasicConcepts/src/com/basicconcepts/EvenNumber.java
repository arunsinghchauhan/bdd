package com.basicconcepts;
import java.util.Scanner;

public class EvenNumber {

	void calculate()
	{
		for(int i=1;i<=10;i++)
		{
		System.out.println("Enter any number");
		Scanner read= new Scanner(System.in);
		int n=read.nextInt();
		
		if(n%2==0)
			System.out.println("Even");
		else
			System.out.println("odd");
		
		}
		
		
	}
	public static void main(String[] args) {

		EvenNumber en= new EvenNumber();
		en.calculate();
		
	}

}
