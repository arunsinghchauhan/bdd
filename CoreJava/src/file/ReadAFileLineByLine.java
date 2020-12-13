package file;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.Scanner;

public class ReadAFileLineByLine {

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
		BufferedReader bufferedReader=null;
		try{
			fileReader=new FileReader(file);
			bufferedReader=new BufferedReader(fileReader);
			String ch;
			while((ch=bufferedReader.readLine())!=null){
				System.out.println(ch);
				Thread.sleep(1000);
			}
		}catch(Exception  exe){
			exe.printStackTrace();
		}finally{
				if(fileReader!=null){
					try {
						bufferedReader.close();
						fileReader.close();
					} catch (IOException e) {
					}
				}
		}
	}

}
