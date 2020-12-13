public class MainStaticFrog {

	public static void main(String[] args) {
		Staticfrog f1 = new Staticfrog();
		f1.name = "A";
		f1.color = "green";
		f1.weather = "summer";

		Staticfrog f2 = new Staticfrog();
		f2.name = "b";
		f2.color = "reen";
		f2.weather = "winter";
		f1.printfrog();
		f2.printfrog();
		Staticfrog.showweather();
	}

}
