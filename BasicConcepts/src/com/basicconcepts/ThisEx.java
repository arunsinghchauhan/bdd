package com.basicconcepts;

public class ThisEx {

	int a;
	int b;
	
	
	void data(int c, int d)
	{
		a=c;
		b=d;
		
		System.out.println("c="+c+" d="+d);
	}
//	void methsetdata(int a,int b)
//	{
//		a=this.a+1;
//		b=this.b+1;
//		this.a=a;
//		this.b=b;
//	}
//	void methshowdata()
//	{
//		System.out.println(a);
//		System.out.println(b);
//	}
	
	public static void main(String[] args) {
		ThisEx te= new ThisEx();
		ThisEx te1= new ThisEx();
//		te.methsetdata(2, 3);
//		te.methshowdata();
		te.data(10, 20);
		te1.data(30, 40);
		
		
	}

}
