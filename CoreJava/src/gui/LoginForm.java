package gui;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.swing.BorderFactory;
import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;
import javax.swing.border.BevelBorder;
import javax.swing.border.Border;
import javax.swing.border.EtchedBorder;
import javax.swing.border.TitledBorder;

public class LoginForm extends JFrame  implements ActionListener {
	//point to current window
	public Container conn;
	JPanel header,footer,mainpan;
	JTextField login;
	JPasswordField password;
	JButton signin;
	public LoginForm(){
		conn=getContentPane();
		conn.setLayout(new BorderLayout());
		//Creating header 
		header = new JPanel();
		header.setLayout(new FlowLayout());
		Icon image = new ImageIcon("header.png");
		JLabel jLabel = new JLabel(image);
		header.add(jLabel);
		conn.add(header, BorderLayout.NORTH);
		
		//creating footer component
		footer = new JPanel();
		Color bb = new Color(15, 38, 135);
		footer.setBackground(bb);
		footer.setLayout(new FlowLayout());
		
		JLabel fmessage=new JLabel("Summer school training program!");
		fmessage.setFont(new Font("Helvetica", Font.BOLD, 18));
		fmessage.setForeground(Color.white);
		footer.add(fmessage);
		new Banner(fmessage).start();
		conn.add(footer, BorderLayout.SOUTH);
		//Creating main panel
		mainpan = new JPanel();
		Border border1 = new EtchedBorder(EtchedBorder.LOWERED);
		mainpan.setBorder(new TitledBorder(border1, "Student Form",
				TitledBorder.LEFT, 2, new Font("Helvetica", Font.BOLD, 16),
				Color.black));
		mainpan.setLayout(new FlowLayout());
		// conn.add(eastpan,BorderLayout.EAST);
				// 255.153.51
				Color bcol = new Color(135, 206, 250);
				mainpan.setBackground(bcol);
				
		JLabel loginl = new JLabel("Login :");
		loginl.setForeground(Color.RED);
		loginl.setFont(new Font("Helvetica", Font.BOLD, 13));
		mainpan.add(loginl);
		login = new JTextField(20);
		mainpan.add(login);
		
		JLabel passwordl = new JLabel("Password :");
		passwordl.setForeground(Color.RED);
		passwordl.setFont(new Font("Helvetica", Font.BOLD, 13));
		mainpan.add(passwordl);
		password = new JPasswordField(20);
		mainpan.add(password);
		
		//Creating a sign in button
		Border myRaisedBorder = BorderFactory.createBevelBorder(
				BevelBorder.RAISED, Color.YELLOW, Color.RED);
		signin = new JButton("Sign In",new ImageIcon("edit.png"));
		signin.setBorder(myRaisedBorder);
		signin.setFont(new Font("Helvetica", Font.BOLD, 16));
		signin.addActionListener(this);
		mainpan.add(signin);
		conn.add(mainpan, BorderLayout.CENTER);
		
		
	}
	public static void main(String[] args) {
		LoginForm form=new LoginForm();
		WindowUtilities.setJavaLookAndFeel();
			// Make sure we have nice window decorations.
		JFrame.setDefaultLookAndFeelDecorated(true);
		JDialog.setDefaultLookAndFeelDecorated(true);
		form.setSize(250,400);
		form.setVisible(true);
	}
	@Override
	public void actionPerformed(ActionEvent e) {
	     String username=login.getText();
	     String tpassword=password.getText();

	 	try{
			//loading the driver
			Class.forName("com.mysql.jdbc.Driver");
			//Connection points to the database
			Connection connection=DriverManager.
					getConnection("jdbc:mysql://localhost:3306/hiet_db","root","");
			//Creating statement to execute query
			String sql="select * from students_tbl where studentid=? and password=?";
			PreparedStatement pstmt=connection.prepareStatement(sql);
			pstmt.setString(1, username);
			pstmt.setString(2, tpassword);
            //setting the values into the query
          //executing the query to the database
           ResultSet rs=pstmt.executeQuery();
          if( rs.next()){
        	  JOptionPane.showMessageDialog(this,"You are a valid user ,thanks!");
          }else{
         	  JOptionPane.showMessageDialog(this,"Sorry , You are not a valid user ,thanks!");
          }
		}catch(Exception  exception){
			exception.printStackTrace();
		}
	     
	    
	}

}
