package hiet;

public class Employee extends Person {

	private int empid;
	private String cname;
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Employee(String firstName, String lastName, String color, int age,
			int empid, String cname) {
		super(firstName, lastName, color, age);
		this.empid = empid;
		this.cname = cname;
	}

	
	public void working(){
		System.out.println("Thanks! Employee is working here !!!!");
	}
	@Override
	public String toString() {
		return "Employee [empid=" + empid + ", cname=" + cname
				+ ", toString()=" + super.toString() + "]";
	}
	

}
