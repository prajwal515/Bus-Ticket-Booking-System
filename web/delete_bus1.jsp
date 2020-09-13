<!DOCTYPE html>
<html lang="en">
    
<head>
        <title>Remove Bus</title>    
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
  width: 20%;
  height: 800px; /* only for demonstration, should be removed */
  background:#ccc;
  padding: 20px;
  color: white;
}

/* Style the list inside the menu */


article {
  float: left;
  padding: 20px;
  width: 80%;
  background-color: #f1f1f1;
  height: 800px; /* only for demonstration, should be removed */
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
                       
                    <a href="admin_login1.jsp" id="buttonHire" class="button button-sm button-pasific hover-ripple-out mt10 mr10">Log Out</a>
                </div>
            </div>
        </nav>
        <section>
            <nav class="nav-s">
                <div class="bs-example">
	<ul class="nav nav-pills nav-stacked">
        <li><a href="admin_home1.jsp">HOME</a></li>
        <li><a href="add_bus1.jsp">ADD NEW BUS</a></li>
        <li  class="active"><a href="#">REMOVE BUS</a></li>
        <li><a href="inf_bus1.jsp">ALL BUS INFORMATION</a></li>
	</ul>
                </div>
             
            </nav>
            <article>
                 <center>
                 <%
                try{
                    String data=session.getAttribute("msg").toString();
                    
                    out.print(data);
                    
                }
                catch(Exception e){
                    
                }
                
                %>
                </center> 
                 <div id="contact" class="pt15 pb75 bt-solid-1">
            <div class="container">
               
                <div class="row">
                    <div class="col-md-10">
                        <h3 >  
                             <div class="row">
                             <!--  first name start -->
                         <div class="col-md-5 col-sm-6 col-xs-9">
                         </div>
                          Remove the bus
                             </div>
<!--                            <small class="heading-desc text-lowercase">
                               Please fill all fields..!
                            </small>
                            <small class="heading heading-solid center-block"> </small>-->
                        </h3>
                    </div>
                </div>
                
                 <div class="row mt20">
                    <form  method="post" action="delete_bus2.jsp">
                        
                        <!--  name start -->
                        <div class="row">
                             <!--  first name start -->
                         <div class="col-md-3 col-sm-6 col-xs-9">
                         </div>
                        <div class="col-md-5 col-sm-5 col-xs-6">
                            <div class="form-group">
                                <input type="text" name="busname"  class="input-md input-rounded form-control" placeholder="bus name" maxlength="100" required >
                            </div>
                        </div>
                        </div>
                          
                        <!-- first name end -->
                        
                        <!-- last name start -->
                         <div class="row">
                             <div class="col-md-3 col-sm-6 col-xs-9">
                         </div>
                             
                        <div class="col-md-5 col-sm-5 col-xs-6">
                            <div class="form-group">
                                <input type="text" name="busno"  class="input-md input-rounded form-control" placeholder="bus number" maxlength="100" required>
                            </div>
                        </div>
                        <!-- last name end -->
                        </div>
                         <!--  name end -->
                        
                        
                        
                       
                        <div class="row">
                            <!--student start -->
                        <div class="col-md-3 col-sm-6 col-xs-9">
                         </div>
                             <div class="col-md-2 col-sm-10 col-xs-12 text-center">
                                 <button type="submit"  class="button-3d button-lg button-pasific hover-ripple-out mt20 center-block">REMOVE</button>
                        </div>
                             <div class="col-md-1 col-sm-10 col-xs-12 text-center">
                        <button type="reset"  class="button-3d button-lg button-pasific hover-ripple-out mt20 center-block">cancel</button>
                        </div>
                         </div>
                       
                    </form>
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

     
