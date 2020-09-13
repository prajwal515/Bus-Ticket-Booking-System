
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
           String dtime=new String();
           String atime=new String();
           String from = new String();
           String to = new String();
           String type = new String();
           String distance = new String();
           String chargeamount= new String();
           String noseats=new String();
          
        %>
       <% 
         
            busname = request.getParameter("busname");
         
           
          
            busno = request.getParameter("busno");
          
           
         
             dtime = request.getParameter("dtime");
          
           
           
             atime = request.getParameter("atime");
        
           
             from = request.getParameter("from");
           
           
            to = request.getParameter("to");
           
              type = request.getParameter("type");
              
              distance = request.getParameter("distance");
              
              chargeamount = request.getParameter("chargeamount");
           
              noseats= request.getParameter("noseats");

              
          out.println("this bus number is alradey added or connection error");
           
               
          
           
           
         %>
       
       <% 
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/my_bus?zeroDateTimeBehavior=convertToNull","root","root");
          
            ResultSet rs;
            try{

          
           String sql="insert into bus(busname,busno,dtime,atime,fromstop,tostop,bustype,distance,chargeamount,seats)values(?,?,?,?,?,?,?,?,?,?)";
             PreparedStatement ps = conn.prepareStatement(sql);
            
             
             ps.setString(1,busname);
             ps.setString(2,busno);
             ps.setString(3,dtime);
             ps.setString(4,atime);
             ps.setString(5,from);
             ps.setString(6,to);
             ps.setString(7,type);
             ps.setString(8,distance);
             ps.setString(9,chargeamount);
             ps.setString(10, noseats);
             ps.executeUpdate();
          }
              catch(SQLException e) {
          
              e.printStackTrace();
          }
          try {
              Integer n = Integer.valueOf(noseats);
              int i;
              for(i=1;i<=n;i++){
               String sql="insert into bookseats(busno,busname,fromstop,tostop,seatno)values(?,?,?,?,?)";
             PreparedStatement ps = conn.prepareStatement(sql);
            
             
             ps.setString(1,busno);
             ps.setString(2,busname);
             ps.setString(3,from );
             ps.setString(4,to);
             ps.setInt(5,i);
             
             int j =ps.executeUpdate();
            
              
          
         
              }
          }
          
              catch(SQLException e) {
          
              e.printStackTrace();
          }
          int j=1;
          if(j !=0) {
            %>
           <script type="text/javascript">
               window.alert("successful added");
               window.location="add_bus1.jsp";
               </script>
               <%
                
                
            }
            else {
              %>
           <script type="text/javascript">
               window.alert("unable to added");
               window.location="add_bus1.jsp";
               </script>
               <%
            } 
          
          
       %>
       <script type="text/javascript">
                    function alertName(){
                    alert("Successfully Registered...!");
                       } 
              </script>
    </body>
</html>
