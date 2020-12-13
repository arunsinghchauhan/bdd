
public class Robot {
	int price;
	String name;
	String color;
	String vendor;
	void start() {
		 System.out.println(" robot is stated........");
	}
	void walk() {
		 System.out.println(" robot is walking now........");
	}
	void fly() {
		 System.out.println(" robot is flying now........");
	}
	void stop() {
		 System.out.println(" robot is stoped now........");
	}
	void printRobot(){
		System.out.println("price = "+price);
		System.out.println("vendor = "+vendor);
		System.out.println("name = "+name);
		System.out.println("color = "+color);
	}

}
