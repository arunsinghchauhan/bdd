import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class ListEx {

	public static void main(String[] args) {

		List<String> list1 = new ArrayList<String>();
		
		list1.add("Arun");
		list1.add("Arun");//allow duplicate value
		list1.add("Anand");
		list1.add("Mit");
		list1.add("Adarsh");
		
		//list1.remove(3);
		
//		for(int i=0;i<list1.size();i++)
//		{
//			System.out.println(list1.get(i));
//		}
//		
		Iterator<String> iterator1 = list1.iterator();
		while(iterator1.hasNext())
		{
			System.out.println(iterator1.next());
		}
		

		
		Set<Integer> set1= new HashSet<Integer>();
		
		set1.add(2);
		set1.add(2);//don't allow duplicate value
		set1.add(3);
		set1.add(4);
		
		for(int x: set1)
		{
			System.out.println(x);
		}
		
		LinkedList<Integer> linklist= new LinkedList();		
		linklist.add(2);
		linklist.add(2);//don't allow duplicate value
		linklist.add(3);
		linklist.add(4);
		
		for(int x: linklist)
		{
			System.out.println(x);
		}
		
		Map<String, String> map = new HashMap();
		map.put("My Name", "Arun");
		map.put("token", "for consistency");
		map.put("Ceo", "Sunder Pichai");
		
		Set<String> keys= map.keySet();
		
		for(String key: keys)
		{
			System.out.println(key +" "+map.get(key));
		}
		

	}

}
