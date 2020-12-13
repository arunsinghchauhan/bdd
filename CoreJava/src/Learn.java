

public class Learn  {
	 int x=10;
     char c;
	 String s="Arun Singh Chauhan";
	static String r="Rahul Choudhary";
	void teacher() {
		System.out.println("I,am a teacher");
	}

	static int student() {
		System.out.println("I,am a student");
		return 0;
	}
	public  class Java{
		public  void educator() {
			System.out.println("I,am an Educator");
		}
	}
	public static void main(String args[]){
		Learn l=new Learn();
		System.out.println("Answer is:" +l.x);
		
		System.out.println("Answer is:" +l.s);
		System.out.println("Answer is:"+r);
		student();
		Learn.Java j=l.new Java();//non static: inner class
		j.educator();
		
		//for static: inner class
//		Learn.Java j=new Learn.Java();
//		j.educator();
		
		
		
		l.student();
		l.teacher();
	}
	
}
	

