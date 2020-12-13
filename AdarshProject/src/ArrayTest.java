
public class ArrayTest {
	
	
	String[] fruitArray = {"Apple", "Banana", "Orange", "Grapes","7767","#@$","^^#$$"};

	public void original()
	{
		for(int i=0; i<fruitArray.length;i++)
		{
		System.out.println("Your Original array is:" +fruitArray[i]);
		}
	}
	
	public void customize()
	{
		for(int i=0; i<fruitArray.length;i++)
		{
			//if(fruitArray[i]=="@"||"#"||"^"||"$")
		System.out.println("Your Customize array is:");
		}
	}
	
	

	public static void main(String[] args) {
    
		ArrayTest t= new ArrayTest();
		t.original();
		
	}

}
