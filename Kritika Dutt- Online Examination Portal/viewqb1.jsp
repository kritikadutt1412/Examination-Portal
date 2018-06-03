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
            }
            %>
        <table align="left" cellspacing="5" cellpadding="5"  bgcolor="white" height="100%" width="100%" >
            <tr>
                <td bgcolor="yellow green"><b>QID</b></td>
                <td bgcolor="yellow green"><b>QUESTION</b></td>
                <td bgcolor="yellow green"><b>OPTION A</b></td>
                <td bgcolor="yellow green"><b>OPTION B</b></td>
                <td bgcolor="yellow green"><b>OPTION C</b></td>
                <td bgcolor="yellow green"><b>OPTION D</b></td>
                <td bgcolor="yellow green"><b>CORRECT ANSWER</b></td>
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
     
   
           String query1="select * from qbank1 where ename='b.ca'";
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/studform","root","ROOT");
            stmt=conn.createStatement();
            rs=stmt.executeQuery(query1);
            while(rs.next()){%>
            <tr>
                <td bgcolor="lightblue"><%=rs.getString(1)%></td>
                <td bgcolor="lightblue"><%=rs.getString(2)%></td>
                <td bgcolor="lightblue"><%=rs.getString(3)%></td>
                <td bgcolor="lightblue"><%=rs.getString(4)%></td>
                <td bgcolor="lightblue"><%=rs.getString(5)%></td>
                <td bgcolor="lightblue"><%=rs.getString(6)%></td>
                <td bgcolor="lightblue"><%=rs.getString(7)%></td>
                <td bgcolor="lightblue"><%=rs.getString(8)%></td>
              
            </tr><%}
             String query2="select * from qbank1 where ename='b.tech'";
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/studform","root","ROOT");
            stmt=conn.createStatement();
            rs=stmt.executeQuery(query2);
            while(rs.next()){%>
            <tr>
                <td bgcolor="yellowgreen"><%=rs.getString(1)%></td>
                <td bgcolor="yellowgreen"><%=rs.getString(2)%></td>
                <td bgcolor="yellowgreen"><%=rs.getString(3)%></td>
                <td bgcolor="yellowgreen"><%=rs.getString(4)%></td>
                <td bgcolor="yellowgreen"><%=rs.getString(5)%></td>
                <td bgcolor="yellowgreen"><%=rs.getString(6)%></td>
                <td bgcolor="yellowgreen"><%=rs.getString(7)%></td>
                <td bgcolor="yellowgreen"><%=rs.getString(8)%></td>
              
            </tr><%}
             String query="select * from qbank1 where ename='b.sc'";
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/studform","root","ROOT");
            stmt=conn.createStatement();
            rs=stmt.executeQuery(query);
            while(rs.next()){%>
            <tr>
                <td bgcolor="orange"><%=rs.getString(1)%></td>
                <td bgcolor="orange"><%=rs.getString(2)%></td>
                <td bgcolor="orange"><%=rs.getString(3)%></td>
                <td bgcolor="orange"><%=rs.getString(4)%></td>
                <td bgcolor="orange"><%=rs.getString(5)%></td>
                <td bgcolor="orange"><%=rs.getString(6)%></td>
                <td bgcolor="orange"><%=rs.getString(7)%></td>
                <td bgcolor="orange"><%=rs.getString(8)%></td>
              
            </tr>
           <%
          
        }
    
    }catch(Exception ex){ex.printStackTrace();}
%>
   <a href="adminOptions.jsp">PRESS HERE TO RETURN</a>
</table></body></html>
