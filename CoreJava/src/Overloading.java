
public class Overloading {

	void arun(int x ,int y)
	{
		System.out.println("Arun2 function called");
	}
	
	void arun(int x)
	{
		System.out.println("Arun1 functin called");
	}
	
	public static void main(String[] args) {
		
	Overloading o= new Overloading();
	o.arun(8);
	o.arun(5, 8);
	
	
	}

}
