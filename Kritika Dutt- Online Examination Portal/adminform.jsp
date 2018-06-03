<%-- 
    Document   : home.jsp
    Created on : Mar 17, 2018, 9:39:16 PM
    Author     : ISHI-DISHI
--%>

<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
  body{
        
        background-size:100%;
    background-repeat:no-repeat;
     background-image:url(ad1.jpg);
    }


   
.navbar{
	text-align:center;
	width:100%;
	background:seagreen;
	opacity:0.8;
}
.navbar ul{
	margin: 0px;
	padding: 0px;
	list-style: none;
}
.navbar ul:after{
	content:"";
	clear: both;
	display:block;
}
.navbar ul li{
	float: left;
	width: 400px;
	height: 40px;	
	background-color: seagreen;
	opacity:0.8 ;
	line-height: 40px;
	text-align: center;
	font-size: 20px;
       
	
}
.navba ul li a{
	text-decoration: none;
	color: lightgreen;
	display: green;
}
.navbar ul li a:hover{
	background-color: lightgreen;
}

.navbar ul li ul li{
	display: none;
}
.navbar ul li:hover ul li{
	display: grid;
        
}
#d1{
    top:200;
    position:relative;
    font-size:40px;
color:black; 			
text-align:center;			
font-family:arial;
}
#d2{
    left:20%;
}

</style>
    </head>
    <body>
           <div class="navbar">
               <ul>
	       <li><a href="oehome.jsp" style="color:white;text-decoration:none">HOME</a></li>
               <li><a href="#" style="color:white;text-decoration:none">LOGIN AS</a>
		<ul>
	                         <li><a href="adminform.jsp" style="color:white;text-decoration:none">ADMIN</a></li>
                                <li><a href="studform2.jsp" style="color:white;text-decoration:none">STUDENT</a></li>

		</ul>
	      </li>
            
	       <li><a href="contactUs.jsp" style="color:white;text-decoration:none">CONTACT US</a></li>
               </ul>
	</div>
        
        <div id="d2">
            <BR>
            <BR><br>
            <font size="50px"text-align="center" font-family="arial "color="black"><u>ADMIN LOGIN</u></font>
		</div>
   
<div id="d1">
    <p><br>
<form method="post" >
    <font color="black"><table><tr><td  text-align="right">
                User Name:</td><td align="top"> <input type="text" name="txt_uid" placeholder="User Name" size=20  style="height:40px; width:200px">
                </td></tr>
        <tr><td  text-align="right">
                Password:</td><td align="top"><input type="password" name="txt_pwd"  placeholder="abc" size=20  style="height:40px; width:200px">
            </td></tr>
        <tr></tr></tr>
<tr>
    <td><input type="submit"  name="btn_Submit" value="Submit" style="height:30px; width:70px"></td></tr></table>
        </font>
</form>
</p>
</div>
  
   <%
     
       
      String b=request.getParameter("btn_Submit");
  
                 if(b!=null)
                 {
                      String u_id=request.getParameter("txt_uid");
    String password=request.getParameter("txt_pwd");
    
   
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=null;
     Statement stmt=null;
     ResultSet rs=null;
     
            String query="select * from adminform where u_id='"+u_id+"' and password='"+password+"'";
            
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/studform","root","ROOT");
            
            stmt=conn.createStatement();
            
            
            rs=stmt.executeQuery(query);
            
            boolean status=false;
            status=rs.next();
            session.setAttribute("Uid",u_id);
            if(status)
            {
                response.sendRedirect("adminOptions.jsp");
                
            }
             
            else
            {
                response.sendRedirect("adminLerror.jsp");
                
            }
        
        
        
    }catch(Exception ex){ex.printStackTrace();}
    
                 }
                  
                  %>
               


       
    </body>
</html>

