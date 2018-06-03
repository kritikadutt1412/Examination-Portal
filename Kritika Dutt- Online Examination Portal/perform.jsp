<%-- 
    Document   : perform.jsp
    Created on : Mar 31, 2018, 9:31:17 PM
    Author     : ISHI-DISHI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%     String e=request.getParameter("name1");
           if(e.equals("View Student Database")){
               response.sendRedirect("adToStudRecord.jsp");        
           }
           else if(e.equals("Delete Student Database")){
               response.sendRedirect("delete.jsp");
           }
           else if(e.equals("Insert Questions")){
               response.sendRedirect("insQues.jsp");
           }
           else if(e.equals("QUESTION BANK 1")){
               response.sendRedirect("viewqb1.jsp");
           }
            else if(e.equals("QUESTION BANK 2")){
               response.sendRedirect("viewqb2.jsp");
           }
            else if(e.equals("View Student's Result Database")){
               response.sendRedirect("viewresult.jsp");
           }
           
           %>
    </body>
</html>
