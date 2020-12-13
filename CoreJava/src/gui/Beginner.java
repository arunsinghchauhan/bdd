package gui;




	import java.awt.*;
	import javax.swing.*;
	class JavaSwing1{
	
		public void Beginner(){
	//create frame 
	JFrame jfrm=new JFrame("Swing Application");

	//set size
	jfrm.setSize(200,200);

	//wen closed?
	jfrm.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

	//set the layout
	jfrm.setLayout(new FlowLayout());

	//set visible
	jfrm.setVisible(true);

	JLabel jlab=new JLabel("A simple swing in java blog for beginners");

	//add to frame`spane
	jfrm.add(jlab);

	}
	 public static void main(String j[]){
	//creating thread
	SwingUtilities.invokeLater(new Runnable(){
	public void run(){
	JavaSwing1 obj=new JavaSwing1();
	obj.Beginner();
	}
	});
	}
	}


	//Read more: http://javablogforbeginners.blogspot.com/2010/11/java-swing-tutorial-examples-for.html#ixzz2qvZp11wa


