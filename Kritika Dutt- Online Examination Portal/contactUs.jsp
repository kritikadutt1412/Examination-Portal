<%-- 
    Document   : contactUs
    Created on : Apr 20, 2018, 12:37:20 AM
    Author     : Lipika
--%>

<html>
<head>
            <style>
 
    body{top:20%;
         background-image:url('cnt.jpg');
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
    background-color: gray;
    top:90px;opacity:0.9;
    position:relative;
   left:20%;
   width:60%;
    font-size:40px;
    font-weight:bold;
color:black; 			
text-align:center;			
font-family:arial;
}
#d2{
    
    opacity: 1;
    position: relative;
   width:20%;
    
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
             
	       <li><a href="#" style="color:white;text-decoration:none">CONTACT US</a></li>
              </ul>
	</div>
       
        
    <div id="d1"><br>
<h1><center><font size="20">CONTACT US</font></center></h1>
<center>

 <table border="0" cellspacing="0" cellpadding="0" style="height: 209px; width: 68%;  font-family: Garamond;">
    <tr>
       <td class="auto-style2" align="left">         <b> Prof. Aditya Shastri</b><br />
&nbsp;Vice-Chancellor<br />
&nbsp;Phone:228787<br />
&nbsp;Email-id: saditya@banasthali.ac.in
       </td>
	   <td class="auto-style4" align="left">           <b>Mr. H.L.Mittal</b> 
                     <br />
           Addl. Registrar
       (Academic & Exams)
                     <br />
           Phone:228950
                     <br />
           Email-id: mittal_hl@yahoo.co.in
</td>
        </tr>
       <tr>
           <td class="auto-style3" align="left"><b>Dean Administration</b><br />
              Phone no:228456
               <br />
              Email-id:
               deanadmin@banasthali.ac.in

           </td>
            <td align="left"><b>Prof. Dharam Kishore</b>
                <br />
                Phone no:228456<br />
Email-id-id:kishoredharma@yahoo.co.in

           </td>
       </tr>
    </table>
    </div>
    <br><br><br><br>
    <br><br>
    <div id="d2">
    <font size="5px">
    <a align="right" href="meetdev.jsp">Meet the developers....</a></font></div>
</body>
</html>