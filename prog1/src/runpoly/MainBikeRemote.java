package runpoly;

public class MainBikeRemote {

	public static void main(String[] args) {
		BikeRemote remote=new BikeRemote();
		remote.start();
		remote.stop();
		System.out.println("####hondabike####");
		 BikeRemote ref=new HondaBike();
		BikeRemote ref1= new ApacheBike();
		//remote=honda;
		ref.start();
		ref.stop();
		System.out.println("####apache####");
		//remote=apache;
		ref1.start();
		ref1.stop();
		

	}

}
