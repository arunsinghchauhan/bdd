package buffer;
import java.io.*;
public class Reader {
public static void main(String[] args)throws IOException {
	

BufferedReader br=new BufferedReader(new InputStreamReader(System.in) );
String name="";
System.out.println("PLEASE ENTER YOUR NAME:");
name=br.readLine();
System.out.println("HELLO " +name);
int a=Integer.parseInt(br.readLine());
System.out.println(a);
}
}
