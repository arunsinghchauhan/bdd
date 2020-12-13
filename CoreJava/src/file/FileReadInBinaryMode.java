package file;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.util.Scanner;

public class FileReadInBinaryMode {

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
		FileInputStream fileInputStream=null;
		try{
			fileInputStream=new FileInputStream(file);
			int ch;
			while((ch=fileInputStream.read())!=-1){
				System.out.print((char)ch);
				Thread.sleep(100);
			}
		}catch(Exception  exe){
			exe.printStackTrace();
		}finally{
				if(fileInputStream!=null){
					try {
						fileInputStream.close();
					} catch (IOException e) {
					}
				}
		}
	}

}
