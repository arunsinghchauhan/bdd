package gui;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

public class SwingFrame  extends JFrame implements ActionListener,KeyListener{
	
	//It will hold the address of current window
	Container container;
	JPanel header,footer,mainpan;
	
	JButton blue,red,yellow;
	
	JTextField name;
	JLabel fname,lastName,email;
	public SwingFrame() {
		//super keyword is used to access method from super class
		container=super.getContentPane();
		container.setBackground(Color.DARK_GRAY);
		container.setLayout(new BorderLayout());
		
		//header
		header=new JPanel();
		header.setLayout(new FlowLayout());
		ImageIcon icon=new ImageIcon("header.png");
		JLabel pic=new JLabel(icon);
		header.add(pic);
		container.add(header,BorderLayout.NORTH);
		
		//header
		footer=new JPanel();
		footer.setLayout(new FlowLayout());
		JLabel message=new JLabel("____________________SWING____________________");
		message.setFont(new Font("Helvetica", Font.BOLD, 18));
		message.setForeground(Color.yellow);
		footer.add(message);
		Color bb = new Color(15, 38, 135);
		footer.setBackground(bb);

		container.add(footer,BorderLayout.SOUTH);
		
		//Main Panel
		mainpan=new JPanel();
		mainpan.setLayout(new FlowLayout());
		
		name=new JTextField(30);
		name.addKeyListener(this);
		mainpan.add(name);
		
		try{
			//loading the driver
			Class.forName("com.mysql.jdbc.Driver");
			//Connection points to the database
			Connection connection=DriverManager.
					getConnection("jdbc:mysql://localhost:3306/hiet_db","root","");
			//Creating statement to execute query
			String sql="select * from students_tbl";
			PreparedStatement pstmt=connection.prepareStatement(sql);
            //setting the values into the query
          //executing the query to the database
           ResultSet rs=pstmt.executeQuery();
          if(rs.next()){
        	  String studentId=rs.getString(1);
        	  name.setText(studentId);
         }
		}catch(Exception  exception){
			exception.printStackTrace();
		}
		
		blue=new JButton("__Blue__",new ImageIcon("image1.jpg"));
		red=new JButton("__Red__",new ImageIcon("image2.jpg"));
		yellow=new JButton("__Yellow__",new ImageIcon("image3.jpg"));
	    blue.addActionListener(this);
	    red.addActionListener(this);
	    yellow.addActionListener(this);
	    mainpan.add(blue);
		mainpan.add(red);
		mainpan.add(yellow);

		//Creating View
		fname=new JLabel("Name : = ");
		fname.setFont(new Font("Helvetica", Font.BOLD, 12));
		lastName=new JLabel("LastName : = ");
		lastName.setFont(new Font("Helvetica", Font.BOLD, 12));
		email=new JLabel("Email : = ");
		email.setFont(new Font("Helvetica", Font.BOLD, 12));
		mainpan.add(fname);
		mainpan.add(lastName);
		mainpan.add(email);
		//adding main pan on main window ie Container
		container.add(mainpan,BorderLayout.CENTER);
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		SwingFrame frame=new SwingFrame();
		frame.setSize(400,600);
		frame.setVisible(true);

	}

	@Override
	public void actionPerformed(ActionEvent e) {
	      if(e.getSource()==blue){
	    	  mainpan.setBackground(Color.blue);
	      }else if(e.getSource()==red){
	    	  mainpan.setBackground(Color.red);
	      }else if(e.getSource()==yellow){
	    	  mainpan.setBackground(Color.yellow);
	      }
	}

	@Override
	public void keyTyped(KeyEvent e) {
	
		
	}

	@Override
	public void keyPressed(KeyEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void keyReleased(KeyEvent e) {
		String cname=name.getText();	
		System.out.println("cname = "+cname);
		try{
			//loading the driver
			Class.forName("com.mysql.jdbc.Driver");
			//Connection points to the database
			Connection connection=DriverManager.
					getConnection("jdbc:mysql://localhost:3306/hiet_db","root","");
			//Creating statement to execute query
			String sql="select * from students_tbl where studentid=?";
			PreparedStatement pstmt=connection.prepareStatement(sql);
			pstmt.setString(1, cname);
            //setting the values into the query
          //executing the query to the database
           ResultSet rs=pstmt.executeQuery();
          if(rs.next()){
        	  String firstName=rs.getString(2);
        	  String lName=rs.getString(3);
        	  String lemail=rs.getString(4);
        	  System.out.println("firstName = "+firstName);
        	  System.out.println("Email = "+lemail);
        	  
        	  fname.setText(" First Name : "+firstName);
        	  lastName.setText(" Last Name : "+lName);
        	  email.setText(" Email : "+lemail);
         }
		}catch(Exception  exception){
			exception.printStackTrace();
		}
	}

}
