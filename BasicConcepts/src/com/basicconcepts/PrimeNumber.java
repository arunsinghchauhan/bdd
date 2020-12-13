package com.basicconcepts;

import java.util.Scanner;

public class PrimeNumber {
	// boolean temp;

	void calculate() {

		System.out.println("Enter a number to check prime or not: ");
		Scanner read = new Scanner(System.in);
		int n = read.nextInt();

		for (int i = 2; i < n; i++) {
			if (n % i == 0) 
			{
				System.out.println("Not Prime");
				break;
			} 
			else
			{
				System.out.println("Prime");
				break;
			}	

		}

	}

	public static void main(String[] args) {

		PrimeNumber pn = new PrimeNumber();
		pn.calculate();
	}

}
