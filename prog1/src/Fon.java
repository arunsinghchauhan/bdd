import java.util.Scanner;
public class Fon {
int num;

void input(){
	Scanner scanner=new Scanner(System.in);
	System.out.println("ENTER THE NUMBER YOU WANT FOR FACTORIAL:");
	num=scanner.nextInt();
	}

void result(){
	int sum=1;
	for(int i=2;i<=num;i++){
		sum=sum*i;
	}
	System.out.println("THE FACTORIAL OF "+num+ " IS:: "+sum);
}
public static void main(String[] args) {
	Fon f=new Fon();
	f.input();
	f.result();
}


}

