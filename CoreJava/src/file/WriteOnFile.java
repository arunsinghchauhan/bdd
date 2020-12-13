package file;
import java.io.*;

public class WriteOnFile{

	public static void main(String[] args)throws IOException {
		File f4= new File("D://Arun Doc","Javaxx.txt");
		//FileWriter fw= new FileWriter(f4,true);//if it is not there, it is created.
//		fw.write(100);
        //fw.write("Arun \r\nSingh\r\nChauhan\r\n");
		//fw.write("\r\n");
		//System.out.println("\r\n");
		//char[] ch={'a','b','c'};
		//fw.write(ch);
		FileReader fr=new FileReader(f4);
		int r=fr.read();
		while(r!=-1)
		{
			System.out.print((char)r);
			r=fr.read();
		}
		//fw.flush();
		fr.close();
	}

}
