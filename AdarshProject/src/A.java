public class A implements Printable{

	
		public void methodprint()
		{
			System.out.println("Implementation of the method");
		}
		
		public static void main(String[] args)	{
			//A o= new A();
			Printable p= new A();
			p.methodprint();
		}
}
