package gui;

import java.awt.Color;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

public class HelloJFrame extends JFrame implements ActionListener {
	Container container;
	JButton green, yellow, red, purple;
	private JPanel imagePanel;
	public HelloJFrame() {
		// getContentPane returns reference of current window
		container = getContentPane();
	
		imagePanel.setLayout(new FlowLayout());
		imagePanel.setBackground(Color.blue);
		ImageIcon icon = new ImageIcon("topic.gif");
		JLabel photo = new JLabel(icon);
		// adding photo on container
		imagePanel.add(photo);
		green = new JButton("Green");
		yellow = new JButton("Yellow");
		red = new JButton("Red");
		purple = new JButton("Purple");

		imagePanel.add(green);
		imagePanel.add(yellow);
		imagePanel.add(red);
		imagePanel.add(purple);
		// adding listener to the buttons
		green.addActionListener(this);
		yellow.addActionListener(this);
		red.addActionListener(this);
		purple.addActionListener(this);

	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		HelloJFrame frame = new HelloJFrame();
		frame.setSize(300, 450);
		frame.setTitle("HIET");
		frame.setVisible(true);

	}

	@Override
	public void actionPerformed(ActionEvent e) {
		if (e.getSource() == green) {
			container.setBackground(Color.green);
		} else if (e.getSource() == yellow) {
			container.setBackground(Color.yellow);
		}
		else if (e.getSource() == red) {
			container.setBackground(Color.red);
		} else if (e.getSource() == purple) {
			container.setBackground(new Color(123,234,21));
		}
	}
	
	 

}
