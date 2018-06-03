
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            body{background-color:rosybrown;
            }
            #d3{
                background-color: black;
                color: white;
                opacity: 0.7;
                top: 20%;
                text-align: center;
                left: 30%;
                height:250px;
                width: 500px;
                position:relative;
                font-size: 20px;
                box:00px 00px 00px;
            }
        </style>
         <script>
    document.onkeydown= function(e){
        if(e.which == 122){
            return false;
        } 
    }
    </script>
            <script type="text/javascript">
document.onkeydown = function (e) 
 {
  return false;
 }
</script></head><body>
<%
    
String str[] =new String[10];
for(int i=1;i<=10;i++){
 

        str[i-1]=request.getParameter(String.valueOf(i));
      
       }


%><%

 String rollno= (String)session.getAttribute("rollno");
String opt=(String)session.getAttribute("opt");
int marks=0;
int cnt=0;
int e=0;

try
{   
    Class.forName("com.mysql.jdbc.Driver");
Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/studform", "root", "ROOT");
PreparedStatement pst=con1.prepareStatement("select cor_ans from qbank2 where ename = ?");
pst.setString(1,opt);
ResultSet rs=pst.executeQuery();
 int m=0;
 while(rs.next())
 {
   if(str[m].equals(rs.getString("cor_ans")))
   { 
             marks+=1;
             cnt+=1;
   }
 
   m++;
   if(m>9)
       break;
 }
}
catch(Exception f)
{
}
%><div id="d3"
    <br><br><br>
    <b>Number of correct answers: <%=cnt%></b>
    <br><br><b>Number of wrong answers: <%=(10-cnt)%></b><br><br>
    <center><h1><b>YOUR SCORE IS: <%=marks%></b></h1><br></div>
    <br><br><br><br><br><br><br><br><br><br><br><center>
        <form action="oehome.jsp" method="post">
            <input type="submit" name="btn_sub" value="HOME"></form></center>
<%try{
      Class.forName("com.mysql.jdbc.Driver");
      Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/studform","root","ROOT");
     PreparedStatement stmt=null;
   if(conn!=null)
   {     
          stmt=conn.prepareStatement("insert into result1(r_no,course,score)values(?,?,?)");
            
                stmt.setString(1,rollno);
                stmt.setString(2,opt);
             stmt.setString(3,String.valueOf(marks));
                int j=stmt.executeUpdate(); 
                if(j>0)
                {
                    j++;
                }
                  }
}
catch(Exception f)
{
}  
 %>  


    </body>
</html>
