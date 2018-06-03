
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    
    String u_id=request.getParameter("txt_uid");
    String password=request.getParameter("txt_pwd");
    String b=null;
    b=request.getParameter("btn_submit");
   
    
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=null;
     Statement stmt=null;
     ResultSet rs=null;
     
    
      if(b!=null)
        {
            String query="select * from studlogin where u_id='"+u_id+"' and pwd='"+password+"'";
            
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/studform","root","ROOT");
            
            stmt=conn.createStatement();
            
            
            rs=stmt.executeQuery(query);
            
            boolean status=false;
            status=rs.next();
             
            if(status)
            {
                response.sendRedirect("course.jsp");
                
            }
            
            else
            {
               response.sendRedirect("loginerror.jsp");
               
            }
            
                
        }
        
        
    }catch(Exception ex){ex.printStackTrace();}
    
    
    
    
    %>
    
        