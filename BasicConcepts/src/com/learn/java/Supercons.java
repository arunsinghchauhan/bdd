package com.learn.java;

class Employee
{
Employee()
{
System.out.println("Employee class Constructor");
}
}
class HR extends Employee
{
HR()
{
//super(); //will invoke or call parent class constructor  
//System.out.println("HR class Constructor");
}
}
class Supercons
{
public static void main(String[] args)
{
HR obj=new HR();
}
}