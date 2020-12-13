
public class Modifier {
	void dog()
	{
		System.out.println("Dog is a pet animal");
	}
    void cat(){
    	System.out.println("Cat is a pet animal");
    }
	
class Inner_Demo{
	void tiger(){
		System.out.println("Tiger is in inner class");
	}
}
void display_Inner(){
    Inner_Demo inner = new Inner_Demo();
    inner.tiger();
 }
		 
		 
	 public static void main(String[] args) {
		
		Modifier m=new Modifier();
		
		 m.cat();
		 m.dog();
		 m.display_Inner();
		 }
  
}
