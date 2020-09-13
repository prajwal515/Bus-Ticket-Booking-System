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
          String flag="flag";
//          out.println(user);
//          out.println(psw);

       %>
       
       
       <% 
          try{
             
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/my_bus?zeroDateTimeBehavior=convertToNull","root","root");
            PreparedStatement ps = conn.prepareStatement("select * from admin where username=? and password=?");
            ps.setString(1,user);
            ps.setString(2,psw);
            ResultSet rs=ps.executeQuery();
            
            if(rs.next()) {
             
               response.sendRedirect("admin_home1.jsp");
            }
            else {
//             application.setAttribute("login", flag);
//                response.sendRedirect("admin_login1.jsp");
%>
           <script type="text/javascript">
               window.alert("worng username or password");
               window.location="admin_login1.jsp";
               </script>
               <%
            }
          }  
          catch(SQLException e) {
          
              e.printStackTrace();
          }
       %>
       
    </body>
</html>