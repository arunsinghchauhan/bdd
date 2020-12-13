
public class Constructor {

	/*int id;
	String name;*/
	
	int x;int y;
	
	void display(){
		System.out.println(x+" "+y);
	}
	
	Constructor(int x1,int y1)
	{
		x=x1;
		y=y1;
		int result=x1+y1;
		System.out.println("The Result is:"+result);
		System.out.println("I,am a parameterized constructor");
	}
	
	 Constructor(Constructor s) 
	 {
		// Copy constructor
		 int x=s.x;
		 int y=s.y;
	 }
	void arun()
	{
		System.out.println("I,am not a constructor");
	}
	
	public static void main(String[] args) {
		Constructor c= new Constructor(10,20);
		c.display();
		c.arun();
		
	}

}
