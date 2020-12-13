package com.basicconcepts;

import java.util.Scanner;

public class Reci {

	Scanner read= new Scanner(System.in);
int n,r,s,temp;
	public void ti()
	{
		System.out.println("Enter the number");
		n=read.nextInt();
		temp=n;
	}
	void calcul()
	{
	while(n>0)
	{
		r=n%10;
		n=n/10;
		s=s*10+r;
	}
	System.out.println("The revrse of the number is: "+s);
	if(temp==s)
	{
		System.out.println("Palindrome");
	}
	else{
		System.out.println("Not Palindrome");
	}
	}
	
	public static void main(String[] args) {
		Reci r= new Reci();
		r.ti();
		r.calcul();
		
	}

}
