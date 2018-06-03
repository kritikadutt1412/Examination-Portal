<%-- 
    Document   : adToStudRecord
    Created on : Apr 20, 2018, 12:21:42 AM
    Author     : Lipika
--%>

<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head>
    
    </head>
    <body>
        <%
            if(session.getAttribute("Uid")==null)
          {
            response.sendRedirect("adminform.jsp");
          }%>
        <table align="left" cellspacing="5" cellpadding="5"  bgcolor="white" height="100%" width="100%" >
            <tr>
                <td bgcolor="yellow green"><b>S.NO</b></td>
                <td bgcolor="yellow green"><b>FIRST NAME</b></td>
                <td bgcolor="yellow green"><b>LAST NAME</b></td>
                <td bgcolor="yellow green"><b>ROLL NO.</b></td>
                <td bgcolor="yellow green"><b>CONTACT NO.</b></td>
                <td bgcolor="yellow green"><b>ADDRESS</b></td>
                <td bgcolor="yellow green"><b>COURSE</b></td>
                </font>
        </tr>
<%
    int cnt=1;
    String c=null;
     try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=null;
     Statement stmt=null;
     ResultSet rs;
     
   
           String query="select * from studform1 order by first_name ";
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/studform","root","ROOT");
            stmt=conn.createStatement();
            rs=stmt.executeQuery(query);
            while(rs.next()){%>
            <tr>
                <td bgcolor="orange"><%=cnt++%></td>
                <td bgcolor="orange"><%=rs.getString(1)%></td>
                <td bgcolor="orange"><%=rs.getString(2)%></td>
                <td bgcolor="orange"><%=rs.getString(3)%></td>
                <td bgcolor="orange"><%=rs.getString(4)%></td>
                <td bgcolor="orange"><%=rs.getString(5)%></td>
                <td bgcolor="orange"><%=rs.getString(6)%></td>
               
            </tr>
           <%
          
        }
    
    }catch(Exception ex){ex.printStackTrace();}
%>
 <a href="adminOptions.jsp">PRESS HERE TO RETURN</a>
</table></body></html>
