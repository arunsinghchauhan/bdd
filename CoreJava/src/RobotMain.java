
public class RobotMain {


	public static void main(String[] args) {
		
		   Robot free=new Robot();
		   free.color="green";
		   free.name="Ravi";
		   free.price=122;
		   free.vendor="TATA";
		   
		   free.start();
		   free.walk();
		   free.fly();
		   free.stop();
		   free.printRobot();
	}

}
