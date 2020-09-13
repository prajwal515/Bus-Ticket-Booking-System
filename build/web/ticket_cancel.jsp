
<%@page import="java.sql.SQLException" %>
<%@page import="java.sql.*" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Authentication Page</title>
    </head>
    <body>
        <%
           String ticket_no = new String();
           
          
         
         
            ticket_no = request.getParameter("u");
            
       
         %>
       
       <% 
          try{
             
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/my_bus?zeroDateTimeBehavior=convertToNull","root","root");
         
           
            
           // Statement stmt=conn.createStatement();
          // String str="insert into register values('"+user_id+"','"+firstname+"',"+lastname+",'"+fathername+"','"+mothername+"',"+gender+",'"+dob+"','"+mobile+"','"+username+"','"+password+"',,'"+address+"')"; 
          // stmt.execute(str);
          
         
           String sql="delete from booked where ticket_no=?";
             PreparedStatement ps = conn.prepareStatement(sql);
             ps.setString(1,ticket_no);
            
              int i =ps.executeUpdate();
           
          
         if(i != 0) {
              %>
           <script type="text/javascript">
               window.alert("Ticket is successfully canceled");
               window.location="ticket.jsp";
               </script>
               <%
           
                
            }
            else {
%>
               <script type="text/javascript">
               window.alert("ticket is unable to cancel");
               window.location="ticket.jsp";
               </script>
               <%
           
            } 
          }catch(SQLException e) {
          
              e.printStackTrace();
          }
          
       %>
       <script type="text/javascript">
                    function alertName(){
                    alert("Successfully Registered...!");
                       } 
              </script>
    </body>
</html>
