package interface1;

public class Maintvremote {

	public static void main(String[] args) {
		
     Tvremote tr;
     tr=new Samsung();
     tr.on();
     tr.off();
     tr=new Sony();
     tr.on();
     tr.off();
	}

}
