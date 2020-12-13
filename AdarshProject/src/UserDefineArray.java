import java.util.Scanner;

public class UserDefineArray {

	String s[]= new String[5];
	Scanner read= new Scanner(System.in);
	String str;
	int i;
	String temp;		
	public void input()
	{
		System.out.println("Enter the element of array: ");
		for(i=0;i<s.length;i++)
		{
	    s[i]= read.next();
        
		}
		for(i=0;i<s.length;i++)
		{
			System.out.println("You have entered: "+s[i]);
		}
	}
	

	public void removeSpecialChar()
	{
		str = str.replaceAll( "[^a-zA-Z0-9 ]" , "" ); 
		System.out.println(str);
	}
	
	
	
	public static void main(String[] args) {

		UserDefineArray obj= new UserDefineArray();
		obj.input();
		//obj.removeSpecialChar();
		
	}

}
