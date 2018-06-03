<%-- 
    Document   : adminOptions
    Created on : Apr 20, 2018, 12:03:25 AM
    Author     : Lipika
--%>

<%-- 
    Document   : adminOptions
    Created on : Mar 25, 2018, 3:54:56 AM
    Author     : ISHI-DISHI
--%>

    <%@ page language="java" session="true"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <style>
       body{
    
       // background-size:100%;
    background-color:palegoldenrod;
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
	width: 300px;
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
#a1{
        //background-image:url(14.PNG);
        
        top:100px;
        //height:700px;
        //width:800px;
        position:absolute;
        background-repeat:no-repeat;
        
}
    #d1{
        
   top:92px;
   left:520px;
    position:absolute;
    	font-size:22px;
        font-weight:bold;
color:black; 			
text-align:left;			
font-family:arial;
}
</style>
    </head>
    
    <body>
        <%
          if(session.getAttribute("Uid")==null)
          {
            response.sendRedirect("adminform.jsp");
          }
            %>
        
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
               <li><a href="logout.jsp" style="color:white;text-decoration:none">LOG OUT</a></li>
	</ul>
	</div>
	</div>
        <div id="a1" ><br> <table  height="335px"><tr><td rowspan="6"><img src="14.PNG"  height="335px" width="500px"></td></tr></table>
        </div>
        <div id="d1">
            <form  method="post" action="perform.jsp">
                <br><br>
                <input type="radio" value="View Student Database" name="name1" required />View Student Database<br><br>
                <input type="radio" value="Delete Student Database" name="name1"/>Delete Student Database<br><br>
                <input type="radio" value="Insert Questions" name="name1"/>Insert Questions<br><br>
                <input type="radio" value="QUESTION BANK 1" name="name1"/>View Question from QUESTION BANK 1<br><br>
                <input type="radio" value="QUESTION BANK 2" name="name1"/>View Question from QUESTION BANK 2<br><br>
                <input type="radio" value="View Student's Result Database" name="name1"/>View Student's Result Database<br><br><br>
               <input type="submit" name=" btn_next" value="SUBMIT"  style="height:40px; width:90px">
        </form>
       </div>
           <%
               String c= request.getParameter("btn_next");
               String e=request.getParameter("name1");
              
           if(c!=null){
              
                RequestDispatcher d= request.getRequestDispatcher("perform.jsp");
                d.forward(request, response);}
           
           %>
          
    </body>
</html>
 