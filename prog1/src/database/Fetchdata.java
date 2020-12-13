package database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
public class Fetchdata {
public static void main(String[] args) {
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/hiet_db","root","");
				String sql="select * from student_tbl";
				PreparedStatement psmt=connection.prepareStatement(sql);
				ResultSet res=psmt.executeQuery();
				while(res.next()){
					String studentid=res.getString(1);
					String firstname=res.getString(2);
					String lastname=res.getString(3);
					String email=res.getString(4);
					String mobile=res.getString(5);
					String branch=res.getString(6);
					String collegename=res.getString(7);
					
				
					System.out.print(studentid+",");
					System.out.print(firstname+",");
					System.out.print(lastname+",");
					System.out.print(email+",");
					System.out.print(mobile+",");
					System.out.print(branch+",");
					System.out.println(collegename);
					System.out.println("#########################");}}
				catch(Exception e){
					e.printStackTrace();
				}
				}	
}
			
