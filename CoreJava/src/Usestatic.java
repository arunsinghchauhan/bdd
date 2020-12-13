
public class Usestatic {

	int rollno;
	String  stuname;
	static String collegename ="Sunerdeep";
	
	
		
	 Usestatic(int rollno,String stuname){
     this.rollno= rollno;
     this.stuname=stuname;
    // this.collegename=collegename;
		
	}
		void display(){
			System.out.println(rollno + " " +stuname+ " " + collegename);
			
		}
		
	}

