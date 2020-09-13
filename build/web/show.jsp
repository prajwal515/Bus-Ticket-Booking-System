<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
    
<head>
    <title>MY BUS</title>      
     <link rel="icon" type="image/ico" href="IMG/bus-icon.png" />
        
     <meta name="description" content="">
        <meta name="keywords" content="">
        <meta charset="utf-8">
        <meta name="author" content="Harry Boo">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
        
       
        <!-- Load Core CSS 
        =====================================-->
        <link rel="stylesheet" href="assets/css/core/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/core/animate.min.css">
        
        <!-- Load Main CSS 
        =====================================-->
        <link rel="stylesheet" href="assets/css/main/main.css">
        <link rel="stylesheet" href="assets/css/main/setting.css">
        <link rel="stylesheet" href="assets/css/main/hover.css">
        
        <!-- Load Magnific Popup CSS 
        =====================================-->
        <link rel="stylesheet" href="assets/css/magnific/magic.min.css">        
        <link rel="stylesheet" href="assets/css/magnific/magnific-popup.css">              
        <link rel="stylesheet" href="assets/css/magnific/magnific-popup-zoom-gallery.css">
        
        <!-- Load OWL Carousel CSS 
        =====================================-->
        <link rel="stylesheet" href="assets/css/owl-carousel/owl.carousel.css">
        <link rel="stylesheet" href="assets/css/owl-carousel/owl.theme.css">
        <link rel="stylesheet" href="assets/css/owl-carousel/owl.transitions.css">
        
      
        <link rel="stylesheet" href="assets/css/color/pasific.css">
        
        
        <link rel="stylesheet" href="assets/css/icon/font-awesome.css">
        <link rel="stylesheet" href="assets/css/icon/et-line-font.css">
        
        
        
    </head>
    <body id="page-top" data-spy="scroll" data-target=".navbar" data-offset="100">
        
       <% 

        %>
        <!-- Page Loader
        ===================================== -->
		
        
        <a href="#page-top" class="go-to-top">
            <i class="fa fa-long-arrow-up"></i>
        </a>
             
        <!-- Navigation Area
        ===================================== -->
        <nav class=" navbar-pasific navbar-mp megamenu bb-solid-1 navbar-sticky">
<!--            <div class="container-fluid">-->
<!--                <div class="navbar-header">-->
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                        <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand page-scroll" href="#page-top">
                        <img src="IMG/bus1.png" alt="logo">
                       My Bus
                    </a>
                </div>
        
                
        </nav>
        
        
        <!-- Welcome Area
        ===================================== -->
        <div id="welcome" class="pt75">
            <div class="container">
                <div class="row mb30">
                    <h3 class="text-center">                            
                        Ticket Information
                       
                        <small class="heading heading-solid center-block"> </small>
                    </h3>
                </div>
                
            </div>
        </div>
                   
        
        <!-- Portfolio Area
        ===================================== -->
        <div style="padding-left: 50px" >
           
          <%
              try
              {
             String from = request.getParameter("t1");
             Class.forName("com.mysql.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/my_bus?zeroDateTimeBehavior=convertToNull";
       String username="root";
       String password="root";
       Connection conn=DriverManager.getConnection(url, username, password);
        PreparedStatement ps = conn.prepareStatement("select * from booked where ticket_no=?" );
            ps.setString(1,from);
             ResultSet rs=ps.executeQuery();
       while(rs.next())
       {
             
            %>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <b><%=rs.getString("from1")%> ==> <%=rs.getString("to1")%></b>
                        
                        <br>
                        <br>
            <b>Ticket No:</b> <%=rs.getString("ticket_no")%>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <b> Date:  </b> <%=rs.getString("date")%> 
            <br><br>
                        
            <b>Departure time:</b> <%=rs.getString("dtime1")%>
            <br><br>
            <b>Bus no:</b> <%=rs.getString("busno")%>
            <br><br>
            <b>Bus Name:</b> <%=rs.getString("busname")%>
            <br><br>
            <b>Seat No: </b> <%=rs.getString("seatno")%>
            <br><br>
            <b>Amount: </b> <%=rs.getString("amount")%>
            <br><br>
            <b>Booked By:</b> <%=rs.getString("username")%>
             <%
       }
   %>
   
   <%
        rs.close();
        
        conn.close();
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %>
            
        </div>
        <div>
            
        </div>
        
        <!-- Footer Area
        =====================================-->
        
        

        <!-- JQuery Core
        =====================================-->
        <script src="assets/js/core/jquery.min.js"></script>
        <script src="assets/js/core/bootstrap.min.js"></script>
        
        <!-- Magnific Popup
        =====================================-->
        <script src="assets/js/magnific-popup/jquery.magnific-popup.min.js"></script>
        <script src="assets/js/magnific-popup/magnific-popup-zoom-gallery.js"></script>
        
        <!-- Progress Bars
        =====================================-->
        <script src="assets/js/progress-bar/circle-progress.js"></script>
        <script src="assets/js/progress-bar/circle-progress-main.js"></script>
        
        <!-- JQuery Main
        =====================================-->
        <script src="assets/js/main/jquery.appear.js"></script>
        <script src="assets/js/main/isotope.pkgd.min.js"></script>
        <script src="assets/js/main/parallax.min.js"></script>
        <script src="assets/js/main/jquery.countTo.js"></script>
        <script src="assets/js/main/owl.carousel.min.js"></script>
        <script src="assets/js/main/jquery.sticky.js"></script>
        <script src="assets/js/main/ion.rangeSlider.min.js"></script>
        <script src="assets/js/main/imagesloaded.pkgd.min.js"></script>
        <script src="assets/js/main/main.js"></script>     
        
        <!-- Google Map
        =====================================-->
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
        <script src="assets/js/main/googlemap.js"></script>        
        
    </body>

<!-- Mirrored from pasific.myboomedia.com/mp-index-freelancer-2.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 15 Nov 2016 10:57:03 GMT -->
</html>