import java.util.Scanner;

public class ValleyProblem {

	public static void main(String[] args) {
    Scanner sc= new Scanner(System.in);
    System.out.println("Enter the Steps: ");
    int n=sc.nextInt();
    int counter=0;
    int valley=0;
    String str;
    
    System.out.println("Enter the up and downs: ");
    str=sc.nextLine();
    
    Character c1= new Character('U');
    Character c2= new Character('D');
    
    for(int i=0; i<str.length();i++)
    {
    	char c= str.charAt(i);
    	if(c1.equals(c))
    	{
    		counter++;
    	}else if(c2.equals(c))
    	{
    		counter--;
    	}
    	
    	if(counter==-1)
    	{
    		valley++;
    	}
    	
    	
    }
    System.out.println(valley);
    
    
	}

}