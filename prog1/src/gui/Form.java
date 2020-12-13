package gui;

import javax.swing.BorderFactory;
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


public class Form extends JFrame implements ActionListener{
public Container c;
JPanel header,footer,mainpan;
JTextField login;
JPasswordField pass;
JButton signin;
public Form(){
	c=getContentPane();
	c.setLayout(new BorderLayout());
	header=new JPanel();
	header.setLayout(new FlowLayout());
	ImageIcon icon=new ImageIcon("prithvi.jpg");
	JLabel label=new JLabel(icon);
	header.add(label);
	c.add(header,BorderLayout.NORTH);
	//creating footer
	footer =new JPanel();
	Color co=new Color(12,34,56);
	footer.setBackground(co);
	footer.setLayout(new BorderLayout());
JLabel msg=new JLabel("adding footer here!!!!ARUN SINGH  ");
msg.setFont(new Font("Helvetica", Font.BOLD, 10));
new Banner(msg).start();
msg.setFont(new Font("helvetica", Font.BOLD,34));
msg.setForeground(Color.red);
footer.add(msg);
c.add(footer,BorderLayout.SOUTH);
//creating mainpanel
mainpan = new JPanel();
Border border1 = new EtchedBorder(EtchedBorder.LOWERED);
mainpan.setBorder(new TitledBorder(border1, "Student Form",
		TitledBorder.LEFT, 2, new Font("Helvetica", Font.BOLD, 16),
		Color.white));
mainpan.setLayout(new FlowLayout());
Color bb=new Color(33,40,67);
mainpan.setBackground(bb);
JLabel label2=new JLabel("LOGIN");
label2.setForeground(Color.red);
label2.setFont(new Font("Helvetica", Font.BOLD, 13));
mainpan.add(label2);
login=new JTextField(20);
mainpan.add(login);
//creating password first create label than passwordfield.
JLabel label3=new JLabel("PASSWORD");
label3.setForeground(Color.red);
label3.setFont(new Font("Helvetica", Font.BOLD, 13));
mainpan.add(label3);
pass=new JPasswordField(20);//creating passwordfield and its declare upper.
mainpan.add(pass);
c.add(mainpan);

//creating a signin button
Border myRaisedBorder = BorderFactory.createBevelBorder(
		BevelBorder.RAISED, Color.YELLOW, Color.RED);
signin = new JButton("Sign In",new ImageIcon("edit.png"));
signin.setBorder(myRaisedBorder);
signin.setFont(new Font("Helvetica", Font.BOLD, 16));
signin.addActionListener(this);
mainpan.add(signin);
c.add(mainpan, BorderLayout.CENTER);

}


	
	 
	public static void main(String[] args) {
		Form form=new Form();
		form.setBackground(Color.BLUE);
		form.setVisible(true);
		form.setSize(200,200);
		JFrame.setDefaultLookAndFeelDecorated(true);
		JDialog.setDefaultLookAndFeelDecorated(true);
		
	}
	public void actionPerformed(ActionEvent e) {
	     String username=login.getText();
	     String password=pass.getText();

	 	try{
			//loading the driver
			Class.forName("com.mysql.jdbc.Driver");
			//Connection points to the database
			Connection connection=DriverManager.
					getConnection("jdbc:mysql://localhost:3306/hiet_db","root","");
			//Creating statement to execute query
			String sql="select * from student_tbl where studentId=? and password=?";
			PreparedStatement pstmt=connection.prepareStatement(sql);
			pstmt.setString(1, username);
			pstmt.setString(2, password);
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


