<%-- 
    Document   : admindb
    Created on : Apr 19, 2018, 11:56:50 PM
    Author     : Lipika
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
    String u_id=request.getParameter("txt_uid");
    String password=request.getParameter("txt_pwd");
    String b=null;
    b=request.getParameter("btn_Submit2");
    
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=null;
     Statement stmt=null;
     ResultSet rs=null;
     
    
      if(b!=null)
        {
            String query="select * from adminform where u_id='"+u_id+"' and password='"+password+"'";
            
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/studform","root","ROOT");
            
            stmt=conn.createStatement();
            
            
            rs=stmt.executeQuery(query);
            
            boolean status=false;
            status=rs.next();
            
            if(status)
            {
                response.sendRedirect("adminOptions.jsp");
                
            }
            
            else
                response.sendRedirect("adminLerror.jsp");
        }
        
        
    }catch(Exception ex){ex.printStackTrace();}
    
    
    
    
    %>
        


