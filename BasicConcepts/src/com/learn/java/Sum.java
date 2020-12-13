package com.learn.java;

public class Sum {

	Sum()
	{
		System.out.println("No parameter:");
	}
	Sum(int a)
	{
		this();//calling no parameter method
		System.out.println("One Parameter Constructor:");
	}
	 
	Sum(int a, int b)
	 {
		 this(10);//calling no parameter method
		 System.out.println("Two Parameter Constructor:");
	 }
	public static void main(String[] args) {

		Sum s = new Sum(10,20);
		
	}

}
