package assignments;

import java.util.Scanner;

public class Assignment1 {
	int[] arr;
	int n,i;
	
	void takeInput()
	{
		System.out.println("Enter the size of the array: ");
		Scanner read= new Scanner(System.in);
		n=read.nextInt();
		arr=new int[n];
		
	}
	
	void array_read()
	{
		for(i=0;i<n;i++)
		{
			System.out.println("Entered the array values one by one: ");
			Scanner read= new Scanner(System.in);
			arr[i]=read.nextInt();
		}
		
	}
	
	void print_array()
	{
		for(i=0;i<n;i++)
		{
			System.out.println(arr[i]);
		
		}
			
	}
	
	public static void main(String[] args)
	{
		Assignment1 A1= new Assignment1();
		A1.takeInput();
		A1.array_read();
		A1.print_array();
	}

}
