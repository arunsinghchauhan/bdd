package com.learn.java;

import java.util.Scanner;

public class EvenOdd {

	public static void main(String[] args) {

		System.out.println("Enter the number: ");
		Scanner read= new Scanner(System.in);
		int num=read.nextInt();
		
		if(num%2==0){
			System.out.println("Even number");
		}
			else
			{
				System.out.println("Odd number");
			}
		}
	}


