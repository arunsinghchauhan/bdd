package com.basicconcepts;

 interface A {

	 void run();
	
}

class B implements A
{
	public void run()
	{
		System.out.println("ASC is running");
	}
	public static void main(String args[])
	{
		A obj=new B();
		obj.run();
	}
}