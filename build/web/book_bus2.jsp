<%@page import="java.util.Random"%>
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
          
          Date dob = new Date();
          String from = new String();
          String to = new String();
          String dtime = new String();
          String atime = new String();
          String busno = new String();
          String busname = new String();
          String distance = new String();
          String amount = new String();
          String seatno = new String();
          String user = new String();
      %>
       <% 
           dob = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("date"));
           java.sql.Date sqldob = new java.sql.Date(dob.getTime());
           
           from = request.getParameter("from");
           to = request.getParameter("to");
           dtime= request.getParameter("dtime");
           atime = request.getParameter("atime");
           busno = request.getParameter("busno");
           busname = request.getParameter("busname");
           distance = request.getParameter("distance");
           amount = request.getParameter("chargeamount");
           seatno = request.getParameter("seats");
           
           out.println(from);
           out.println(to);
           out.println(dtime);
           out.println(atime);
           out.println(busno);
           out.println(busname);
           out.println(distance);
           out.println(amount);
           out.println(seatno);
           
           out.println(sqldob);
           
           
           
           
           
//           out.println(dob);
          //  java.sql.Date sqldob = new java.sql.Date(dob.getTime());
          // dob=sqldob;
          %>
 
        <center><strong><h4><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <%
                try{
                    user=session.getAttribute("msg2").toString();                 
                }
                catch(Exception e){
                    
                }
                
                %></center></strong></h4></b>
         
         %>
       
       <% 
          try{
             
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/my_bus?zeroDateTimeBehavior=convertToNull","root","root");
             String query="select count(*) from booked";
            PreparedStatement pst1 = conn.prepareStatement(query);
           
            ResultSet rs = pst1.executeQuery();
            int user1;
            String ticket_id ="" ;
           
            if(rs.next())
            {
                Random rand= new Random();
                int n=rand.nextInt(999)+100;
                user1 = Integer.parseInt(rs.getString(1));
                user1+=1;
                if(user1<1000) {
                   ticket_id="T7"+new SimpleDateFormat("dd").format(new Date())+"0"+n;
                }
                else {
                   ticket_id="T7"+new SimpleDateFormat("dd").format(new Date())+n;
                }
            
            }
            out.println(ticket_id);


          
          
           String sql="insert into booked(ticket_no,date,from1,to1,dtime1,atime1,busno,busname,distance,amount,seatno,username)values(?,?,?,?,?,?,?,?,?,?,?,?)";
             PreparedStatement ps = conn.prepareStatement(sql);
            
             
             ps.setString(1,ticket_id);
             ps.setDate(2,sqldob);
             ps.setString(3,from);
             ps.setString(4,to);
             ps.setString(5,dtime);
             ps.setString(6,atime);
             ps.setString(7,busno);
             ps.setString(8,busname);
             ps.setString(9,distance);
             ps.setString(10,amount);
             ps.setString(11,seatno);
             ps.setString(12,user);
             
             
             
              int i =ps.executeUpdate();
            
          
          
         if(i != 0) {
             %>
               <script type="text/javascript">
               window.alert("booking successful....");
               window.location="user_home1.jsp";
               </script>
               <%
           
          
                
            }
            else {
             %>
               <script type="text/javascript">
               window.alert("booking unsuccessful....");
               window.location="user_home1.jsp";
               </script>
               <%
           
               
            } 
          }catch(SQLException e) {
          
              out.println("this uset alredy registered go and login");
          }
          
       %>
      
    </body>
</html>
