
 class Laptop {

	int amount;
	String version;
	boolean isgood;
	
	void start(){
		System.out.println("THIS MOBILE VERSION READY TO START MARKETING");
	}
	
	public Laptop(int amount, String version, boolean isgood) {
		//super();
		this.amount = amount;
		this.version = version;
		this.isgood = isgood;
	}
	void printlaptop() {
		System.out.println("amount = " + amount);
		System.out.println("version = " + version);
		System.out.println("isgood = " + isgood);
	}
 }
 public class Mobile {
		
		public static void main(String args[]) {
			
		  Laptop L=new Laptop(1000, "latest", true);
		  L.printlaptop();
	      L.start();
	      
	      
	      
      }
}