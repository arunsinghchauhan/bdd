package tv;

public class Sony  implements TVRemote{

	@Override
	public void on() {
		System.out.println("____Sony TV is on now watch your favourite channel!!!!! ");
	}

	@Override
	public void off() {
		System.out.println("Sorry Sony power is cut!!!!!!!!!!!!!!");
	}

		

}
