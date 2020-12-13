class Food {

	static String type;
    boolean isFresh;
	
    String kuchhbhi() {
    	return "[Food = type "+type+" , isFresh = "+isFresh+"]";
    	
    }
   
}


public class Dog extends Food{
	
	public static void main(String[] args) {
	  //Creating an object of Food
		Food fod=new Food();
		type="South India";
		fod.isFresh=true;
		System.out.println(type);
		System.out.println(fod.isFresh);

		String result=fod.kuchhbhi();
		System.out.println("Hello boss your result is  = "+result);
		
	}

}

