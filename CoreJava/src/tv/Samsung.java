package tv;

public class Samsung  implements TVRemote{

	@Override
	public void on() {
		System.out.println("____samsung TV is on now watch your favourite channel!!!!! ");
	}

	@Override
	public void off() {
		System.out.println("Sorry samsung power is cut!!!!!!!!!!!!!!");
	}

		

}
