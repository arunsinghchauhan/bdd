public class Bike {
    int price;
	String name;
	String vendor;
	String color;

	Bike() {
		// default contructor
	}

	/*Bike(int price, String name, String vendor, String color) {
		this.color = color;
		this.name = name;
		this.price = price;
		this.vendor = vendor;
	}*/

	void start() {
		System.out.println("start ");
	}

	public Bike(int price, String name, String vendor, String color) {
		super();
		this.price = price;
		this.name = name;
		this.vendor = vendor;
		this.color = color;
	}

	void walk() {
		System.out.println("walk");
	}

	void stop() {
		System.out.println("stop");
	}

	void print() {
		System.out.println("price is =" + price);
		System.out.println("name is =" + name);
		System.out.println("vendor is =" + vendor);
		System.out.println("color is =" + color);
	}

}
