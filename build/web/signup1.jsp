<!DOCTYPE html>
<html lang="en">
    
<head>
        <title>Signup To My Bus</title>        
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta charset="utf-8">
        <meta name="author" content="Harry Boo">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
        
        <!-- Favicons -->
       <link rel="icon" type="image/ico" href="IMG/bus-icon.png" />
        
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
        
       <script>
            
        $(document).ready(function(){
            $("#calendar1").datepicker({
                minDate: +2
            });
        });
        </script>
        
    </head>
    <body  id="page-top" data-spy="scroll" data-target=".navbar" data-offset="100">
        
      
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
                        My Bus
                    </a>
                </div>
        
                <div class="navbar-collapse collapse navbar-main-collapse">
                    <ul class="nav navbar-nav">
                        <li class="dropdown megamenu-fw has-dropdown-menu"><a href="Indexpage.jsp" data-toggle="dropdown" class="dropdown-toggle color-light">Home </a>

                        </li>
                        
                        
                       
                    
                        <li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle color-light">About US </a>

                        </li>
                    
                       
                                
                                <li class="dropdown-submenu mr20" >
                                    <a href="#">Login</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="admin_login1.jsp">Admin</a></li>
                                        <li><a href="user_login1.jsp">User</a></li>
                                    </ul>
                                </li>
                               
                            </ul>
                       
                    <a href="#" id="buttonHire" class="button button-sm button-pasific hover-ripple-out mt10 mr10">Sign In</a>
                </div>
            </div>
        </nav>
        
       
        <!-- Contact Us Area
        =====================================-->
        <div id="contact" class="pt75 pb75 bt-solid-1">
            <div class="container">
                <center> <h4><b> <%
                try{
                    String data=session.getAttribute("msg").toString();
                    
                    out.print(data);
                    
                }
                catch(Exception e){
                    
                }
                
%> </b></h4> </center>
                
                <div class="row">
                    <div class="col-md-12">
                        <h3 class="text-center">                            
                          User Registration 
                            <small class="heading-desc text-lowercase">
                               Please fill all fields..!
                            </small>
                            <small class="heading heading-solid center-block"> </small>
                        </h3>
                    </div>
                </div>
                
                <div class="row mt20">
                    <form  method="post" action="signup2.jsp">
                        
                        <!--  name start -->
                        <div class="row">
                             <!--  first name start -->
                     <div class="col-md-1 col-sm-6 col-xs-9">
                         </div>
                        <div class="col-md-5 col-sm-5 col-xs-6">
                            <div class="form-group">
                                <input type="text" name="fname"  class="input-md input-rounded form-control" placeholder="first name" >
                            </div>
                        </div>
                          
                        <!-- first name end -->
                        
                        <!-- last name start -->
                        
                        <div class="col-md-5 col-sm-5 col-xs-6">
                            <div class="form-group">
                                <input type="text" name="lname"  class="input-md input-rounded form-control" placeholder="last name" maxlength="100" required>
                            </div>
                        </div>
                        <!-- last name end -->
                        </div>
                         <!--  name end -->
                          <!--gender start -->
                        <div class="row">
                            <!--male start -->
                        <div class="col-md-1 col-sm-6 col-xs-9">
                         </div>
                        <div class="col-md-5 col-sm-5 col-xs-6">                            
                            <div class="form-group ml30">
                                
                                <input type="radio" name="gender" id="R1" value="male" required>
                                <label for="R1" class=" ml30">Male</label>
                            </div>
                        </div>
                        <!-- male end -->
                        
                        <!-- female start -->
                        <div class="col-md-5 col-sm-5 col-xs-6">
                            <div class="form-group ml30">
                                 
                                <input type="radio" name="gender" id="R2" value="female" required>
                                <label for="R2" class=" ml30">Female</label>
                            </div>
                        </div>
                        <!-- female end -->
                        </div>
                        <!--gender end -->
                        
                         
                       
                        
                       
                        
                        
                        <!--age nad dob start -->
                        <div class="row pb10">
                            <!--dob  start -->
                        <div class="col-md-1 col-sm-6 col-xs-9">
                         </div>
                        <div class="col-md-5 col-sm-5 col-xs-6">                            
                            <div class="form-group">
                                <label>Date of birth:</label>
                                  </div>
                        </div>
                        <!-- dob end -->
                        
                        <!--  age start -->
                        <div class="col-md-5 col-sm-5 col-xs-6">
                            <div class="form-group">
                                
                                
                            </div>
                        </div>
                        <!-- age end -->
                        </div>
                        <!--age and dob end -->
                        
                        
                        <!--age nad dob start -->
                        <div class="row">
                            <!--dob  start -->
                        <div class="col-md-1 col-sm-6 col-xs-9">
                         </div>
                        <div class="col-md-5 col-sm-5 col-xs-6">                            
                            <div class="form-group">
                               
                                <input type="date" name="dob" class="input-md input-rounded form-control" id="calendar1" required>
                            </div>
                        </div>
                            
                        <!-- dob end -->
                        
                        <!--  age start -->
                        <div class="col-md-5 col-sm-5 col-xs-6">
                            <div class="form-group">
                                
<!--                                <input type="number" name="smob"  class="input-md input-rounded form-control" placeholder="mobile number" required>-->
                                     <input type="number" onKeyPress="if(this.value.length==10) return false;" name="smob" class="input-md input-rounded form-control"  maxlength="10" placeholder=" User Mobile : +91-xxx-xxx-xxxx" pattern="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$" required   >
                            </div>
                        </div>
                        <!-- age end -->
                        </div>
                        
                        
                         <!--contact number start -->
                        <div class="row">
                            <!--student start -->
                        <div class="col-md-1 col-sm-6 col-xs-9">
                         </div>
                        <div class="col-md-5 col-sm-5 col-xs-6">                            
                            <div class="form-group">
                                <input type="email" name="username" class="input-md input-rounded form-control" placeholder="Email address" required>
                            </div>
                        </div>
                        <!-- student end -->
                        
                        <!-- parent start -->
                        <div class="col-md-5 col-sm-5 col-xs-6">
                            <div class="form-group">
                                <input type="password" name="pass"  class="input-md input-rounded form-control" placeholder="password" required>
                               
                            </div>
                        </div>
                        <!-- parent end -->
                        </div>
                        <!--contact number end -->
                         <div class="row">
                            <!--student start -->
                        <div class="col-md-1 col-sm-6 col-xs-9">
                         </div>
                        <div class="col-md-10 col-sm-10 col-xs-12 text-center">
                            <textarea class="form-control" name="address"  rows="7" placeholder="Resedential Address" required></textarea>
                              </div>
                         </div>
                        
                        <div class="row">
                            <!--student start -->
                        <div class="col-md-2 col-sm-6 col-xs-9">
                         </div>
                             <div class="col-md-5 col-sm-10 col-xs-12 text-center">
                                 <button type="submit"  class="button-3d button-lg button-pasific hover-ripple-out mt20 center-block">sign up</button>
                        </div>
                             <div class="col-md-1 col-sm-10 col-xs-12 text-center">
                        <button type="reset"  class="button button-lg button-pasific hover-ripple-out mt20 center-block">cancel</button>
                        </div>
                         </div>
                       
                    </form>
                </div>
                
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
                        <span class="copyright">&copy;2019. My Bus.</span>
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