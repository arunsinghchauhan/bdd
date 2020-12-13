package com.basicconcepts;
import java.util.Scanner;

public class Reversi {

	//Reverse  of String
//	String original;
//	int i;
//	String reverse="";
//	void reverse()
//	{
//		System.out.println("Enter a string");
//		Scanner read=new Scanner(System.in);
//		original =read.next();
//		for(i=original.length()-1;i>=0;i--)
//		{
//			reverse=reverse+original.charAt(i);
//			
//		}
//		System.out.println("The reverse string is: "+reverse);
//	}
	//Reverse of number
	
	void reverse()
	{
		System.out.println("Enter a number");
		Scanner read= new Scanner(System.in);
		int original=read.nextInt();
		read.close();
		int reverse=0;
		for(int i=original-1;i>=0;i--)
		{
			 System.out.println(i);
		}
	
	}
	
	public static void main(String[] args) {
		Reversi re=new Reversi();
		re.reverse();
	}

}
