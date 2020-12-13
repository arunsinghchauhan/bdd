package com.basicconcepts;

public class This {
 int a,b ;
 
	
//	This(int a, int b)
//	{
//		System.out.println("Your A: "+a+"Your B: "+b);
//	}
	
void check(int a,int b){
this.a=a;//this append to know which is class/instance variable.
this.b=b;
	}
	
	void display()
	{
		System.out.println("A=:"+a +"and B=:"+b);
	}
	public static void main(String[] args) {
    
		This t= new This();
		t.check(2, 3);
		t.display();
 
 
		
	}

}
