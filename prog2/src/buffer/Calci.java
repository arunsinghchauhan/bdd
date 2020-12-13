package buffer;
import java.io.*;
public class Calci {
	
	
	 public static void main(String args[]) throws NumberFormatException, IOException
	 {
	   int x,y;
	  BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
	  System.out.println("ENTER TWO NUMBER");
	  x=Integer.parseInt(br.readLine());
	  y=Integer.parseInt(br.readLine());
	  System.out.println("1.ADD");
	  System.out.println("2.SUB"); 
	  System.out.println("3.MUL");         
	  System.out.println("4.DIV");
	  System.out.println("ENTER YOUR CHOICE");          
	  int a = Integer.parseInt(br.readLine());
	  switch(a)
	  {
	   case 1: System.out.println("FOR CASE 1,THE RESULT IS->"+(x+y));
	            break;
	   case 2: System.out.println("FOR CASE 2,THE RESULT IS->"+(x-y)); 
	            break;    
	   case 3: System.out.println("FOR CASE 3,THE RESULT IS->"+(x*y));
	            break; 
	   case 4: System.out.println("FOR CASE 4,THE RESULT IS->"+(x/y));
	            break;
	   default: System.out.println("WRONG CASE ENTERED");
	   }
	  }
	} 

