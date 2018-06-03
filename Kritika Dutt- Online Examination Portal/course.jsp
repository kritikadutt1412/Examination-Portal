<%-- 
    Document   : course
    Created on : Apr 20, 2018, 12:38:18 AM
    Author     : Lipika
--%>
<%@ page language="java" session="true"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration form</title>
        <script type="text/javascript">
function disable()
{
 document.onkeydown = function (e) 
 {
  return false;
 }
}
function enable()
{
 document.onkeydown = function (e) 
 {
  return true;
 }
}
</script>
        <style>
    body{
        background-image:url(Capture.PNG); 
        background-size:105%;
    background-repeat:no-repeat;
    }
#d1{
    top:0px;
   
	  
            // left:20%;
font-size:20px;				
color: black;			
text-align:left;		
font-family:arial;
}
</style>
    </head>
    <script type="text/javascript">
        window.onload=maxWindow;
        function maxWindow(){
            window.moveTo(0,0);
            if(document.all){top.window.resizeTo(screen.availWidth,scree.availHeight);}
            else if(document.layers||document.getElementById){
                if(top.window.outerHeight<screen.availHeight||top.window.outerWidth<screen.availWidth){
                    top.window.outerHeight=screen.availHeight;
                    top.window.outerWidth=screen.availWidth;
                }
            }
        }
    </script>
    <body>
        
         
        <br><br>
   
<div id="d1">
     <center><b><h1>INSTRUCTIONS</h1></b></center>
               <form name="INSTRUCTIONS"  method="post">
       <ol><li type="disc"> THERE ARE 10 QUESTIONS IN THIS TEST AND 10 MINUTES TO COMPLETE THEM ALL.</li></ol>
        <ol><li type="disc"> THERE IS A SUBMIT EXAM BUTTON AT THE BOTTOM OF THE WINDOW.</li></ol>
        <ol><li type="disc"> CLICKING THE SUBMIT EXAM BUTTON WILL DISPLAY THE RESULT.</li></ol>
        <ol><li type="disc"> THE TIME COUNTER WILL BEGIN WHEN YOU CLICK ON THE 'START' BUTTON.</li></ol>
        <ol><li type="disc"> ALL THE BEST.</ol>
       
               </form>
    <form name="myForm" method="post" >
        <table align="center" cellspacing="20px" ><tr>
                <td>Roll Number      :</b></td><td>  <input type="text" name="txt_rno" placeholder="123" size="20" style="height:50px; width:200px "required ></td></tr>
            <tr><td>Select Course:</b></td>
                <td> <select name="select"> 
                        <option value=""required> </option>  <option value="b.tech">b.tech</option><option value="b.ca"style="width:200px">b.ca</option><option value="b.sc">b.sc</option>
                    </select></td></tr>
            <tr><td></td><td><input type="submit" value="OK" name="btn_submit" style="height:50px; width:70px ;" onSubmit="disable();"/></td></tr></table>
       
       

        <br><br><br><br>
           

    </form>
    
<% if(request.getParameter("btn_submit")!=null){
    String rollno=request.getParameter("txt_rno");
    int rno=Integer.parseInt(rollno);
     String opt=request.getParameter("select");
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=null;
     Statement stmt=null;
     ResultSet rs=null;
     
    
     
           String query="select * from studform1 where roll_no='"+rno+"' and course='"+opt+"'";
            
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/studform","root","ROOT");
            
            stmt=conn.createStatement();
            
            
            rs=stmt.executeQuery(query);
            
            boolean status=false;
            status=rs.next();
            
            if(status)
            {
               if((rno%2)==0){
                     RequestDispatcher d= request.getRequestDispatcher("ques1.jsp");
                d.forward(request, response);
                }
                else{
                 RequestDispatcher d= request.getRequestDispatcher("ques2.jsp");
                d.forward(request, response);
               }
            }
          
            else
            {
               response.sendRedirect("courseError.jsp");
               
            }
            
                
        
        
        
    }catch(Exception ex){ex.printStackTrace();}
}
    
    
    
    %>
</div>
</body>
</html>