import java.util.*;


public class TestCollection {

	public void run() {
		ArrayList<String> al = new ArrayList<String>();
		ArrayList<Integer> anew = new ArrayList<Integer>();
		Scanner sc = new Scanner(System.in);

		int n = sc.nextInt();
		int temp = n;
		int j = 0;
		System.out.println("Enter values you want in array");
		while (n != 0) {
			String u = sc.next();
			al.add(u);
			n--;
		}
		Collections.sort(al);
		System.out.println(al);
		/*
		 * Collections.reverse(al); System.out.println(al);
		 */

		for (int i = 0; i < al.size() - 1; i++) {

			j = j + 2;
			al.get(j);
			for(int k=0 ; k<=j; k++)
			{
				anew.add(j);
			}
			System.out.println(al.get(j));
			j++;
		
			if(j>al.size()-1 )
			{
				break;
			}
			

		}
		System.out.println(anew);
		
	}

	public static void main(String[] args) {

		System.out.println("Enter the lenght of the array u want");
		TestCollection tc = new TestCollection();
		tc.run();

	}
}
