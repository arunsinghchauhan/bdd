package com.learn.java;

public class ArrayBasic {

	
	static void minNumberOfArray(int arr[])
	{
		int min=arr[0];
		for(int i=1;i<arr.length;i++)
		{
			if(min>arr[i])
				min=arr[i];
		}
		System.out.println(min);
		
	}
	
	public static void main(String[] args) {
		int c[]={23,13,14,15,56,33};

      minNumberOfArray(c);
//		int a[]= new int[5];
//		
//		a[0]=12;
//		a[1]=10;
//		a[2]=13;
//		a[3]=15;
//		a[4]=20;
//		//a[5]=87;
//		
//		for(int i=0; i<a.length;i++)
//		{
//			System.out.println(a[i]);
//		}
		
//		int b[]={23,34,45,56,78};
//		for(int i=0;i<b.length;i++)
//		System.out.println(b[i]);
		
		
		
		
		
	}

}
