import java.util.Scanner;

public class Fact {
	int num;

	void input() {
		Scanner scanner = new Scanner(System.in);
		System.out.println("ENTER YOUR NUMBER:");
		num = scanner.nextInt();
	}

	int result() {
		int sum = 1;
		for (int i = 2; i <= num; i++) {
			sum = sum * i;

		}
		// System.out.println("fact is"+num+"is="+sum);
		return sum;
	}

	public static void main(String[] args) {
		Fact fact = new Fact();
		fact.input();
		int out1 = fact.result();
		System.out.println("##"+out1+"##");

	}

}
