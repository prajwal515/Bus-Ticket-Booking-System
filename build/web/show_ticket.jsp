
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html lang="en">
    
<head>
   
        <title>User Home page</title>    
         <link rel="icon" type="image/ico" href="IMG/bus-icon.png" />
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta charset="utf-8">
        <meta name="author" content="Harry Boo">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
        
        <!-- Favicons -->
        <link rel="shortcut icon" href="img/bus-icon.png">
        <link rel="apple-touch-icon" href="assets/img/apple-touch-icon.png">
        <link rel="apple-touch-icon" sizes="72x72" href="assets/img/apple-touch-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="114x114" href="assets/img/apple-touch-icon-114x114.png">
        
        <!-- Load Core CSS 
        =====================================-->
        <link rel="stylesheet" href="assets/css/core/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/core/animate.min.css">
        <link href="assets/css/main/setting.css" rel="stylesheet" type="text/css"/>
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
        
        <style>
        .nav-s {
  float: left;
  width: 15%;
  height: 600px; /* only for demonstration, should be removed */
  background:#ccc;
  padding: 20px;
  color: white;
}

/* Style the list inside the menu */


article {
  float: left;
  padding: 20px;
  width: 85%;
  background-color: #f1f1f1;
  height: 600px; /* only for demonstration, should be removed */
}

/* Clear floats after the columns */
section:after {
  content: "";
  display: table;
  clear: both;
}


       
        </style>
    </head>
    <body  id="page-top" data-spy="scroll" data-target=".navbar" data-offset="100">
        
        <!-- Page Loader
        ===================================== -->
		<div id="pageloader">
			<div class="loader-item">
                <img src="assets/img/other/puff.svg" alt="page loader">
            </div>
		</div>
     
        
        
        <!-- Navigation Area
        ===================================== -->
        <nav class="navbar navbar-pasific navbar-mp megamenu bb-solid-1 navbar-sticky">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                        <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand page-scroll" href="#page-top">
                        <img src="IMG/bus1.png" alt="logo"/>
                        
                        MY BUS
                    </a>
                </div>
        
                <div class="navbar-collapse collapse navbar-main-collapse">
                    
                    <ul class="nav navbar-nav">
                        <li class="dropdown megamenu-fw has-dropdown-menu"><a href="index.html" data-toggle="dropdown" class="dropdown-toggle color-light">Home </a>

                        </li>
                        
                        
                       
                    
                        <li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle color-light">About US </a>

                        </li>
                    
                       
                                
                               
                               
                            </ul>
                       
                    <a href="user_login1.jsp" id="buttonHire" class="button button-sm button-pasific hover-ripple-out mt10 mr10">Log Out</a>
                </div>
            </div>
        </nav>
        <section>
            <nav class="nav-s">
                <div class="bs-example">
	<ul class="nav nav-pills nav-stacked">
        <li><a href="user_home1.jsp">Booking</a></li>
        
        <li class="active"><a href="">My Ticket</a></li>
	</ul>
                </div>
            </nav>
            <article>
                <%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%
String no=request.getParameter("t");
%>
 
    <form method="post">
        

        <center> <iframe src="show.jsp?t1=<%=no%>" frameborder="0" width="600" height="510" style="background-color: #ffffff" >
                
            
            
            </iframe> </center>
   <%
   try
   {
        
       String user=session.getAttribute("msg2").toString();
       Class.forName("com.mysql.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/my_bus?zeroDateTimeBehavior=convertToNull";
       String username="root";
       String password="root";
       Connection conn=DriverManager.getConnection(url, username, password);
       PreparedStatement ps = conn.prepareStatement("select * from booked where username=? ");
       ps.setString(1,user);
            
            
       ResultSet rs=ps.executeQuery();
       
        rs.close();
        
        conn.close();
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %>
</form>
             
        
                
                
            </article>
        </section>
        
         <!-- Footer Area
        =====================================-->
        <footer id="footer" class="footer footer-one center-block pt30 ">
            <div class="container-fluid">
                <div class="row">
                   
                    <div class="col-md-12 text-center">
                        <div class="social social-one">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-google-plus"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                        
                    </div>
                    <div class="col-md-12 mt25">
                        <span class="copyright">&copy;2019. My bus.</span>
                    </div>
                </div>
                
            </div>
        </footer>

        

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

</html>

     
