package gui;
import javax.swing.*;
public class Button {
	
public static class InterfaceTwo extends JFrame{
		
		public InterfaceTwo(){
		   setSize(400,400);
		   JButton startButton = new JButton("Start");
		   add(startButton);
		   setDefaultCloseOperation(EXIT_ON_CLOSE);
		   setVisible(true);
		}
		
		public static void main(String[] args){ 
			new InterfaceTwo();
		}
	}
}
