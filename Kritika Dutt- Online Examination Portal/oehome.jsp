<%-- 
    Document   : oehome
    Created on : Mar 22, 2018, 12:14:34 PM
    Author     : ISHI-DISHI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
    
<html>
    
<head>
       
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>JSP Page</title>
               
<style>
        
body{
	
background-color:palegoldenrod;
	
background-size: 100%;
	
font-family: Arial;
	
color: white;
         
       
        

}


#d1{
    
background-image:url(o.png);
    
width:auto;
    height:250px;
    
background-repeat: no-repeat;
    
position:relative;
    

}

.navbar{
	
text-align:center;
	
width:100%;
   	
opacity:0.8;
        
position:relative;

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
    
left:1px;
	
float: left;
	
width: 444px;
	
height: 40px;	
	
background-color:seagreen;
	
opacity:1 ;
	
line-height: 40px;
	
text-align: center;
	
font-size: 20px;
	

}

.navba ul li a{
	
text-decoration: none;
	
color: lightgreen;
	
display: grid;

}

.navbar ul li a:hover {
    
opacity:0.8;
	
background-color:lightgreen;

}

.navbar ul li ul li{
	
display: none;

}

.navbar ul li:hover ul li{
	
display:grid;

}

#d2{
    bottom:40%;
    width:100%;
    color:lightslategray;
    font-size:16px;
}

</style>

<script type="text/javascript" src="slidewebh.js">
</script>
    
</head>
    
<body> 
       
        
<div id="d1">
</div>
        
        
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
            
<p align="left"><br><br><br><br>Online assessments are based on using computer technology and the networking
ability of the Internet to deliver and score tests. Many different question formats are
available.</p>

<p align="left">Online assessments can give you instant feedback, unlike paper examinations in a
traditional classroom learning session. Automated online assessments give you the
option of taking practice tests whenever you want. Students do not always have to be
in a classroom setting to take assessments. Some assessments are Internet-based,
which allows the student to take the test at home or anywhere else he likes.</p>

<p align>Electronic assessments allow teachers to quickly evaluate the performance for the
group against the individual. Report-generating capabilities help teachers identify
learning problem areas for the group and individual students. Online assessments
take up less storage space in respect to keeping records than paper. All data can be
stored on a single server. Teachers can mix and match the question styles on exams,
including graphics and make them more interactive than paper exams. Eliminates
human error in grading.
</p>
</div>
          
</body>

</html>

