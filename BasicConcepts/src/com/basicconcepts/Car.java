package com.basicconcepts;

public class Car {

	int price;
	String name;
	String color;
	

Car()//default
{
System.out.println("Default");	
}
Car(int price,String name,String color)//parameterized
{
System.out.println("The information of  car is: "+price+" "+name+" "+color );

}

void function1(int price,String name, String color)
{
	System.out.println("the other info is :"+price);
}

public static void main(String[] args) {
	Car c= new Car(12,"arun","green");
	
}

}