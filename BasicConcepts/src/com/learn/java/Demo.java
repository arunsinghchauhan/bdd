package com.learn.java;

public class Demo implements MyInterface,i{

	
	public void method1(){
		System.out.println("Implementation of method 1");
	}
	
	public void method2(){
		System.out.println("Implementation of method 2");
	}
	
	public void method3(){
		System.out.println("Implementation of method 3");
	}
	public static void main(String[] args) {

		//MyInterface obj= new Demo();
		Demo obj= new Demo();
		obj.method1();
	}

}
