<%@page import="java.sql.SQLException" %>
<%@page import="java.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Authentication Page</title>
    </head>
    <body>
        
       <% 
          String user = request.getParameter("username");
          String psw = request.getParameter("pass");
  
        
          try{
             
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/my_bus?zeroDateTimeBehavior=convertToNull","root","root");
           
            PreparedStatement ps = conn.prepareStatement("select * from register where username=? and password=?");
            ps.setString(1,user);
            ps.setString(2,psw);
            ResultSet rs=ps.executeQuery();
            
           
            if(rs.next()) {
                 session.setAttribute("msg2",user);
                 session.setAttribute("msg1",rs.getString("firstname"));
               
           %>
           <script type="text/javascript">
               window.alert("successful");
               window.location="user_home1.jsp";
               </script>
               <%

            }
            else {
                %>
           <script type="text/javascript">
              window.alert("worng username or password");
               window.location="user_login1.jsp";
               </script>
               <%
            }
          }     catch(SQLException e) {
          
              e.printStackTrace();
          }
       %>
             
    </body>
</html>