package com.learn.java;

public class Inter {

	public void meth(){
		System.out.println("method of Inter class");
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}

class Inter1{
	public void met()
	{
		System.out.println("method of Inter 1 class");
	}
}

class high extends Inter,Inter1{
	
}
