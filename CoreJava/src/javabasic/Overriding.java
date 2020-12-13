package javabasic;

public class Overriding {

	void hello(){
		System.out.println("hello arun whats up!!!");
	}
	void display(){
		System.out.println("I,am displayed");
	}
	void show(int a){
		System.out.println("already showed");
	}
}

class b extends Overriding
{
	void hello(){
		System.out.println("hello.......");
	}
	void show(){
		System.out.println("Showing....");
	}
	public static void main (String args[]){
		b obj=new b();
		obj.display();
		obj.hello();
		obj.show();
	}
	
}



