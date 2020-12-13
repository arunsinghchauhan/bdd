package com.basicconcepts;

public class KeywordStatic {

	int eid;
	int salary;
	static String ceo;
	
	public void display()
	{
		System.out.println(eid+" : "+salary+" : "+ceo);
	}
	
	public static void main(String[] args) {

		KeywordStatic arun= new KeywordStatic();
		arun.eid=5;
		arun.salary=2000;
		KeywordStatic.ceo="Adarsh";
		
		KeywordStatic anand= new KeywordStatic();
		anand.eid=8;
		anand.salary=4000;
		KeywordStatic.ceo="Adarsh";
		
		KeywordStatic.ceo="Mukesh";
		
		arun.display();
		anand.display();
		
		
		
	}

}
