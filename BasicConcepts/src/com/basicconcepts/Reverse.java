package com.basicconcepts;

import java.util.Scanner;

public class Reverse {

	String str,reverse="";
	int length;
	void m2()
	{
		Scanner read= new Scanner(System.in);
		System.out.println("Enter the String");
		str=read.nextLine();
		length=str.length();
		
	}
	void applogic()
	{
	    for(int i=length-1;i>=0;i--)
	    {
	    	reverse=reverse+str.charAt(i);
	    }
		System.out.println("The reverse of this number is: "+reverse);
	}
	public static void main(String[] args) {
		Reverse r= new Reverse();
		r.m2();
		r.applogic();
	}
}
