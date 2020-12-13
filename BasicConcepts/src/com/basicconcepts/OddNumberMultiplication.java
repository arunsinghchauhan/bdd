package com.basicconcepts;

import java.util.ArrayList;
import java.util.Scanner;

public class OddNumberMultiplication {

	public static void main(String[] args) {
		ArrayList <Integer> al =new ArrayList<Integer>();
		Scanner s= new Scanner(System.in);
		System.out.println("Enter size of array:");
		int n=s.nextInt();
		System.out.println("---------------");
		
		for(int i=0;i<n;i++)
		{
			int j=s.nextInt();
			al.add(j);
		}
		
	System.out.println(al);
//		for(int k=0;k<n;k++)
//		{
//			if(al.get(k)%2!=0)
//			{
//				System.out.println("odd number");
//				int odd=al.get(k);
//				int temp=(odd%10)*(odd/10);
//				System.out.println(temp);
//				
//			}
			
			
		//}
	}

}
