package com.student.ragisteration;

import java.util.Random;

public class RandomPassword
{
	static String str="abcdefghjkmnopqrstuvwxyz0123456789";
	static int num;
	static char password;
	static String nextvalue="";
	static Random random=new java.util.Random();
	static int number=str.length();
		
			public static String getPassword()
			{
			  nextvalue="";
			  
			  for(int i=0;i<8;i++)
			  {
				  num=random.nextInt(number);
				  password=str.charAt(num);
				  nextvalue=nextvalue+password;
				  
			  }
			  
			  System.out.println("Random Next Password is: " +nextvalue);
			  return nextvalue;
			}
			
		
}
