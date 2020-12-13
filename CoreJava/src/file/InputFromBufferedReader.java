package file;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Scanner;

public class InputFromBufferedReader {

	public static void main(String[] args) {
		
		//Scanner  scanner=new Scanner(System.in);
		InputStreamReader in=new InputStreamReader(System.in);
		BufferedReader bufferedReader=new BufferedReader(in);
		System.out.println("Enter name");
		String name=null;
		try {
			name = bufferedReader.readLine();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("Hellp  your name is  = "+name);
		
	}

}
