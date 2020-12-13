package com.learn.java;

public abstract class Abs {
	
	public void meth1()
	{
		System.out.println("method 1 is calling");
	}
	
	public void meth2()
	{
		System.out.println("method 1 is calling");
	}

	public abstract void futureimp();
	
	public static void main(String[] args) {

		Abs obj1= new Abs();// we cannot create object of abstract classes
		
	}

}
