
public class Maini5 {

	public static void main(String[] args) {
	
		Mobilei5 i5=new Mobilei5("blue","m1",6200);
        
        i5.bluethooth();
		i5.calling();
		i5.sms();
		System.out.println(i5);
		MobileI6 i6=new MobileI6();
		i6.bluethooth();
		i6.calling();
		i6.sms();
		i6.camera();
        i6.wifi();	
        System.out.println(i6);
	}
	

}
