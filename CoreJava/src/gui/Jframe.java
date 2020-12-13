package gui;
import java.awt.*;


import javax.swing.*;

public class Jframe {
	

	/** Tiny example showing the main difference in using 
	 *  JFrame instead of Frame: using the content pane
	 *  and getting the Java (Metal) look and feel.
	 *  1998-99 Marty Hall, http://www.apl.jhu.edu/~hall/java/
	 */

	public static class JFrameExample {
	 
		public static void main(String[] args) {
	    
		WindowUtilities.setNativeLookAndFeel();
	    JFrame f = new JFrame("This is a test");
	    f.setSize(400, 150);
	    Container content = f.getContentPane();
	    content.setBackground(Color.white);
	    content.setLayout(new FlowLayout()); 
	    content.add(new JButton("Button 1"));
	    content.add(new JButton("Button 2"));
	    content.add(new JButton("Button 3"));
	    f.addWindowListener(new WindowListener());
	    f.setVisible(true);
	  }
	}

}
