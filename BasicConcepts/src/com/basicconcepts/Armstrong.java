package com.basicconcepts;
import java.util.Scanner;

public class Armstrong {
int n; int c=0;
int temp;
int arm;
	public void takingUserInput()
	{
		System.out.println("Enter any number");
		Scanner read= new Scanner(System.in);
		n=read.nextInt();
		temp=n;
		
	}
	
	void calculating()
	{
		while(n>0)
		{
		arm= n%10;
		n=n/10;
		c= c+(arm*arm*arm);
		
		}
		if(temp==c)
		{
		System.out.println("Armstrong");
		}
		else
			System.out.println("Not Armstrong");
	}
	
	public static void main(String[] args) {
		Armstrong ar= new Armstrong();
		ar.takingUserInput();
		ar.calculating();
		
	}

}
