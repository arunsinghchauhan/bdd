package file;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.Scanner;

public class MyFileDemo {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		Scanner scanner=new Scanner(System.in);
		System.out.println("Enter the file name");
		String name=scanner.next();
		File file=new File(name);
		if(file.exists()){
			System.out.println("File exists = "+file.getName());
		}else{
			System.out.println("File does not exist = "+file.getName());
		}
		FileReader fileReader=null;
		try{
			fileReader=new FileReader(file);
			int ch;
			while((ch=fileReader.read())!=-1){
				System.out.print((char)ch);
				Thread.sleep(500);
			}
		}catch(Exception  exe){
			exe.printStackTrace();
		}finally{
				if(fileReader!=null){
					try {
						fileReader.close();
					} catch (IOException e) {
					}
				}
		}
	}

}
