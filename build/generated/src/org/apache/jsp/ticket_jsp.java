package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;

public final class ticket_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    \n");
      out.write("<head>\n");
      out.write("   \n");
      out.write("        <title>User Home page</title>    \n");
      out.write("         <link rel=\"icon\" type=\"image/ico\" href=\"IMG/bus-icon.png\" />\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"keywords\" content=\"\">\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"author\" content=\"Harry Boo\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0\" />\n");
      out.write("        \n");
      out.write("        <!-- Favicons -->\n");
      out.write("        <link rel=\"shortcut icon\" href=\"img/bus-icon.png\">\n");
      out.write("        <link rel=\"apple-touch-icon\" href=\"assets/img/apple-touch-icon.png\">\n");
      out.write("        <link rel=\"apple-touch-icon\" sizes=\"72x72\" href=\"assets/img/apple-touch-icon-72x72.png\">\n");
      out.write("        <link rel=\"apple-touch-icon\" sizes=\"114x114\" href=\"assets/img/apple-touch-icon-114x114.png\">\n");
      out.write("        \n");
      out.write("        <!-- Load Core CSS \n");
      out.write("        =====================================-->\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/core/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/core/animate.min.css\">\n");
      out.write("        <link href=\"assets/css/main/setting.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <!-- Load Main CSS \n");
      out.write("        =====================================-->\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/main/main.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/main/setting.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/main/hover.css\">\n");
      out.write("        \n");
      out.write("        <!-- Load Magnific Popup CSS \n");
      out.write("        =====================================-->\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/magnific/magic.min.css\">        \n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/magnific/magnific-popup.css\">              \n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/magnific/magnific-popup-zoom-gallery.css\">\n");
      out.write("        \n");
      out.write("        <!-- Load OWL Carousel CSS \n");
      out.write("        =====================================-->\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/owl-carousel/owl.carousel.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/owl-carousel/owl.theme.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/owl-carousel/owl.transitions.css\">\n");
      out.write("        \n");
      out.write("     \n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/color/pasific.css\">\n");
      out.write("        \n");
      out.write("       \n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/icon/font-awesome.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/icon/et-line-font.css\">\n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("        .nav-s {\n");
      out.write("  float: left;\n");
      out.write("  width: 15%;\n");
      out.write("  height: 500px; /* only for demonstration, should be removed */\n");
      out.write("  background:#ccc;\n");
      out.write("  padding: 20px;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Style the list inside the menu */\n");
      out.write("\n");
      out.write("\n");
      out.write("article {\n");
      out.write("  float: left;\n");
      out.write("  padding: 20px;\n");
      out.write("  width: 85%;\n");
      out.write("  background-color: #f1f1f1;\n");
      out.write("  height: 500px; /* only for demonstration, should be removed */\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Clear floats after the columns */\n");
      out.write("section:after {\n");
      out.write("  content: \"\";\n");
      out.write("  display: table;\n");
      out.write("  clear: both;\n");
      out.write("}\n");
      out.write("\n");
      out.write("       \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body  id=\"page-top\" data-spy=\"scroll\" data-target=\".navbar\" data-offset=\"100\">\n");
      out.write("        \n");
      out.write("        <!-- Page Loader\n");
      out.write("        ===================================== -->\n");
      out.write("\t\t<div id=\"pageloader\">\n");
      out.write("\t\t\t<div class=\"loader-item\">\n");
      out.write("                <img src=\"assets/img/other/puff.svg\" alt=\"page loader\">\n");
      out.write("            </div>\n");
      out.write("\t\t</div>\n");
      out.write("     \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <!-- Navigation Area\n");
      out.write("        ===================================== -->\n");
      out.write("        <nav class=\"navbar navbar-pasific navbar-mp megamenu bb-solid-1 navbar-sticky\">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-main-collapse\">\n");
      out.write("                        <i class=\"fa fa-bars\"></i>\n");
      out.write("                    </button>\n");
      out.write("                    <a class=\"navbar-brand page-scroll\" href=\"#page-top\">\n");
      out.write("                        <img src=\"IMG/bus1.png\" alt=\"logo\"/>\n");
      out.write("                        \n");
      out.write("                        MY BUS\n");
      out.write("                    </a>\n");
      out.write("                </div>\n");
      out.write("        \n");
      out.write("                <div class=\"navbar-collapse collapse navbar-main-collapse\">\n");
      out.write("                    \n");
      out.write("                    <ul class=\"nav navbar-nav\">\n");
      out.write("                        <li class=\"dropdown megamenu-fw has-dropdown-menu\"><a href=\"index.html\" data-toggle=\"dropdown\" class=\"dropdown-toggle color-light\">Home </a>\n");
      out.write("\n");
      out.write("                        </li>\n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                       \n");
      out.write("                    \n");
      out.write("                        <li class=\"dropdown\"><a href=\"#\" data-toggle=\"dropdown\" class=\"dropdown-toggle color-light\">About US </a>\n");
      out.write("\n");
      out.write("                        </li>\n");
      out.write("                    \n");
      out.write("                       \n");
      out.write("                                \n");
      out.write("                               \n");
      out.write("                               \n");
      out.write("                            </ul>\n");
      out.write("                       \n");
      out.write("                    <a href=\"user_login1.jsp\" id=\"buttonHire\" class=\"button button-sm button-pasific hover-ripple-out mt10 mr10\">Log Out</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        <section>\n");
      out.write("            <nav class=\"nav-s\">\n");
      out.write("                <div class=\"bs-example\">\n");
      out.write("\t<ul class=\"nav nav-pills nav-stacked\">\n");
      out.write("        <li><a href=\"user_home1.jsp\">Booking</a></li>\n");
      out.write("        \n");
      out.write("        <li class=\"active\"><a href=\"\">My Ticket</a></li>\n");
      out.write("\t</ul>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("            <article>\n");
      out.write("                \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <form method=\"post\">\n");
      out.write("\n");
      out.write("<table class=\"table\">\n");
      out.write("    <thead>\n");
      out.write("     <tr>\n");
      out.write("       <td> <b> Ticket no</b> </td>\n");
      out.write("       <td>  <b>Date</b></td>\n");
      out.write("       <td>  <b> from </b> </td>\n");
      out.write("       <td>  <b> to </b> </td>\n");
      out.write("       <td>  <b>Bus no</b></td>\n");
      out.write("       <td>  <b>seats no</b> </td>\n");
      out.write("       <td><b> cancel</b></td>\n");
      out.write("       <td><b> print</b></td>\n");
      out.write("      </tr>\n");
      out.write("    </thead>\n");
      out.write("   ");

   try
   {
        
                    String user=session.getAttribute("msg2").toString();
                    String user1="prajwal@gmail.com";
                    
                    
               
                
                
          
       
       Class.forName("com.mysql.jdbc.Driver");
       String url="jdbc:mysql://localhost:3307/my_bus?zeroDateTimeBehavior=convertToNull";
       String username="root";
       String password="root";
       Connection conn=DriverManager.getConnection(url, username, password);
       PreparedStatement ps = conn.prepareStatement("select * from booked where username=? ");
            ps.setString(1,user);
            
            
       ResultSet rs=ps.executeQuery();
       while(rs.next())
       {
   
      out.write("\n");
      out.write("   <tbody>\n");
      out.write("            <tr><td>");
      out.print(rs.getString("ticket_no") );
      out.write("</td>\n");
      out.write("            <td>");
      out.print(rs.getString("date") );
      out.write("</td>\n");
      out.write("            <td>");
      out.print(rs.getString("from1") );
      out.write("</td>\n");
      out.write("            <td>");
      out.print(rs.getString("to1") );
      out.write("</td>\n");
      out.write("            <td>");
      out.print(rs.getString("busno") );
      out.write("</td>\n");
      out.write("            <td>");
      out.print(rs.getString("busname") );
      out.write("</td>\n");
      out.write("            <td> ");
      out.print(rs.getString("seatno") );
      out.write("</td>\n");
      out.write("            <td><a href='#' class=\"button-grad-purple\">Show</a></td>\n");
      out.write("            <td><a href='ticket_cancel.jsp?u=");
      out.print(rs.getString("ticket_no") );
      out.write("' class=\"button-grad-purple\">Cancel</a></td>\n");
      out.write("            \n");
      out.write("</tr>\n");
      out.write("   </tbody>         \n");
      out.write("            \n");
      out.write("   \n");
      out.write("\n");
      out.write("   ");

       }
   
      out.write("\n");
      out.write("   </table>\n");
      out.write("   ");

        rs.close();
        
        conn.close();
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   
      out.write("\n");
      out.write("</form>\n");
      out.write("             \n");
      out.write("        \n");
      out.write("                \n");
      out.write("                \n");
      out.write("            </article>\n");
      out.write("        </section>\n");
      out.write("        \n");
      out.write("         <!-- Footer Area\n");
      out.write("        =====================================-->\n");
      out.write("        <footer id=\"footer\" class=\"footer footer-one center-block pt30 \">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                   \n");
      out.write("                    <div class=\"col-md-12 text-center\">\n");
      out.write("                        <div class=\"social social-one\">\n");
      out.write("                            <a href=\"#\"><i class=\"fa fa-facebook\"></i></a>\n");
      out.write("                            <a href=\"#\"><i class=\"fa fa-twitter\"></i></a>\n");
      out.write("                            <a href=\"#\"><i class=\"fa fa-google-plus\"></i></a>\n");
      out.write("                            <a href=\"#\"><i class=\"fa fa-linkedin\"></i></a>\n");
      out.write("                            <a href=\"#\"><i class=\"fa fa-pinterest\"></i></a>\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-12 mt25\">\n");
      out.write("                        <span class=\"copyright\">&copy;2019. My bus.</span>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("\n");
      out.write("        \n");
      out.write("\n");
      out.write("        <!-- JQuery Core\n");
      out.write("        =====================================-->\n");
      out.write("        <script src=\"assets/js/core/jquery.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/core/bootstrap.min.js\"></script>\n");
      out.write("        \n");
      out.write("        <!-- Magnific Popup\n");
      out.write("        =====================================-->\n");
      out.write("        <script src=\"assets/js/magnific-popup/jquery.magnific-popup.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/magnific-popup/magnific-popup-zoom-gallery.js\"></script>\n");
      out.write("        \n");
      out.write("        <!-- Progress Bars\n");
      out.write("        =====================================-->\n");
      out.write("        <script src=\"assets/js/progress-bar/circle-progress.js\"></script>\n");
      out.write("        <script src=\"assets/js/progress-bar/circle-progress-main.js\"></script>\n");
      out.write("        \n");
      out.write("        <!-- JQuery Main\n");
      out.write("        =====================================-->\n");
      out.write("        <script src=\"assets/js/main/jquery.appear.js\"></script>\n");
      out.write("        <script src=\"assets/js/main/isotope.pkgd.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/main/parallax.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/main/jquery.countTo.js\"></script>\n");
      out.write("        <script src=\"assets/js/main/owl.carousel.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/main/jquery.sticky.js\"></script>\n");
      out.write("        <script src=\"assets/js/main/ion.rangeSlider.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/main/imagesloaded.pkgd.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/main/main.js\"></script>     \n");
      out.write("        \n");
      out.write("        <!-- Google Map\n");
      out.write("        =====================================-->\n");
      out.write("        <script type=\"text/javascript\" src=\"https://maps.googleapis.com/maps/api/js?sensor=false\"></script>\n");
      out.write("        <script src=\"assets/js/main/googlemap.js\"></script>        \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("     \n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
