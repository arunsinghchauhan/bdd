package buffer;
import java.io.*;
public class Reader1 {
	public static void main (String[] args) throws java.lang.Exception
	{
	    BufferedReader inp = new BufferedReader (new InputStreamReader(System.in));
	    int T= Integer.parseInt(inp.readLine());

	    for(int i=0;i<T;i++) {
	        String s= inp.readLine();
	        int[] m= new int[2];
	        m[0]=inp.read();
	        m[1]=inp.read();

	        // Checking whether I am taking the inputs correctly
	        System.out.println(s);
	        System.out.println(m[0]);
	        System.out.println(m[1]);
	    }
	}
}
