package com.basicconcepts;

public class Poly {

	void function1()
	{
		System.out.println("Task of function 1 in first class");
	}

	public static void main(String[] args) {
		/*Poly p= new Poly();
		p.function1();*/
		
		/*Poly2 p2 = new Poly2();
		p2.function1();*/
		
		Poly p= new Poly2();
		p.function1();
		
	}
}

class Poly2 extends Poly
{
	void function1()
	{
		System.out.println("Task of function 1 in second class");
	}
}