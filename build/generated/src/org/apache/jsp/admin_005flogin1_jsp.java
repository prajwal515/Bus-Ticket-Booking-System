package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_005flogin1_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    \n");
      out.write("<head>\n");
      out.write("<!--     <script type=\"text/javascript\">\n");
      out.write("function showAlert(){\n");
      out.write("alert(\"Hi This is Simple alert\");\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("onclick=\"showAlert()\"-->\n");
      out.write("        <title>LOGIN PAGE</title>    \n");
      out.write("<!--         <script src=\"backNoWork.js\" type=\"text/javascript\"></script>-->\n");
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
      out.write("        \n");
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
      out.write("       \n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <script>\n");
      out.write("        window.setTimeout(function(){\n");
      out.write("            $(\".alert\").fadeTo(500,0).slideUp(500, function(){\n");
      out.write("                $(this).remove();\n");
      out.write("            });\n");
      out.write("        },3000);\n");
      out.write("    </script>\n");
      out.write("    <body  id=\"page-top\" data-spy=\"scroll\" data-target=\".navbar\" data-offset=\"100\">\n");
      out.write("         ");

            response.setHeader("Pragma","no-cache");
            response.setHeader("Cache-Control", "no-store");
            response.setHeader("Expires","0");
            response.setDateHeader("Expires", -1);
            session.invalidate();
        
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <!-- Page Loader\n");
      out.write("        ===================================== -->\n");
      out.write("\t\t<div id=\"pageloader\">\n");
      out.write("\t\t\t<div class=\"loader-item\">\n");
      out.write("                <img src=\"assets/img/other/puff.svg\" alt=\"page loader\">\n");
      out.write("            </div>\n");
      out.write("\t\t</div>\n");
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
      out.write("                        <li class=\"dropdown megamenu-fw has-dropdown-menu\"><a href=\"index1.jsp\"  class=\"dropdown-toggle color-light\">Home </a>\n");
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
      out.write("                                <li class=\"dropdown-submenu mr20\" >\n");
      out.write("                                    <a href=\"#\">Login</a>\n");
      out.write("                                    <ul class=\"dropdown-menu\">\n");
      out.write("                                        <li><a href=\"#\">Admin</a></li>\n");
      out.write("                                        <li><a href=\"user_login1.jsp\">User</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </li>\n");
      out.write("                               \n");
      out.write("                            </ul>\n");
      out.write("                       \n");
      out.write("                    <a href=\"signup1.jsp\" id=\"buttonHire\" class=\"button button-sm button-pasific hover-ripple-out mt10 mr10\">Sign In</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        \n");
      out.write("       \n");
      out.write("        <div class=\"row\">\n");
      out.write("        <div class=\"col-lg-12 col-md-5 col-lg-offset-5 col-sm-12 col-sm-offset-12\">\n");
      out.write("                 <form method=\"post\" action=\"admin_login2.jsp\">\n");
      out.write("                        <div class=\"row mt50\">\n");
      out.write("                        <div class=\"col-md-3 col-sm-3 col-xs-6\">\n");
      out.write("                            <h3 class=\"text-center\">                            \n");
      out.write("                           Admin Login...!\n");
      out.write("                            <small class=\"heading heading-solid center-block\"> </small>\n");
      out.write("                        </h3>\n");
      out.write("                        </div>\n");
      out.write("                        </div>\n");
      out.write("                     ");

                         if(application.getAttribute("login")!=null)
                         {
                     
                     
      out.write("\n");
      out.write("                     <div class=\"alert alert-danger alert-dismissable\">\n");
      out.write("                         <p style=\"text-align: center;\"><strong>Invalid email-id or password!</strong></p>\n");
      out.write("                     </div>\n");
      out.write("                        ");

                        }
                        
      out.write("\n");
      out.write("                        <!-- username start -->\n");
      out.write("                         <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-3 col-sm-3 col-xs-6\">\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <input type=\"text\" name=\"username\" class=\"input-md input-rounded form-control\" placeholder=\"Username\" maxlength=\"100\" required>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                         </div>\n");
      out.write("                        <!-- username end -->\n");
      out.write("                        \n");
      out.write("                         <!-- password start -->\n");
      out.write("                         <div class=\"row mt10\">\n");
      out.write("                        <div class=\"col-md-3 col-sm-3 col-xs-6\">\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <input type=\"password\" name=\"pass\"  class=\"input-md input-rounded form-control\" placeholder=\"password\" maxlength=\"100\" required>\n");
      out.write("                            </div>\n");
      out.write("                            \n");
      out.write("                        </div>\n");
      out.write("                         </div>\n");
      out.write("                        <!-- password end -->\n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                      <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-3 col-sm-3 col-xs-6\">\n");
      out.write("                             <button type=\"submit\" class=\"button-3d button-lg button-pasific hover-ripple-out mt20 ml20 center-block\" >Login</button>\n");
      out.write("                         <button type=\"reset\"   class=\"button-3d button-lg button-pasific hover-ripple-out mt20 ml10 center-block\">Cancel</button>\n");
      out.write("                      \n");
      out.write("                        </div>\n");
      out.write("                      </div>\n");
      out.write("                       \n");
      out.write("                    </form>\n");
      out.write("                        </div>\n");
      out.write("                </div>\n");
      out.write("      \n");
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
