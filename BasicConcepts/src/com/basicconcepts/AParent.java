package com.basicconcepts;

public class AParent {
	
	 AParent()
	{
		System.out.println("default Const of AParent");
	}
	 AParent(int i)
		{
			 System.out.println("Para Const of AParent");
			
		}
	 public static void main(String[] args) {
		AParent obj1= new AParent();
		BChild obj2=new BChild(2);
	}

}
class BChild extends AParent
{
	 BChild()
	{
		 System.out.println("default Const of BChild");
		
	}
	 BChild(int i)
		{    super(i);
			 System.out.println("Para Const of BChild");
			
		}
}