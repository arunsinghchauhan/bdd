package gui;

import java.awt.Color;
import java.awt.Container;
import java.awt.FlowLayout;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

public class Simple extends JFrame{

	JFrame jfrm=new JFrame("Swing Application");

	Container container;
	JButton green, yellow, red, purple;
	private JPanel imagePanel;
	public Simple() {
		// getContentPane returns reference of current window
		container = getContentPane();
	
		imagePanel.setLayout(new FlowLayout());
		imagePanel.setBackground(Color.blue);
		ImageIcon icon = new ImageIcon("topic.gif");
		JLabel photo = new JLabel(icon);	
}
	public static void main(String[] args) {
		Simple frame = new Simple();
		frame.setSize(300, 450);
		frame.setTitle("HIET");
		frame.setVisible(true);

	}
}