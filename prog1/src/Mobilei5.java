
public class Mobilei5 {
	
String color;
private String model;
private int price;

public Mobilei5(){
	
}

public Mobilei5(String color, String model, int price) {
	super();
	this.color = color;
	this.model = model;
	this.price = price;
}

 void bluethooth(){
	System.out.println("bluethooth is on");
}
void sms(){
	System.out.println("sent message");
}
void calling(){
	System.out.println("you can call");
}

@Override
public String toString() {
	return "Mobilei5 [color=" + color + ", model=" + model + ", price=" + price
			+ "]";
}




}
