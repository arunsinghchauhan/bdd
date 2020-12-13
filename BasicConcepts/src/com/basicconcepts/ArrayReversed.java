package com.basicconcepts;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

public class ArrayReversed {
	int value;
	Scanner s = new Scanner(System.in);
	ArrayList<Integer> al = new ArrayList<Integer>();

	void original() {
		System.out.println("Enter any five integer values");
		for (int i = 0; i <= 4; i++) {

			value = s.nextInt();
			al.add(value);
		}
		
		System.out.println(al);
		/**int u=4;
		for (int j = 0; j <4; j++) {
			
			int temp=al.get(j);
		     al.add(al.get(u));
		    al.add(arg0);
		}*/
		Collections.reverse(al);
		System.out.println(al);

	}

	// void reverse()
	// {
	// System.out.println(al);
	// }

	public static void main(String[] args) {

		ArrayReversed ar = new ArrayReversed();
		ar.original();
		// ar.reverse();
	}

}
