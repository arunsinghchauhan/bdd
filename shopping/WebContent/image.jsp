<%@ page import="java.io.*"%>
<%@page contentType="image/gif"%>
 <%
                     OutputStream o = response.getOutputStream();
      
//String file=null;
String s1=request.getParameter("val");
//System.out.println(s1);
//String s1="Winter.jpg";
String saveDir = application.getRealPath("data");

           //               InputStream is = new FileInputStream(new File
           //("C:\\Users\\Shailesh\\Documents\\NetBeansProjects\\Music\\build\\web\\files"+"\\"+s1));
   //InputStream is = new FileInputStream(new File(""));
   InputStream is = new FileInputStream(new File
           (saveDir+"\\"+s1));        
                            byte[] buf = new byte[32 * 1024];
                 int nRead = 0;
    while( (nRead=is.read(buf)) != -1 ) {
        o.write(buf, 0, nRead);
    
    }
                              
    o.flush();
    o.close();
    //return;
    
      
%>
