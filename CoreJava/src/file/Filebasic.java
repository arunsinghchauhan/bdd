package file;

import java.io.File;
import java.io.IOException;

public class Filebasic {

	public static void main(String[] args) throws IOException {

		//File f= new File("dir_arun");//only object of file class created.
		//f.createNewFile();
		//f.mkdir();
//		System.out.println(f.exists());
//		System.out.println(f.exists());
		//File f1=new File(f,"dirunderdir");// f="dir_arun"
		//f1.createNewFile();
		//f1.mkdir();
//		File f2= new File("D://Arun Doc");
//		//f2.mkdir();
//		int count=0;
//		//f2.createNewFile();
//		String [] s=f2.list();
//       for(String s1:s)
//       {
//    	  File f3=new File(f2,s1);// f2 k under s1 name ka file object creation i.e f3.
//    	   if(f3.isFile())
//    	   {
//    	   System.out.println(s1);
//    	   count++;
//    	   }
//    	 
//    	   
//       }
//		
//		System.out.println(count);
		File f4= new File("D://Arun Doc","Javaxx.txt");
		f4.createNewFile();
		//f4.delete();
	}

}
