package stringmanipulation;

public class Stringref {


	public static void main(String[] args) {
		String str1=new String("hiet");
		String str2=new String("hiet");
		if(str1!=str2){
		System.out.println("YOUR REFRENCE IS DIFFERENT");	
		}
		
		String m1="india";
		String m2="india";
		if(m1==m2){
			System.out.println("YOUR REFRENCE IS SAME");
			String str3="hiet";
			String str4=str3;//copying of object address
			if(str3==str4)
				System.out.println("THEY POINT TO THE SAME OBJECT 'BOX'");
		}
	}

}
