package com.basicconcepts;

public class ThisKeyword {

	 int number1;
     int number2;
	public ThisKeyword(int number1,int number2)
	{
		this.number1=number1;
		this.number2=number2;
	}
	
	public static void main(String[] args) {

		ThisKeyword t= new ThisKeyword(2,3);
		
		System.out.println(t.number1);
		System.out.println(t.number2);
	}

}
