package com.basicconcepts;

import java.util.InputMismatchException;
import java.util.Scanner;

public class ArrayDivisionEx {
	int l;
	Scanner read = new Scanner(System.in);
	int array[] = new int[5];

	public void takeLengthOfArray()

	{
		System.out.println("Enter the length of the array: ");
		l = read.nextInt();

	}

	void takeArrayElements() {
		System.out.println("Please enter the array elements one by one: ");
		for (int i = 0; i <= array.length - 1; i++) {
			array[i] = read.nextInt();
		}
	}

	void divideArrayElement() {
		System.out.println("Enter the position of array you want as dividend: ");

		int x = read.nextInt();

		System.out.println("Enter the position of array you want as divisor: ");
		int y = read.nextInt();

		double divide = array[x] / array[y];
		System.out.println("The division of two number is: " + divide);

	}

	public static void main(String[] args) {

		ArrayDivisionEx ad = new ArrayDivisionEx();
		try {
			ad.takeLengthOfArray();
			ad.takeArrayElements();
			ad.divideArrayElement();
		} catch (InputMismatchException i) {
			System.out.println("Please enter the integer value only");
		} catch (ArithmeticException a) {
			System.out.println("You are trying to divide by 0");
		}
			catch(Exception e)
			{
				System.out.println("you entered a large number of digits");
			}
	}

}
