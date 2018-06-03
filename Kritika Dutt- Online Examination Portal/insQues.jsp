<%-- 
    Document   : insQues
    Created on : Apr 20, 2018, 1:06:03 AM
    Author     : Lipika
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% if(session.getAttribute("Uid")==null)
          {
            response.sendRedirect("adminform.jsp");
          }%>
        <div id="d1">
            <form method="post" >
               <table>
                   <tr>    
                       <td>QID :</td><td><input type="text" name="txt_qid" placeholder="123" size=10 required> 
                       </td></tr>
                   <tr><td>QUESTION :</td><td><textarea name="txt_ques" rows=4 cols=20 wrap required></textarea></td></tr>
<tr><td>OPTION A :</td><td><input type="text" name="txt_optA" placeholder="abc" size="50" required>
</td></tr>
<tr><td>OPTION B :</td><td><input type="text" name="txt_optB" placeholder="abc" size="50" required>
</td></tr>
 <tr><td>OPTION C :</td><td><input type="text" name="txt_optC" placeholder="abc" size="50" required>
</td></tr>
<tr><td>OPTION D :</td><td><input type="text" name="txt_optD" placeholder="abc" size="50" required>
</td></tr>
<tr><td>CORRECT ANSWER :</td><td><input type="text" name="txt_corans" placeholder="abc" size="50" required>
</td></tr>
<tr><td>COURSE NAME :</td><td><input type="text" name="txt_cname" placeholder="b.tech/b.ca/b.sc" size="10" required>
    </td></tr></table> <br><br><br>            
<center><input type="submit" value="ADD TO SET1" name="btn_submit"  >
</center>
    <br><br><br>            
<center><input type="submit" value="ADD TO SET 2" name="btn_submit2"  >
</center>
   </form>         
</div>
      <%  String z=request.getParameter("btn_submit");
       String y=request.getParameter("btn_submit2");
        String qid=request.getParameter("txt_qid");
          String ques=request.getParameter("txt_ques");
         String opt_a=request.getParameter("txt_optA");
         String opt_b=request.getParameter("txt_optB");
         String opt_c=request.getParameter("txt_optC");
         String opt_d=request.getParameter("txt_optD");
         String cor_ans=request.getParameter("txt_corans");
         String ename=request.getParameter("txt_cname");
       
      if(z!=null){
          RequestDispatcher d= request.getRequestDispatcher("insQuesDb.jsp");
                d.include(request, response);
          
      }
      else if(y!=null){
          RequestDispatcher d= request.getRequestDispatcher("insQuesDb2.jsp");
                d.include(request, response);
          
      }
      %>
      <br><br><br>     <a href="adminOptions.jsp">PRESS HERE TO RETURN</a>
    </body>
</html>
>
