package gui;
import java.awt.Color;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.color.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.JButton;
import javax.swing.JFrame;
public class Butt extends JFrame implements ActionListener{

	Container c;
	JButton white,green,black;
	public Butt(){
		c=this.getContentPane();
		c.setBackground(Color.gray);
		ImageIcon icon=new ImageIcon("prithvi.jpg");
		JLabel photo=new JLabel(icon);
		c.add(photo);
		white=new JButton("white");
		green=new JButton("green");
		black =new JButton("black");
		c.setLayout(new FlowLayout());
		
		add(white);
		add(green);
		add(black);
		
		//adding listener to button
		white.addActionListener(this);
		green.addActionListener(this);
		black.addActionListener(this);
	   
		
		
	}
	public static void main(String[] args) {
		Butt frame=new Butt();
		frame.setSize(500,500);
		frame.setVisible(true);
		frame.setTitle("PRITHVI RAJ CHAUHAN");
	}
	public void actionPerformed(ActionEvent e){
		if(e.getSource()== green){
			c.setBackground(Color.green);
			}
		else if(e.getSource()== white){
			c.setBackground(Color.white);
		}
		else if(e.getSource()== black){
			c.setBackground(Color.black);
			}
		
		}
	
	}
		
		

		
	

	


