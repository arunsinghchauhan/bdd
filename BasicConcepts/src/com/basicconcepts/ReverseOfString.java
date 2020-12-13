package com.basicconcepts;
import java.util.Scanner;

public class ReverseOfString {

	void toCalculate()
	{
		//char arr[];
		//arr= new char[30];
		//char r='\0';
		String r = "";
		int i;
		System.out.println("Enter any string");

		Scanner read=new Scanner(System.in);
		String s=read.nextLine();
		System.out.println("ur original string entered was :"+s);
		
		for(i=s.length()-1;i>=0;i--)
		{
			r=r+s.charAt(i);
		}
		System.out.println("Your reversed array is: "+r);
//		arr[0]=arr[3];
//		arr[1]=arr[2];
//		arr[2]=arr[1];
//		arr[3]=arr[0];
//System.out.println("reverse array is "+arr[0]+","+arr[1]+","+arr[2]+","+arr[3]);
		
	}

	public static void main(String[] args) {
		ReverseOfString t= new ReverseOfString();

		t.toCalculate();
	}

}
