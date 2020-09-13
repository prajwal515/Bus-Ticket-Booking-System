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
           String firstname = new String();
           String lastname = new String();
           String gender = new String();
           Date dob = new Date();
          
           String mobile = new String();
           String username = new String();
           String password = new String();
           String address = new String();
          
        %>
       <% 
         //dob=request.getParameter("date");
            firstname = request.getParameter("fname");
         
           
          
            lastname = request.getParameter("lname");
          
           
         
             gender = request.getParameter("gender");
          
           
           
             mobile = request.getParameter("smob");
        
           
             username = request.getParameter("username");
           
           
            password = request.getParameter("pass");
           
              address = request.getParameter("address");
           
           
//          out.println(firstname);
//          out.println(lastname);
//         
//          out.println(gender);
//          
//          out.println(mobile);
//          out.println(username);
//          out.println(password);
//          out.println(address);
          
//SimpleDateFormat dateformatJava = new SimpleDateFormat("dd-MM-yyyy");
//String date_to_string=dateformatJava.format(request.getParameter("dob")); 

               
            dob = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("dob"));
            //SimpleDateFormat dateformatJava = new SimpleDateFormat("yyyy-MM-dd");
            //String date_to_string=dateformatJava.format(dob);
            
           java.sql.Date sqldob = new java.sql.Date(dob.getTime());
           
//           out.println(dob);
//           out.println(sqldob);
           //out.println(date_to_string);
         
       %>
       
       <%
          try{
             
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/my_bus?zeroDateTimeBehavior=convertToNull","root","root");
            String query="select count(*) from register";
            PreparedStatement pst1 = conn.prepareStatement(query);
           
            ResultSet rs = pst1.executeQuery();
            int user;
            String user_id ="" ;
           
            if(rs.next())
            {
                user = Integer.parseInt(rs.getString(1));
                user+=1;
                if(user<10) {
                   user_id="MS7"+new SimpleDateFormat("yy").format(new Date())+"0"+user;
                }
                else {
                   user_id="MS7"+new SimpleDateFormat("yy").format(new Date())+user;
                }
            
            }
            out.println(user_id);
            
           // Statement stmt=conn.createStatement();
          // String str="insert into register values('"+user_id+"','"+firstname+"',"+lastname+",'"+fathername+"','"+mothername+"',"+gender+",'"+dob+"','"+mobile+"','"+username+"','"+password+"',,'"+address+"')"; 
          // stmt.execute(str);
          
          
           String sql="insert into register(userid,firstname,lastname,gender,dob,mobile,username,password,address)values(?,?,?,?,?,?,?,?,?)";
             PreparedStatement ps = conn.prepareStatement(sql);
            
             
             ps.setString(1,user_id);
             ps.setString(2,firstname);
             ps.setString(3,lastname);
             ps.setString(4,gender);
             ps.setDate(5,sqldob);
             ps.setString(6,mobile);
             ps.setString(7,username);
             ps.setString(8,password);
             ps.setString(9,address);
              int i =ps.executeUpdate();
            
          
          
         if(i != 0) {
             %>
               <script type="text/javascript">
               window.alert("reguster successful....");
               window.location="signup1.jsp";
               </script>
               <%
           
          
                
            }
            else {
             %>
               <script type="text/javascript">
               window.alert("reguster unsuccessful....");
               window.location="signup1.jsp";
               </script>
               <%
           
               
            } 
          } catch(SQLException e) {
          
              out.println("this uset alredy registered go and login");
          }
          
       %>
       <script type="text/javascript">
                    function alertName(){
                    alert("Successfully Registered...!");
                       } 
              </script>
    </body>
</html>
