<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Date"%>
<%@ page import="java.io.*,com.oreilly.servlet.*" %>
<%@ page import="java.sql.*"%>
<%

            
            try 
                {
                              
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "ankur");
                final int limit = 1024 * 1024 * 1024;
                String saveDir = application.getRealPath("data");
                File f = new File(saveDir);
                f.mkdirs();                                                //context.getRealPath("users")+"\\"+to+"\\"+br
                 MultipartRequest mpr = new MultipartRequest(request, application.getRealPath("data"), limit);
                String fname = mpr.getOriginalFileName("file");
                               
                PreparedStatement st = con.prepareStatement("insert into PRODUCT_LIST values (?,?,?,?,?,?,?,?)");
                
                String pname=mpr.getParameter("pname");
                String pcat=mpr.getParameter("pcat");
                double price=Double.parseDouble(mpr.getParameter("pprice"));
                int pqua=Integer.parseInt(mpr.getParameter("pqua"));
                String des=mpr.getParameter("pdesc");
                
                SimpleDateFormat sim=new SimpleDateFormat("dd-MMM-yyyy:hh:mm:ss");
                Date d=new java.util.Date();
                String dorec=sim.format(d);
                
                
               
 
                int pid=0;
                
                 st.setInt(1, pid);
                 st.setString(2, pname);                             
                 st.setString(3, des);             
                 st.setDouble(4, price);             
                 st.setInt(5, pqua); 
                 st.setString(6, pcat);
                 st.setString(7, dorec);
                 st.setString(8, fname); 
                 
                int i = st.executeUpdate();

                if (i > 0) {
                     RequestDispatcher dispatcher = request.getRequestDispatcher("projects.jsp");
                     dispatcher.forward(request, response);
                } else {
                    out.println("not done");
                }
            }
            catch (Exception e) {
                out.print("in sql exception" + e);
            }
%>


