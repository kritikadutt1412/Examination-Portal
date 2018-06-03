<%-- 
    Document   : timer
    Created on : Apr 4, 2018, 11:33:05 PM
    Author     : ISHI-DISHI
--%>
 <%@ page language="java" session="true"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"
              >
        <style>
            #d1{border:40px;
    width:250px;
        background-color: yellowgreen;
   border-left: thick inset green;
    top:52px;;
    left:81%;
    position:fixed;
	     height:100%;	
font-size:30px;				
color: black;			
text-align:left;		
font-family:arial;
}
  #d{
                top:00px;
                left:25%;
                color: darkcyan;
                font-family: sans-serif;
                font-size: 30px;
                text-align:center;
                position:fixed;
            }
          

 #d2{ 
       background-image:url(Capture.PNG);   
         background-repeat:repeat;
    top:30px;
    left:00px;
    width:80%;
    position:relative;
	     height:100%;	
font-size:20px;				
color: black;			
text-align:left;		
font-family:arial;
}
#quiz-time-left{
    left:81%;
    position:fixed;
    height:40px;
    width:19%;
    background-color:yellowgreen;
    border:40px;
     border-left: thick inset green;
     }
     </style>
     </head>
     <div id="d"><center>
         Banasthali University
         Entrance Exam</center>
     </div>
     
     <div style="font-weight: bold" id="quiz-time-left"></div>
<script type="text/javascript">
var total_seconds =60*1;
var c_minutes = parseInt(total_seconds/60);
var c_seconds = parseInt(total_seconds%60);
function CheckTime(){
document.getElementById("quiz-time-left").innerHTML='Time Left: ' + c_minutes + ' minutes ' + c_seconds + ' seconds' ;
if(total_seconds <=0){
setTimeout('document.quiz.submit()',1);
    
    } else
    {
total_seconds = total_seconds -1;
c_minutes = parseInt(total_seconds/60);
c_seconds = parseInt(total_seconds%60);
setTimeout("CheckTime()",1000);
}

}
setTimeout("CheckTime()",1000);
</script>
<body>
 <form name="quiz" action ="result2.jsp" method="post">
         
        <div id="d2">
        <% 
           
String ques,op1,op2,op3,op4,cr;
String rollno=request.getParameter("txt_rno");
String opt=request.getParameter("select");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studform", "root", "ROOT");
 session.setAttribute("opt",opt);
 session.setAttribute("rollno",rollno);
PreparedStatement pst=con.prepareStatement("select ques,opt_a,opt_b,opt_c,opt_d,cor_ans from qbank2 where(ename ='"+opt+"')");
ResultSet rs=pst.executeQuery();
 int i=1;
 while(rs.next())
 {

			
                            ques=rs.getString(1);    
                            op1=rs.getString(2);
                                op2=rs.getString(3);
                                op3=rs.getString(4);
                                op4=rs.getString(5);
                                 cr=rs.getString(6);
			
                                
                                
                                 %>  
                                 <table>
                                     <tr>
                                         <td><%=i%>:<b><% out.println(ques);%></b> 
                                         </td>
                                     </tr>
                                      <tr>
                <td>A.<input type="radio" name="<%=String.valueOf(i)%>" id="ques1boxes-0" value="<%=rs.getString(2)%>"> <%=rs.getString(2)%></td></tr>
            <tr>
                <td>B.<input type="radio" name="<%=String.valueOf(i)%>" id="ques1boxes-1" value="<%=rs.getString(3)%>"> <%=rs.getString(3)%></td></tr>
            <tr>
                <td>C.<input type="radio" name="<%=String.valueOf(i)%>" id="ques1boxes-1" value="<%=rs.getString(4)%>"> <%=rs.getString(4)%></td></tr>
           <tr>
                <td>D.<input type="radio" name="<%=String.valueOf(i)%>" id="ques1boxes-1" value="<%=rs.getString(5)%>"> <%=rs.getString(5)%></td><b><hr></hr></b></tr>
           
                                 </table>
                                <% i++;
                                 if(i>10)
                                    break;%>
                    
                       
                                                 <%   } } 
catch(Exception e)
{
out.print(e);
e.printStackTrace();
}

%>
        </div><br><br><br><br>
           <input type="submit" name="btn_next" value="Submit Exam"/> 

        </form>   
<%
String b=request.getParameter("btn_next");
if(b!=null){
 RequestDispatcher d= request.getRequestDispatcher("result2.jsp");
                d.include(request, response);
                
            }%>
            <div id="d1">
                
               <center> <b><a href="oehome.jsp">EXIT</a></b> </center>
                <hr color="black"> 
                   <br><br><center><img src='clock.PNG' height='80%' width='80%'></img></center>                  

            </div>
</body>
</html>
