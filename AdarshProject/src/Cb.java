import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.Vector;

public class Cb {

	public static void main(String[] args) {

		//Vector <Integer>arr= new Vector();
		
		//Set<Integer> arr = new HashSet();
		//arr.add("Arun");
		//arr.add("Singh");
		//arr.add("Chauhan");	
		
		/*arr.add(123);
		arr.add(22);
		arr.add(45);
		arr.add(73);
		arr.add(73);*/
		
	//Collections.sort(arr);
		
		//TreeSet sortedset = new TreeSet<Integer>(arr); //Treeset is used to sorted the element
		
        //System.out.println(sortedset);

		
		/*for (int i : arr) {
			System.out.println(sortedset);
		}*/
		Map<String,String> map= new HashMap();
		
		map.put("MyName", "Arun");
		map.put("ceo", "Chauhan");
		map.put("actor", "Arun Chauhan");
		
		Set<String> keys= map.keySet();
		
		for (String key : keys) {
		
			System.out.println(key + "  "+map.get(key));
			
		}
		
		
		
		
		
	}

}
