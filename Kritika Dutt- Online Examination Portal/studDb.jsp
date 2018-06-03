<%@page import="javax.swing.JOptionPane"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%
    

    try
    {
     Class.forName("com.mysql.jdbc.Driver");
      Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/studform","root","ROOT");
     PreparedStatement stmt=null;
   if(conn!=null)
   {      String first_name=request.getParameter("txt_first");
          String last_name=request.getParameter("txt_last");
         String roll_no=request.getParameter("txt_rno");
         int rno=Integer.parseInt(roll_no);
         String course=request.getParameter("select");
         String contact_no=request.getParameter("txt_cno");
        String address=request.getParameter("txt_add");
                
            
            stmt=conn.prepareStatement("insert into studform1(first_name,last_name,roll_no,contact_no,address,course) values(?,?,?,?,?,?)");
            
                stmt.setString(1, first_name);
                stmt.setString(2, last_name);
                stmt.setInt(3, rno);
                stmt.setString(4, contact_no);
                stmt.setString(5, address);
                stmt.setString(6, course);
                int i=stmt.executeUpdate(); 
                if(i>0)
                {
                   
                    response.sendRedirect("login.jsp");
                }
                else
                {
                     //JOptionPane.showMessageDialog(null," NOT successfully Registered"); 
                    response.sendRedirect("studform2.jsp");
                }
        }else
         {
          out.println("Connection Not found");
         }
        
        
    }catch(Exception ex){ex.printStackTrace();}
    
    
    %>