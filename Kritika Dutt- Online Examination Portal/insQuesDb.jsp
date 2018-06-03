<%-- 
    Document   : insQuesDb
    Created on : Mar 31, 2018, 5:57:07 PM
    Author     : ISHI-DISHI
--%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <%
            if(session.getAttribute("Uid")==null)
          {
            response.sendRedirect("adminform.jsp");
          } 
   
    try
    {
     Class.forName("com.mysql.jdbc.Driver");
      Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/studform","root","ROOT");
     PreparedStatement stmt=null;
   if(conn!=null)
   {      String qid=request.getParameter("txt_qid");
          String ques=request.getParameter("txt_ques");
         String opt_a=request.getParameter("txt_optA");
         String opt_b=request.getParameter("txt_optB");
         String opt_c=request.getParameter("txt_optC");
         String opt_d=request.getParameter("txt_optD");
         String cor_ans=request.getParameter("txt_corans");
         String ename=request.getParameter("txt_cname");
          stmt=conn.prepareStatement("insert into qbank1(qid,ques,opt_a,opt_b,opt_c,opt_d,cor_ans,ename)values(?,?,?,?,?,?,?,?)");
            
                stmt.setString(1,qid);
                stmt.setString(2,ques);
                stmt.setString(3,opt_a);
                stmt.setString(4,opt_b);
                stmt.setString(5,opt_c);
                stmt.setString(6,opt_d);
                stmt.setString(7,cor_ans);
                stmt.setString(8,ename);
                int i=stmt.executeUpdate(); 
                if(i>0)
                {
                    i++;
                }
                  }
}
catch(Exception e)
{
out.print(e);
e.printStackTrace();
}
    
     %>
       </body>     
     <script>
       
    function test(){
        alert("DATA INSERTED SUCCESSFULLY!!");
        
    }
 </script>
<script>
        test(); //No need to put java script code inside scriptlet
        
        </script>
      
               
</html>
