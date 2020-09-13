
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
           String busname = new String();
           String busno = new String();
          
        %>
       <% 
         
            busname = request.getParameter("busname");
         
            busno = request.getParameter("busno");
        
          out.println(busname);
          out.println(busno);
         
       
         %>
       
       <% 
          try{
             
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/my_bus?zeroDateTimeBehavior=convertToNull","root","root");
         
           
            
           // Statement stmt=conn.createStatement();
          // String str="insert into register values('"+user_id+"','"+firstname+"',"+lastname+",'"+fathername+"','"+mothername+"',"+gender+",'"+dob+"','"+mobile+"','"+username+"','"+password+"',,'"+address+"')"; 
          // stmt.execute(str);
          
          String sql1="delete from booked where busno=?";
           String sql2="delete from bookseats where busname=? and busno=?";
           String sql="delete from bus where busname=? and busno=?";
             PreparedStatement ps = conn.prepareStatement(sql);
             ps.setString(1,busname);
             ps.setString(2,busno);
              int i =ps.executeUpdate();
            PreparedStatement ps1 = conn.prepareStatement(sql1);
            ps1.setString(1,busno);
              ps1.executeUpdate();
          PreparedStatement ps2 = conn.prepareStatement(sql2);
             ps2.setString(1,busname);
             ps2.setString(2,busno);
              ps2.executeUpdate();
          
         if(i != 0) {
              %>
           <script type="text/javascript">
               window.alert("bus is successfully removed");
               window.location="delete_bus1.jsp";
               </script>
               <%
           
                
            }
            else {
%>
               <script type="text/javascript">
               window.alert("bus is unable to remove");
               window.location="delete_bus1.jsp";
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
