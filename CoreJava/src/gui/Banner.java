package gui;

import javax.swing.JLabel;
import javax.swing.JOptionPane;

public class Banner extends Thread{
	 boolean stop;
	private JLabel footerL;
	public Banner(JLabel footerL){
		this.footerL=footerL;
	}
	
	public void run(){
		while (true) {
			try {

				String s=footerL.getText();
				char c = s.charAt(0);
				s = s.substring(1) + c;
			    footerL.setText(s);
				Thread.sleep(500);
			
			} catch (InterruptedException e) {
			}
		}
	}

}
