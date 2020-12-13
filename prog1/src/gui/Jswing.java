package gui;

import java.awt.Color;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JLabel;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;

public class Jswing extends JFrame implements ActionListener{
Container container;
JButton green,yellow,red,purple;
public Jswing(){
	container=this.getContentPane();
	container.setLayout(new FlowLayout());
	container.setBackground(Color.blue);
	//ImageIcon icon=new ImageIcon("arun.jpg");
	//JLabel photo=new JLabel(icon);
	//container.add(photo);
	
	green=new JButton("green");
	yellow=new JButton("yellow");
	red =new JButton("red");
	purple=new JButton("purple");
	add(green);
	add(yellow);
	add(red);
	add(purple);
	//adding listener to button
	green.addActionListener(this);
	yellow.addActionListener(this);
	red.addActionListener(this);
    purple.addActionListener(this);
	
	
}   
	
	

	public static void main(String[] args) {
		Jswing frame=new Jswing();
		frame.setSize(500,500);
		frame.setVisible(true);
		frame.setTitle("WINDOW");
	}
	public void actionPerformed(ActionEvent e){
		if(e.getSource()==green){
			container.setBackground(Color.green);
			}
		else if(e.getSource()==yellow){
			container.setBackground(Color.yellow);
		}
		else if(e.getSource()==red){
			container.setBackground(Color.red);
			}
		else if(e.getSource()==purple){
			container.setBackground(new Color(000,191,255));
		}
		}
		
		
}
		
	

