
public abstract class AbstractEx {

	public  abstract void meth1();
	
	public static void notabstract()
	{
		System.out.println("Non abstarct method in abstract class");
	}
	
	public static void main(String[] args) {
	//	AbstractEx ab= new AbstractEx();//we can not make the object of abstract class
		notabstract();
	}

}
