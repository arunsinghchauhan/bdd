package gui;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;

public class Form1 extends JFrame implements ActionListener{
	Container c;
	JButton green,blue;
	public Form1()
	{
	c=this.getContentPane();
	c.setLayout(new FlowLayout());
  c.setBackground(Color.red);
	green=new JButton("green");
	blue=new JButton("blue");
	
	add(green);
	add(blue);
	green.addActionListener(this);
	blue.addActionListener(this);
	JLabel msg=new JLabel("ARUN SINGH CHAUHAN");
	c.add(msg);
	
	}
  


 public static void main(String args[]){
	 Form1 frame=new Form1();
		frame.setSize(500,500);
		frame.setVisible(true);
		frame.setTitle("WINDOW");
		JFrame.setDefaultLookAndFeelDecorated(true);
		
	 
 }



@Override
public void actionPerformed(ActionEvent e) {
	if(e.getSource()==green){
		c.setBackground(Color.green);
		}
	else if(e.getSource()==blue){
		c.setBackground(Color.blue);
	}
	
}}