package com.basicconcepts;

public class NestedClass {

	void school()
	{
		System.out.println("KV GZB");
	}
	
public static class Inner

 {
	public static void college()
	{
		System.out.println("Sunder Deep GZB");
	}
}

 void  display_innerclass()
{
	
	Inner i= new Inner();
	i.college();
}

	
	
	
	public static void main(String[] args) {
		NestedClass ns= new NestedClass();
		ns.display_innerclass();
		
	}

}
