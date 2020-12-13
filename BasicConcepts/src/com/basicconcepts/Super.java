package com.basicconcepts;

public class Super {

	int i=5;
	
	public void abc()
	{
		System.out.println("Super abc");
	}
	
	public static void main(String[] args) {
     C obj = new C();
   //obj.show();
     obj.abc();
		
	}

}
class C extends Super
{ 
//	int i=4;
//	public void show()
//	{
//		System.out.println(new Super().i);//Or we can use the super keyword
//		System.out.println(super.i);
//	}
	
	public void abc()
	{
		//super.abc();
		System.out.println("C abc");
	}
	
}