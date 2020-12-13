package com.basicconcepts;

public class Multithread {

	public static void main(String[] args) {

		A1 a= new A1();
		a.start();
		
		B1 b= new B1();
		b.start();
	}

}

class A1 extends Thread 
{
	
	void show() throws InterruptedException
	{
		for(int i=1;i<=5;i++)
	{
		System.out.println("Hi");
		Thread.sleep(2000);
	}
		
	}
	
	public void run()
	{
		try {
			show();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

class B1 extends Thread
{
	void show() throws InterruptedException
	{
		for(int i=1;i<=5;i++)
		{
			System.out.println("Hello");
			Thread.sleep(2000);
		}
	}
	public void run()
	{
		try {
			show();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}