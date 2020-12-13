
public class MobileMain {

	public static void main(String[] args) {
		Mobilei5 i5= new Mobilei5("S","Q",1);
		i5.bluethooth();
		i5.calling();
		//String data=i5.toString();
		//System.out.println(data);
		System.out.println(i5);
		System.out.println(i5.toString());
		
		System.out.println("____I6 Features___");
		MobileI6 i6=new MobileI6();
		i6.bluethooth();
		i6.sms();
		i6.calling();
		i6.wifi();
		i6.camera();
		 //super class can reference the object of the subclass
		 Mobilei5	ref=new MobileI6();
		 ref.bluethooth();
		 ref.calling();
		 ref.sms();
		 //ref.wifi(); //error we cannot do this
		
	}

}
