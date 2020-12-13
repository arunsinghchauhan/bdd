package com.basicconcepts;

import java.util.Scanner;

public class Checkop {

	int n,count=0,i;
	int arr[]=new int[10];
	
	public void applyLogic()
	{
		final int len=arr.length;
		System.out.println("Enter the values of the array");
		for(i=0;i<10;i++)
		{
		Scanner read= new Scanner(System.in);
		arr[i]=read.nextInt();
		}
		
		System.out.println("Your array elements are: ");
		for(i=0;i<10;i++)
		{
		System.out.print("["+arr[i]+"]");
		}
		
		System.out.println("");
		
		System.out.println("The number of clumps are: ");
		
		for(i=0;i<9;i++)
		{
			int j=i+1;
			if(arr[i]==arr[j])
		{
			
			count++;
			while((arr[i]==arr[j]))
            {
                if(j==len-1)
                    break;
                j++;
            }  
        } 
        i=j-1;
        if(i==len-2)
            break;
		}
		
		System.out.println(count);
	}
	public static void main(String[] args) {
//		for(int i=0;i<9;i++)
//		{
//			if(i==3)
//				continue;
//			if(i==7)
//				break;
//			System.out.println(i);
//		}
//		String str2="Arun";
//		String str1="JAVA";
//		System.out.println(str2.concat(str1));
//		System.out.println(str1+str2);
//		String JavaStr = "Are you a Java expert? Yes, you are.";
//        System.out.println(JavaStr.charAt(0));
//		String str1 = "How are you?";
//		String str2 = str1.substring(5, 7);
//		System.out.println(str2);
		Checkop op= new Checkop();
		op.applyLogic();

	}

}
