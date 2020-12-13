import java.util.Scanner;


public class Simple {

	int  arun(int x,int y){
		
		System.out.println("Enter two numbers: ");
		Scanner s = new Scanner(System.in);
		x= s.nextInt();
		y= s.nextInt();
		int sum = x+y;
		return sum;
		
		}
	
	void chauhan(){
		System.out.println("Chauhan function is called...");
	}
	
	public static void main(String[] args) {
		
		Simple s = new Simple();
		int sum1=s.arun(0,0);
		
		System.out.println("Total:"+sum1);
		
		
		s.chauhan();

	}

}
