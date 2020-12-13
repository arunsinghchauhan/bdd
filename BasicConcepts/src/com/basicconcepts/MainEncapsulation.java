package com.basicconcepts;

public class MainEncapsulation {

	public static void main(String args[])
	{
		Encapsulation e= new Encapsulation();
		//e.i=5;
	
		//System.out.println(e.i);
		
		//e.run();
		
		e.setI(3);
		System.out.println(e.getI());
	}
	
}
