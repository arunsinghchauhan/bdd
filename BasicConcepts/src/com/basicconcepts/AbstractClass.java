package com.basicconcepts;

abstract class Check {

	abstract void run();
	
}
	
public class AbstractClass
{
	void run()
	{
		System.out.println("Bike is running successfully");
	}
public static void main(String[] args) {

	AbstractClass ab= new AbstractClass();
	
	ab.run();
	
	}

}
