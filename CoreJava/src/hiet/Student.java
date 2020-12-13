package hiet;

public class Student extends Person {
	private int uptuRoll;
	private String collegeName;

	public Student() {

	}

	public Student(String firstName, String lastName, String color, int age,
			int uptuRoll, String collegeName) {
		super(firstName, lastName, color, age);
		this.uptuRoll = uptuRoll;
		this.collegeName = collegeName;
	}
	
	public void study(){
		System.out.println("student is studying in the college = "+collegeName);
	}

	@Override
	public String toString() {
		return "Student [uptuRoll=" + uptuRoll + ", collegeName=" + collegeName
				+ ", toString()=" + super.toString() + "]";
	}
	
}
