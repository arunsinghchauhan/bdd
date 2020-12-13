package com.basicconcepts;
import java.util.Scanner;
public class FibboSeries {

	int firstNumber=0;
	int secondNumber=1;
	int n;
	public void calci()
	{
	System.out.println("Enter the last number till you want the fibbonacci series: ");
	Scanner read= new Scanner(System.in);
	n=read.nextInt();
	
	System.out.println(firstNumber );
	System.out.println(secondNumber );
	}
	public void proceed()
	{
	while(n>0)
	{
		int thirdNumber= firstNumber+secondNumber;
		firstNumber=secondNumber;
		secondNumber=thirdNumber;
		n--;
		System.out.println(thirdNumber);
	}
	
	}
	
	public static void main(String[] args) {
		FibboSeries fs= new FibboSeries();
		fs.calci();
		fs.proceed();
	}

}
