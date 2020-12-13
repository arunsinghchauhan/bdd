package stringmanipulation;
import java.util.Scanner;
public class Stropr {
public static void main(String[] args) {
	Scanner scanner=new Scanner(System.in);
	System.out.println("ENTER THE NAME:");
	String name=scanner.nextLine();
	boolean b=name.startsWith("an");
	if(b){
		System.out.println("YOUR NAME IS START WITH AN");
	}else{
		System.out.println("YOUR NAME IS DOES NOT START WITH AN");
	}
	
	
}
}
