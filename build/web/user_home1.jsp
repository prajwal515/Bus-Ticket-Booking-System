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
  height: 500px; /* only for demonstration, should be removed */
  background:#ccc;
  padding: 20px;
  color: white;
}

/* Style the list inside the menu */


article {
  float: left;
  padding: 20px;
  width: 85%;
  background-image: url(IMG/bus11.jpg);
  

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  height: 500px; /* only for demonstration, should be removed */
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
                       
                    <a href="user_login1.jsp"  id="buttonHire" class="button button-sm button-pasific hover-ripple-out mt10 mr10">Log Out</a>
                </div>
            </div>
        </nav>
        <section>
            <nav class="nav-s">
                <div class="bs-example">
	<ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#">Booking</a></li>
        
        <li><a href="ticket.jsp">My Ticket</a></li>
	</ul>
                </div>
            </nav>
            <article>
                <div class="row">
                     <center><strong><h4><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <%
                try{
                    String data=session.getAttribute("msg1").toString();
                    
                    out.print("welcome "+data);
                    
                }
                catch(Exception e){
                    
                }
                
                %></center></strong></h4></b>
        <div class="col-lg-12 col-md-5 col-lg-offset-5 col-sm-12 col-sm-offset-12">
                    <form method="post" action="search_bus1.jsp">
                        <div class="row mt50">
                        <div class="col-md-3 col-sm-3 col-xs-6">
                            <h3 class="text-center">  
                                <%
                               
                                %>
                                
                                
                           Search Bus...
                            <small class="heading heading-solid center-block"> </small>
                        </h3>
                        </div>
                        </div>   
                        
                        <!-- username start -->
                         <div class="row">
                        <div class="col-md-3 col-sm-2 col-xs-4">
                            <div class="form-group">
                                <input type="text" name="from" class="input-md input-rounded form-control" placeholder="From" maxlength="100" >
                            </div>
                        </div>
                         </div>
                        <!-- username end -->
                        
                         <!-- password start -->
                         <div class="row mt10">
                        <div class="col-md-3 col-sm-2 col-xs-6">
                            <div class="form-group">
                                <input type="text" name="to"  class="input-md input-rounded form-control" placeholder="To"  maxlength="100" required>
                            </div>
                            
                        </div>
                         </div>
                        <!-- password end -->
                        
                        
                      <div class="row">
                        <div class="col-md-1 col-sm-3 col-xs-6">
                         <button type="submit" class="button-3d button-lg button-pasific hover-ripple-out mt20 ml20 center-block">Search</button>
                        
                      
                        </div>
                      </div>
                       
                    </form>
                                
                        </div>
                </div>
      
            </article>
        </section>

        

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

     
