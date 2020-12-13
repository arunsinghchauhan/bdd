package file;

import java.io.File;
import java.util.Scanner;

public class FileListDemo {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Scanner scanner=new Scanner(System.in);
		System.out.println("Enter the folder name");
		String name=scanner.next();
		File file=new File(name);
		if(file.exists()){
			System.out.println("File exists = "+file.getName());
		}else{
			System.out.println("File does not exist = "+file.getName());
		    return;
		}
		if(file.isDirectory()){
			System.out.println("Yes folder");
		}else{
			System.out.println("Not folder");
		}
		String files[]=file.list();
		for(String fname : files){
			System.out.println("File Name = "+fname);
		}

	}

}
