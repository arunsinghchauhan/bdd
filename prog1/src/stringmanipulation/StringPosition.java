package stringmanipulation;



public class StringPosition {
	public static void main(String args[]) {
		StringBuffer str=new StringBuffer("Object Language");
		System.out.println("Original String::"+str);
		//obtaining String length
		System.out.println("Length Of String::"+str.length());
        //Accessing Characters in a String
		for(int i=0;i<str.length();i++){
			int p=i+1;
			System.out.println("Character at Position:"+p+"is "+str.charAt(i));
		}
			//Inserting a string in the middle
     		String string=new String(str.toString());
			int pos=string.indexOf(5);
			str.insert(pos, "Oriented");
			System.out.println("Modify String:"+str);
		//Modifying characters
		str.setCharAt(6,'-');
		System.out.println("String now:"+str);
		//Appending a string at the end
		str.append(" improves security.");
		System.out.println("Append String:"+str);
		
		}
	}


