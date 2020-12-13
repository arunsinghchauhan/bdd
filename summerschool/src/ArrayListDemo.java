import java.util.ArrayList;
import java.util.Iterator;




///1.ArrayList is container for the objects
// 2. ArrayList is based on array
// 3. ArrayList is dynamic
// 5. it is ordered
// 6. allow duplicate elements
// 7. it is not based on hashing
// 8. excellent for random access
// 9.good for data retrieval using index
public class ArrayListDemo {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		 
		ArrayList arrayList=new ArrayList();
		 arrayList.add("mango");
		 arrayList.add("banana");
		 arrayList.add("papaya");
		 arrayList.add("grapes");
		 arrayList.add("apple");
		
		 ////
		Iterator it= arrayList.iterator();

		while(it.hasNext()){
			String element=(String) it.next();
			System.out.println(element);
		}
		 
		 
		

	}

}
