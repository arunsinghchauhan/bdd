 class Bike {
	int price;
	String name;
	String color;
	String vendor;
	
	Bike(){
		
	}

	 Bike(int price, String name, String color, String vendor) {
		//super();
		this.price = price;
		this.name = name;
		this.color = color;
		this.vendor = vendor;
	}

	void start() {
		System.out.println(" bike is started........");
	}

	void walk() {
		System.out.println(" bike is walking now........");
	}

	void fly() {
		System.out.println(" bike is flying now........");
	}

	void stop() {
		System.out.println(" bike is stoped now........");
	}

	void printbike() {
		System.out.println("price = " + price);
		System.out.println("vendor = " + vendor);
		System.out.println("name = " + name);
		System.out.println("color = " + color);
	}
	

}
