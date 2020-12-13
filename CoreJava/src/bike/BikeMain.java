package bike;

public class BikeMain {
	public static void main(String[] args) {
		BikeRemote bikeRemote=new BikeRemote();
		bikeRemote.start();
		bikeRemote.stop();
		//Creating two instance of bike
		ApacheBike apacheBike=new ApacheBike();
		HondaBike hondaBike=new HondaBike();
		
		System.out.println("++++++++++Apache Bike++++++++++");
		//attaching apache bike with remote object
		bikeRemote=apacheBike;//assigning reference of subclass into super class reference
		bikeRemote.start();  //runtime polymorphism
		bikeRemote.stop();  

		System.out.println("++++++++++Honda Bike+++++++++");
		//attaching honda bike with remote object
		bikeRemote=hondaBike;//assigning reference of subclass into super class reference
		bikeRemote.start();//runtime polymorphism
		bikeRemote.stop();
	}
}
