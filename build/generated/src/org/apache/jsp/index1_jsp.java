package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <title>MY BUS</title>      \n");
      out.write("     <link rel=\"icon\" type=\"image/ico\" href=\"IMG/bus-icon.png\" />\n");
      out.write("        \n");
      out.write("     <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"keywords\" content=\"\">\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"author\" content=\"Harry Boo\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0\" />\n");
      out.write("        \n");
      out.write("       \n");
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
      out.write("      \n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/color/pasific.css\">\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/icon/font-awesome.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/icon/et-line-font.css\">\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body id=\"page-top\" data-spy=\"scroll\" data-target=\".navbar\" data-offset=\"100\">\n");
      out.write("        \n");
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
      out.write("        <a href=\"#page-top\" class=\"go-to-top\">\n");
      out.write("            <i class=\"fa fa-long-arrow-up\"></i>\n");
      out.write("        </a>\n");
      out.write("             \n");
      out.write("        <!-- Navigation Area\n");
      out.write("        ===================================== -->\n");
      out.write("        <nav class=\"navbar navbar-pasific navbar-mp megamenu bb-solid-1 navbar-sticky\">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-main-collapse\">\n");
      out.write("                        <i class=\"fa fa-bars\"></i>\n");
      out.write("                    </button>\n");
      out.write("                    <a class=\"navbar-brand page-scroll\" href=\"#page-top\">\n");
      out.write("                        <img src=\"IMG/bus1.png\" alt=\"logo\">\n");
      out.write("                       My Bus\n");
      out.write("                    </a>\n");
      out.write("                </div>\n");
      out.write("        \n");
      out.write("                <div class=\"navbar-collapse collapse navbar-main-collapse\">\n");
      out.write("                    <ul class=\"nav navbar-nav\">\n");
      out.write("                        <li class=\"dropdown megamenu-fw has-dropdown-menu\"><a href=\"#\" data-toggle=\"dropdown\" class=\"dropdown-toggle color-light\">Home </a>\n");
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
      out.write("                                        <li><a href=\"admin_login1.jsp\">Admin</a></li>\n");
      out.write("                                        <li><a href=\"user_login1.jsp\">User</a></li>\n");
      out.write("                                        \n");
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
      out.write("        \n");
      out.write("        <!-- Welcome Area\n");
      out.write("        ===================================== -->\n");
      out.write("        <div id=\"welcome\" class=\"pt75\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row mb30\">\n");
      out.write("                    <h3 class=\"text-center\">                            \n");
      out.write("                        Welcome to My Site\n");
      out.write("                       \n");
      out.write("                        <small class=\"heading heading-solid center-block\"> </small>\n");
      out.write("                    </h3>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("                   \n");
      out.write("        \n");
      out.write("        <!-- Portfolio Area\n");
      out.write("        ===================================== -->\n");
      out.write("        <div id=\"portfolioGrid\">\n");
      out.write("            <div class=\"pt50\">&nbsp;</div>\n");
      out.write("            <div class=\"container pb75\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("<!--                        <ul class=\"filters text-center  mt25 mb50\">\n");
      out.write("                            <li><a class=\"active\" data-filter=\"*\">All Projects</a></li>                          \n");
      out.write("                            <li><a class=\"\" data-filter=\".html\">HTMl</a></li>\n");
      out.write("                            <li><a class=\"\" data-filter=\".wordpress\">Wordpress</a></li>\n");
      out.write("                            <li><a class=\"\" data-filter=\".woocommerce\">WooCommerce</a></li>\n");
      out.write("                            <li><a class=\"\" data-filter=\".joomla\">Joomla</a></li>\n");
      out.write("                            <li><a class=\"\" data-filter=\".magento\">Magento</a></li>\n");
      out.write("                            <li><a class=\"\" data-filter=\".shopify\">Shopify</a></li>\n");
      out.write("\n");
      out.write("                        </ul>-->\n");
      out.write("                        \n");
      out.write("                        <div class=\"portfolio center-block\">\n");
      out.write("\n");
      out.write("                            <div class=\"portfolio-item col-md-4 col-sm-4 col-xs-4 wordpress woocommerce\" data-category=\"\">\n");
      out.write("                                <a href=\"IMG/bus14.jpg\" class=\"magnific-popup\">\n");
      out.write("                                    <span class=\"glyphicon glyphicon-search hover-bounce-out\"></span>\n");
      out.write("                                </a>\n");
      out.write("                                <img src=\"IMG/bus14.jpg\" alt=\"portfolio woocommerce\" class=\"img-responsive\">                                \n");
      out.write("                            </div>\n");
      out.write("                            \n");
      out.write("                            <div class=\"portfolio-item col-md-4 col-sm-4 col-xs-4 joomla html\">\n");
      out.write("                                <a href=\"IMG/bus12.jpg\" class=\"magnific-popup\">\n");
      out.write("                                    <span class=\"glyphicon glyphicon-search hover-bounce-out\"></span>\n");
      out.write("                                </a>\n");
      out.write("                                <img src=\"IMG/bus12.jpg\" alt=\"portfolio woocommerce\" class=\"img-responsive\">\n");
      out.write("                            </div>\n");
      out.write("                            \n");
      out.write("                            <div class=\"portfolio-item col-md-4 col-sm-4 col-xs-4 wordpress joomla\">\n");
      out.write("                                <a href=\"IMG/bus15.jpg\" class=\"magnific-popup\">\n");
      out.write("                                    <span class=\"glyphicon glyphicon-search hover-bounce-out\"></span>\n");
      out.write("                                </a>\n");
      out.write("                                <img src=\"IMG/bus15.jpg\" alt=\"portfolio woocommerce\" class=\"img-responsive\">\n");
      out.write("                            </div>\n");
      out.write("                            \n");
      out.write("                            <div class=\"portfolio-item col-md-4 col-sm-4 col-xs-4 html wordpress\">\n");
      out.write("                                <a href=\"IMG/bus11.jpg\" class=\"magnific-popup\">\n");
      out.write("                                    <span class=\"glyphicon glyphicon-search hover-bounce-out\"></span>\n");
      out.write("                                </a>\n");
      out.write("                                <img src=\"IMG/bus11.jpg\" alt=\"portfolio woocommerce\" class=\"img-responsive\">\n");
      out.write("                            </div>\n");
      out.write("                            \n");
      out.write("                            <div class=\"portfolio-item col-md-4 col-sm-4 col-xs-4 html joomla wordpress\">\n");
      out.write("                                <a href=\"IMG/bus13.jpg\" class=\"magnific-popup\">\n");
      out.write("                                    <span class=\"glyphicon glyphicon-search hover-bounce-out\"></span>\n");
      out.write("                                </a>\n");
      out.write("                                <img src=\"IMG/bus13.jpg\" alt=\"portfolio woocommerce\" class=\"img-responsive\">\n");
      out.write("                            </div>\n");
      out.write("                            \n");
      out.write("                            <div class=\"portfolio-item col-md-4 col-sm-4 col-xs-4 html joomla\">\n");
      out.write("                                <a href=\"IMG/bus16.jpg\" class=\"magnific-popup\">\n");
      out.write("                                    <span class=\"glyphicon glyphicon-search hover-bounce-out\"></span>\n");
      out.write("                                </a>\n");
      out.write("                                <img src=\"IMG/bus16.jpg\" alt=\"portfolio woocommerce\" class=\"img-responsive\">\n");
      out.write("                            </div>\n");
      out.write("                            \n");
      out.write("                           \n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>    \n");
      out.write("        <!-- Newsletter Area\n");
      out.write("        =====================================-->\n");
      out.write("        <div id=\"newsletter\" class=\"bg-dark2 pt75 pb75\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    \n");
      out.write("                    <div class=\"col-md-2\">\n");
      out.write("                        <h4 class=\"color-light\">\n");
      out.write("                            Newsletter\n");
      out.write("                        </h4>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <div class=\"col-md-10\">\n");
      out.write("                        <form name=\"newsletter\">\n");
      out.write("                            <div class=\"input-newsletter-container\">\n");
      out.write("                                <input type=\"text\" name=\"email\" class=\"input-newsletter\" placeholder=\"enter your email address\">\n");
      out.write("                            </div>\n");
      out.write("                            <a href=\"#\" class=\"button button-sm button-pasific hover-ripple-out\">Subscribe<i class=\"fa fa-envelope\"></i></a>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <!-- Footer Area\n");
      out.write("        =====================================-->\n");
      out.write("        <footer id=\"footer\" class=\"footer footer-one center-block pt30 \">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-6 col-md-offset-3 text-center bb-dashed-1 pb25\">\n");
      out.write("                        <h3 class=\"font-pacifico color-dark\">Thanks for visiting my site.</h3>\n");
      out.write("                    </div>\n");
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
      out.write("                        <span class=\"copyright\">&copy;2019. My Bus.</span>\n");
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
      out.write("<!-- Mirrored from pasific.myboomedia.com/mp-index-freelancer-2.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 15 Nov 2016 10:57:03 GMT -->\n");
      out.write("</html>");
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