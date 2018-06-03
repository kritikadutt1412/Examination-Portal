<%-- 
    Document   : adToStudRecord
    Created on : Mar 25, 2018, 4:26:03 AM
    Author     : ISHI-DISHI
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
                <td bgcolor="yellow green"><b>ROLL NUMBER</b></td>
                <td bgcolor="yellow green"><b>COURSE</b></td>
                <td bgcolor="yellow green"><b>SCORE</b></td>
             
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
     
   
           String query="select * from result1 ";
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/studform","root","ROOT");
            stmt=conn.createStatement();
            rs=stmt.executeQuery(query);
            while(rs.next()){%>
            <tr>
                <td bgcolor="orange"><%=cnt++%></td>
                <td bgcolor="orange"><%=rs.getString(1)%></td>
                <td bgcolor="orange"><%=rs.getString(2)%></td>
                <td bgcolor="orange"><%=rs.getString(3)%></td>
           
            </tr>
           <%
          
        }
    
    }catch(Exception ex){ex.printStackTrace();}
%> <a href="adminOptions.jsp">PRESS HERE TO RETURN</a>
</table></body></html>

