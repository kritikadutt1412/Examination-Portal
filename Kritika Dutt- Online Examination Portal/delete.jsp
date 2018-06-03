<%-- 
    Document   : delete
    Created on : Apr 20, 2018, 12:41:59 AM
    Author     : Lipika
--%>

<%-- 
    Document   : delete
    Created on : Apr 4, 2018, 11:31:18 AM
    Author     : ISHI-DISHI
--%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript">
          // if(window.confirm("Are you sure?")){
             <%   if(session.getAttribute("Uid")==null)
          {
            response.sendRedirect("adminform.jsp");
          }  
        try
    {
        
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=null;
     PreparedStatement stmt,stmt1=null;
      conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/studform","root","ROOT");
    stmt=conn.prepareStatement("truncate table studform1 ");
     stmt1=conn.prepareStatement("truncate table result1 ");
            int i=stmt.executeUpdate();
            int j=stmt1.executeUpdate();
            if(i>0 && j>0)
            {
              out.println("RECORDS DELETED SUCCESSFULLY!!"); 
                
            }
           
}catch(Exception ex){ex.printStackTrace();}
        
%>
   
  function test(){
        alert("DATA DELETED SUCCESSFULLY!!");
        
    }
        test(); //No need to put java script code inside scriptlet
        </script></head>
    
    <body>
        <a href="adminOptions.jsp">PRESS HERE TO RETURN</a>
    </body>
    
       </html>
