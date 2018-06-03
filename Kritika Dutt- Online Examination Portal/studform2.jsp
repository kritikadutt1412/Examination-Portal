<%-- 
    Document   : studform2
    Created on : Mar 23, 2018, 8:14:28 PM
    Author     : ISHI-DISHI
--%>
<%@page import="javax.swing.JOptionPane"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration form</title>
        <style>
 
    body{top:20%;
         background-image:url('banner3.PNG');
        background-size:100%;
    background-repeat:no-repeat;
      
        
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
    top:100;
    position:relative;
    font-size:30px;		
color:black; 			
text-align:center;			
font-family:arial;
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
       
        <div><br><br><br><br>
            <font size="8px" color="black" text-align="right" font-family="arial"><center><u>
                    STUDENT DETAILS</u></center></font>
		</div>
        <br><br><br>
<div id="d1">
    <form  name="myForm" method="post" ><table align="center"><tr>
          
                <td align="left">First Name    :</td><td><input type="text" name="txt_first" placeholder="First Name" size=20 required> </td></tr>

<tr><td align="left">Last Name     :</td><td><input type="text" name="txt_last"  placeholder="Last Name" size=20 required></td></tr>

<tr><td align="left">Roll Number   :</td><td><input type="text" name="txt_rno" placeholder="123" size="20" required></td></tr>

<tr><td align="left">Course        :</td><td><select name="select">   <option value=""></option> <option value="b.tech">b.tech</option>    <option value="b.ca">b.ca</option>    <option value="b.sc">b.sc</option></select></td></tr>


<tr><td align="left">Contact Number:</td><td><input type="text" name="txt_cno"  placeholder="Enter 10 digit number" size=20 required></td></tr>

<tr><td align="left">Address:</td><td>  <textarea name="txt_add" rows=4 cols=20 wrap required>
</textarea></td></tr>
              
<tr></tr><tr><td><input type="submit" value="Submit" name="btn_submit" style="height:50px;width:70px" ></td></tr>
        </table>
</form>

        <%       
    try
    {
     Class.forName("com.mysql.jdbc.Driver");
      Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/studform","root","ROOT");
     
   if(conn!=null)
   {      String roll_no=request.getParameter("txt_rno");
         int rno=Integer.parseInt(roll_no);
        Class.forName("com.mysql.jdbc.Driver");
     Statement stmt=null;
     ResultSet rs=null;
     String query="select * from studform1 where roll_no='"+rno+"'"; 
     stmt=conn.createStatement();
            rs=stmt.executeQuery(query);
            
            boolean status=false;
            status=rs.next();
            
            if(status)
            {
            response.sendRedirect("check_rno.jsp");
            }
            else{
         
           RequestDispatcher d= request.getRequestDispatcher("studDb.jsp");
                d.forward(request, response);
                
            }
   }
    } catch(Exception ex){ex.printStackTrace();}%>
    
</div>


    </body>
</html>
