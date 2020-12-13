package com.basicconcepts;

public class UseOfClass {
 int price;
 String name;
	
	void train()
	{
		System.out.println("Train can run");
	}
	UseOfClass(int price,String name)
	{
		this.name=name;
		this.price=price;
		System.out.println("Price="+price+"and Name="+name);
		
	}
	public static void main(String args[]){
		UseOfClass u= new UseOfClass(200 ,"guru");
		Test t= new Test();
		t.ship();
	}
	
}
 class Test
{
	void ship()
	{
		System.out.println("Ship can swim");
	}
	
}