package buffer;

import java.io.DataInputStream;
import java.io.IOException;


public class Reader2 {
public static void main(String[] args) throws IOException {
	float b;
	DataInputStream n=new DataInputStream(System.in);
	System.out.println("ENTER YOUR NAME:");
	String name="";
	name=n.readLine();
	System.out.println("HELLO "+name);

	
}
}
