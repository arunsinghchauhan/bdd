
public class Maintv {

	
	public static void main(String[] args) {
		Statictv t1=new Statictv();
		t1.b_name="LG";
		t1.tvno=123;
		t1.size="21 INCH";
		
		Statictv t2=new Statictv();
		t2.b_name="SAMSUNG";
		t2.tvno=125;
		t2.size="26 INCH";
		
		t1.start();
		t1.printtvinfo();
		t2.start();
		t2.printtvinfo();
		
		Statictv.showtv();
	}

}
