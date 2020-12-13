package tv;

public class StringReferenceComp {
	public static void main(String[] args) {
		String str1=new String("Hiet");
		String str2=new String("Hiet");
         if(str1!=str2){
        	 System.out.println("Two different instance");
         }else{
        	 System.out.println("same instance");
         }
         
         String str3="Hiet";
         String str4=str3;
         //str3 and str4 are pointing to same object
         if(str3==str4){
        	 System.out.println("str3 and str4 are same");
         }
         
         ///VVVIIIIIII
         String m1="India";
         String m2="India";
         //Because of intern pool concept of the String
         if(m1==m2){
        	 System.out.println("m1 and m2 are same!!!");
         }
         
         
	}

}
