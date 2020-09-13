
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
  height: 800px; /* only for demonstration, should be removed */
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
    <body  id="page-top"  data-target=".navbar" data-offset="100">
        
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
<!--                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                        <i class="fa fa-bars"></i>
                    </button>-->
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
        <li class="active"><a href="#">Booking</a></li>
        
        <li><a href="ticket.jsp">My Ticket</a></li>
	</ul>
                </div>
            </nav>
            <article>
                <%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>


    


   <%
       Class.forName("com.mysql.jdbc.Driver");
                      String url="jdbc:mysql://localhost:3306/my_bus?zeroDateTimeBehavior=convertToNull";
                      String username="root";
                      String password="root";
                      Connection conn=DriverManager.getConnection(url, username, password);
   try
   {
        
                      Statement stat=null;
                      Statement stat1=null;
                     
                      ResultSet res=null;
                      ResultSet rs=null;
                      stat = conn.createStatement();
                      stat1 = conn.createStatement();
                        String busno=request.getParameter("u");
                        //int num = Integer.parseInt(u);
                        String data="select * from bus where busno='"+busno+"'";
                        String data1="select * from bookseats where busno='"+busno+"'";
                        res = stat.executeQuery(data);
                        rs=stat1.executeQuery(data1);
                        while(res.next()){
       
   %>
             <article>
                
                
                 <div id="contact" class="pt15 pb75 bt-solid-1">
            <div class="container">
                
                <div class="row">
                    <div class="col-md-8">
                        <h3>      
                            <div class="row">               
                         <div class="col-md-6 col-sm-6 col-xs-9">
                         </div>
                          Book ticket
                            </div>
<!--                            <small class="heading-desc text-lowercase">
                               Please fill all fields..!
                            </small>
                            <small class="heading heading-solid center-block"> </small>-->
                        </h3>
                    </div>
                </div>
                
                 <div class="row mt20">
                    
                   <form  method="post" action="book_bus1.jsp">
                        
                        <!--  name start -->
                        <div class="row">
                             <!--  first name start -->
                         <div class="col-md-3 col-sm-6 col-xs-9">
                         </div>
                        <div class="col-md-5 col-sm-5 col-xs-6">
                            <div class="form-group">
                                <label><b>Bus Name:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </label>
                                <input disabled="disabled" type="text" name="busname"  class=" input-rounded" style="background-color: #f1f1f8;" value='<%=res.getString("busname")%>' readonly>
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
                                <label><b>Bus Number:</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </label>
                                <input type="text" name="busno" class="input-rounded" style="background-color: #f1f1f8;" value='<%=res.getString("busno")%>' readonly>
                            </div>
                        </div>
                        <!-- last name end -->
                        </div>
                         <!--  name end -->
                        
                        
                         
                       
                        
                       
                        
                        
                        <!--age nad dob start -->
                      
                        <!--age and dob end -->
                        
                        
                        <!--age nad dob start -->
                        <div class="row">
                            <!--dob  start -->
                        <div class="col-md-3 col-sm-6 col-xs-9">
                         </div>
                        <div class="col-md-5 col-sm-5 col-xs-6">                            
                            <div class="form-group">
                                <label><b>Departure time:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </label>
                               <input disabled="disabled" type="time" class="input-rounded" id="appt" name="dtime" style="background-color: #f1f1f8;" value='<%=res.getString("dtime")%>' readonly>
                            </div>
                        </div>
                        </div>
                        <!-- dob end -->
                        
                        
                      
                        <!--age and dob end -->
                        
                        
                        <!--age nad dob start -->
                        <div class="row">
                            <!--dob  start -->
                        <div class="col-md-3 col-sm-6 col-xs-9">
                         </div>
                        <div class="col-md-5 col-sm-5 col-xs-6">                            
                            <div class="form-group">
                                <label><b>Arrival time:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                    <input disabled="disabled" type="time" class="input-rounded" id="appt" style="background-color: #f1f1f8;" name="atime" value='<%=res.getString("atime")%>' readonly>
                            </div>
                        </div>
                        </div>
                        <!--  age start -->
                        <div class="row">
                             <div class="col-md-3 col-sm-6 col-xs-9">
                         </div>
                        <div class="col-md-5 col-sm-5 col-xs-6">
                            <div class="form-group">
                                <label><b>from :</b>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input disabled="disabled" type="text" name="from" class="input-rounded "  style="background-color: #f1f1f8;  " value='<%=res.getString("fromstop")%>' readonly>
                               
                            </div>
                        </div>
                        <!-- age end -->
                        </div>
                        
                        
                         <!--contact number start -->
                        <div class="row">
                            <!--student start -->
                        <div class="col-md-3 col-sm-6 col-xs-9">
                         </div>
                        <div class="col-md-5 col-sm-5 col-xs-6">                            
                            <div class="form-group">
                                <label><b>To:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </label>
                                <input disabled="disabled" type="text" name="to" class="input-rounded" style="background-color: #f1f1f8;" value='<%=res.getString("tostop")%>' readonly>
                            </div>
                        </div>
                        </div>
                        <!-- student end -->
                        
                        <div class="row">
                             <div class="col-md-3 col-sm-6 col-xs-9">
                         </div>
                        <div class="col-md-5 col-sm-5 col-xs-6">
                            <div class="form-group">
                                <label><b>Distance:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </label>
                                <input disabled="disabled" type="number" name="distance"  class="input-rounded" style="background-color: #f1f1f8;" value='<%=res.getString("distance")%>' readonly>
                               
                            </div>
                        </div>
                        <!-- parent end -->
                        </div>
                        
                        <div class="row">
                             <div class="col-md-3 col-sm-6 col-xs-9">
                         </div>
                        <div class="col-md-5 col-sm-5 col-xs-6">
                            <div class="form-group">
                                <label><b>Amount:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </label>
                                <input disabled="disabled" type="number" name="chargeamount"  class="input-rounded" style="background-color: #f1f1f8;" value='<%=res.getString("chargeamount")%>' readonly>
                               
                            </div>
                        </div>
                        <!-- parent end -->
                        </div>
                        <div class="row">
                             <div class="col-md-3 col-sm-6 col-xs-9">
                         </div>
                        <div class="col-md-5 col-sm-5 col-xs-6">
                            <div class="form-group">
                                <label><b>Date:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </label>
                                <input type="date" name="date"  class="input-rounded" required >
                                <%
//                                    String date = (String) request.getAttribute("date");
//                                    application.setAttribute("date", date);
                                    %>
                            </div>
                        </div>
                        <!-- parent end -->
                        </div>
                        <div class="row">
                             <div class="col-md-3 col-sm-6 col-xs-9">
                         </div>
<!--                        <div class="col-md-5 col-sm-5 col-xs-6">
                            <div class="form-group">
                                <label><b>seats Number:</b> &nbsp;&nbsp;&nbsp;&nbsp;  </label>
                                <select name="seats" >
                                                      <option value="0">Select seat number</option>
                                                      
                                                    <%--  while(rs.next()){ %>
                                                        <option value="<%= rs.getString("seatno")%>"> <%= rs.getString("seatno")%> </option>
                                                        
                                                        <% }--%> 
                                                       
                                                        </select>
                               
                            </div>
                        </div>-->
                        <!-- parent end -->
                        </div>
                       
                        <div class="row">
                            <!--student start -->
                        <div class="col-md-3 col-sm-6 col-xs-9">
                         </div>
                             <div class="col-md-2 col-sm-10 col-xs-12 text-center">
                                 <button type="submit"  class="button-3d button-lg button-pasific hover-ripple-out mt20 center-block">available seats</button>
                        </div>
                             <div class="col-md-1 col-sm-10 col-xs-12 text-center">
                        <button type="reset"  class="button-3d button-lg button-pasific hover-ripple-out mt20 center-block">cancel</button>
                        </div>
                         </div>
                       
                    </form>
                </div>
                    
                    
               
            </article>
   

   <%
       }
   %>
   </table>
   <%
        res.close();
        
        conn.close();
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %>

             
        
                
                
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

     
