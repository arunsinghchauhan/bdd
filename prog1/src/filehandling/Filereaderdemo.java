package filehandling;
import java.io.*;
import java.util.Scanner;
public class Filereaderdemo {

	
	public static void main(String[] args) throws InterruptedException {
		Scanner scanner=new Scanner(System.in);
		System.out.println("ENTER FILE NAME:");
		String name=scanner.next();
		File file=new File(name);
		if(file.exists()){
			System.out.println("FILE EXIST:"+file.getName());
		}
		else{
			System.out.println("FILE DOES NOT EXIST:"+file.getName());
		}
		FileReader fileReader=null;
		try {
			fileReader=new FileReader(file);
			int ch;
			while((ch=fileReader.read())!=-1){
				System.out.print((char)ch);
				Thread.sleep(500);
			}
			
		} catch (IOException e) {
			
			e.printStackTrace();
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