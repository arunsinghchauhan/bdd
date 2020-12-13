package hiet;

public class StudentMain {
	public static void main(String[] args) {
        Person person=new Person("Ravi","Singh","white",10);
        person.speak();
        person.run();
        System.out.println(person);
         System.out.println("_____#########_____");
         
         Student student=new Student("Amit","Kumar","red", 30, 40172727,"hiet");
         student.speak();
         student.run();
         student.study();
         System.out.println(student);
         System.out.println("_________Employee________");
         Employee employee=new Employee("Dave", "Kooo","black", 34, 848484, "TCS");
         employee.speak();
         employee.run();
         employee.working();
         System.out.println(employee);
	
	}

}
