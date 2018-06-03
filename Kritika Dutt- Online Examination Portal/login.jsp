<%-- 
    Document   : login
    Created on : Mar 17, 2018, 11:18:54 PM
    Author     : ISHI-DISHI
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <style>
  
    
    
    #d1{
        
    top:400px;	
color:black; 			
text-align:center;			
font-family:arial;
font-weight: bold;
font-size:30px;
}
</style>
    </head>
    <body>
        
      
    
        <div id="d1">
            <img src="p.jpg" height="250px" width="100%" ></img><br><br><br>
        <form  name="flogin" action="studlogin.jsp">
User Name       :  <input type="text" name="txt_uid" placeholder="User Name" size=20>
<br><br>
Password  :   <input type="password" name="txt_pwd"  size=20>
<br><br>
<input type="submit" value="Login" name="btn_submit" >

        </form></div>
    </body>
</html>

