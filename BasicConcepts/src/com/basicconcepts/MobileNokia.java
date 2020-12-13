package com.basicconcepts;

public class MobileNokia {

	void feature()
	{
		System.out.println("nice but old feature");
	}
	public static void main(String[] args) {

		//MobileApple ap= new MobileApple();
		//ap.feature();
		
		//MobileNokia no= new MobileNokia();
		//no.feature();
		//no=ap;
		//no.feature();
		MobileNokia obj= new MobileApple();
		obj.feature();
		
	}

}
class MobileApple extends MobileNokia
{
	void feature()
	{
		System.out.println("nice and latest feature");
	}
	
}