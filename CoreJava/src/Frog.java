

 class Frog {
    //data member,instance variable ,attribute
	 String name;
	 String color;
	 int age;
	
	//default cons
	public  Frog(){
		System.out.println("default one");
	}
	
	//parameterized cons
	/*public Frog(String name,String color,int age){
		this.name=name;
		this.color=color;
		this.age=age;
	}
	*/
	public void setData(String name,String color,int age){
		this.name=name;
		this.color=color;
		this.age=age;
	}

	
	

       @Override
	public String toString() {
		return "Frog [name=" + name + ", color=" + color + ", age=" + age + "]";
	}

	/*void print(){
		System.out.println("name = "+name);
		System.out.println("color = "+color);
		System.out.println("age = "+age);
		
	}*/


}

