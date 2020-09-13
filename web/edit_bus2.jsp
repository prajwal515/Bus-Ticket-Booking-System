<%-- 
    Document   : edit_bus2
    Created on : 28 May, 2019, 6:58:36 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
                      Class.forName("com.mysql.jdbc.Driver");
                      String url="jdbc:mysql://localhost:3306/my_bus?zeroDateTimeBehavior=convertToNull";
                      String username="root";
                      String password="root";
                      Connection conn=DriverManager.getConnection(url, username, password);
                      
                      PreparedStatement stmt=null;
                      
                      
                      
                        
                            String busname= request.getParameter("busname");
String busno= request.getParameter("busno");
String dtime= request.getParameter("dtime");
String atime= request.getParameter("atime");
String from= request.getParameter("from");
String to= request.getParameter("to");
String type= request.getParameter("type");
String distance= request.getParameter("distance");
String chargeamount = request.getParameter("chargeamount");
String seats = request.getParameter("noseats");




    
    String query = "update bus set busname=?,dtime=? ,atime=? ,fromstop=? ,tostop=? ,bustype=? ,distance=? ,chargeamount=?,seats=? where busno='"+ busno+"' ";
    stmt = conn.prepareStatement(query);
    stmt.setString(1, busname);
    stmt.setString(2, dtime);
    stmt.setString(3, atime);
    stmt.setString(4, from);
    stmt.setString(5, to);
    stmt.setString(6, type);
    stmt.setString(7, distance);
    stmt.setString(8, chargeamount);
    stmt.setString(9, seats);
    
    
    int p=stmt.executeUpdate();
    if(p!=0){
     %>
               <script type="text/javascript">
               window.alert("Udate successfully");
               window.location="inf_bus1.jsp";
               </script>
               <%
 

                        }
    else
    {
%>
               <script type="text/javascript">
               window.alert("unable to Udate");
               window.location="edit_bus1.jsp";
               </script>
               <%
           

        
    }
                     %>
    </body>
</html>
