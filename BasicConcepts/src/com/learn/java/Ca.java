package com.learn.java;

public class Ca extends Pa{

	
	public void m1()
	{
		System.out.println("m1 is calling of child");
	}
	public static void main(String[] args) {

		Ca obj= new Ca();
		obj.m1();
		
		
		
	}

}
