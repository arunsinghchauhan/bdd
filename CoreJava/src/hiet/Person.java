package hiet;

public class Person {
   private String firstName;
   private String lastName;
   private String color;
   private int age;
   
   public Person(){
	   
   }
  public Person(String firstName, String lastName, String color, int age) {
	super();
	this.firstName = firstName;
	this.lastName = lastName;
	this.color = color;
	this.age = age;
}
  
 public void speak(){
	 System.out.println("Person can speak!!!");
 }
 
 public void run(){
	 System.out.println("Person can run!!!");
 }
@Override
public String toString() {
	return "Person [firstName=" + firstName + ", lastName=" + lastName
			+ ", color=" + color + ", age=" + age + "]";
} 

	
}
