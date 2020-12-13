package com.basicconcepts;

public class ConstructorEx {

	ConstructorEx()
	{
		System.out.println("Arun");
	}
	
	ConstructorEx(String x,int y){
		System.out.println("parameterized constructor");
		System.out.println(x+"and"+y);
	}
	public static void main(String[] args) {

     ConstructorEx obj= new ConstructorEx("Arun",12);
     
     
			
		
		//System.out.println();
		
	}

}
