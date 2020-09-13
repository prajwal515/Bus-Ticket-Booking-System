<!DOCTYPE html>
<html lang="en">
    
<head>
        <title>LOGIN PAGE</title>  
         <script src="backNoWork.js" type="text/javascript"></script>
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
<!--     <script>
        window.setTimeout(function(){
            $(".alert").fadeTo(500,0).slideUp(500, function(){
                $(this).remove();
            });
        },3000);
    </script>-->
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
                        <li class="dropdown megamenu-fw has-dropdown-menu"><a href="index1.jsp"  class="dropdown-toggle color-light">Home </a>

                        </li>
                        
                        
                       
                    
                        <li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle color-light">About US </a>

                        </li>
                    
                       
                                
                                <li class="dropdown-submenu mr20" >
                                    <a href="#">Login</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="admin_login1.jsp">Admin</a></li>
                                        <li><a href="#">User</a></li>
                                    </ul>
                                </li>
                               
                            </ul>
                       
                    <a href="signup1.jsp" id="buttonHire" class="button button-sm button-pasific hover-ripple-out mt10 mr10">Sign In</a>
                </div>
            </div>
        </nav>
        
<!--        to display error masseage-->
        <%--
                         if(application.getAttribute("login")!=null)
                         {
                     
                     %>
                    
                     <div class="alert ">
                         <p style="text-align: center;"><strong>Invalid email-id or password!</strong></p>
                     </div>
                   
                        <%
                        }
                        --%>
       
        <div class="row">
        <div class="col-lg-12 col-md-5 col-lg-offset-5 col-sm-12 col-sm-offset-12">
                    <form method="post" action="user_login2.jsp">
                        <div class="row mt50">
                        <div class="col-md-3 col-sm-3 col-xs-6">
                            <h3 class="text-center">                            
                           User Login...!
                            <small class="heading heading-solid center-block"> </small>
                        </h3>
                        </div>
                        </div>   
                        
                        <!-- username start -->
                         <div class="row">
                        <div class="col-md-3 col-sm-3 col-xs-6">
                            <div class="form-group">
                                <input type="text" name="username" class="input-md input-rounded form-control" placeholder="Username" maxlength="100" required>
                            </div>
                        </div>
                         </div>
                        <!-- username end -->
                        
                         <!-- password start -->
                         <div class="row mt10">
                        <div class="col-md-3 col-sm-3 col-xs-6">
                            <div class="form-group">
                                <input type="password" name="pass"  class="input-md input-rounded form-control" placeholder="password" maxlength="100" required>
                            </div>
                            
                        </div>
                         </div>
                        <!-- password end -->
                        
                        
                      <div class="row">
                        <div class="col-md-3 col-sm-3 col-xs-6">
                         <button type="submit"  name="login" class="button-3d button-lg button-pasific hover-ripple-out mt20 ml20 center-block">Login</button>
                         <button type="reset"   class="button-3d button-lg button-pasific hover-ripple-out mt20 ml10 center-block">Cancel</button>
                        </div>
                      </div>
                       
                       
<!-- <center><strong><h4><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <%--
                try{
                    String data=session.getAttribute("msg2").toString();
                    
                    out.print(data);
                    
                }
                catch(Exception e){
                    
                }
                
                --%></center></strong></h4></b>                          -->
                      
                       
                    </form>
                        </div>
                </div>
      
        
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