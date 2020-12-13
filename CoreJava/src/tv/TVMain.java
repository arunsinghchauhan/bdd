package tv;

public class TVMain {
	public static void main(String[] args) {
		
		TVRemote remote=new Samsung();
		remote.on();
		remote.off();
		
		remote=new Sony();
		remote.on();
		remote.off();
		
		
		
		
		
	}
}
