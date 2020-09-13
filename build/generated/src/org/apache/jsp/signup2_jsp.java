package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class signup2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Authentication Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

           String firstname = new String();
           String lastname = new String();
           String gender = new String();
           Date dob = new Date();
          
           String mobile = new String();
           String username = new String();
           String password = new String();
           String address = new String();
          
        
      out.write("\n");
      out.write("       ");
 
         
            firstname = request.getParameter("fname");
         
           
          
            lastname = request.getParameter("lname");
          
           
         
             gender = request.getParameter("gender");
          
           
           
             mobile = request.getParameter("smob");
        
           
             username = request.getParameter("username");
           
           
            password = request.getParameter("pass");
           
              address = request.getParameter("address");
           
           
//          out.println(firstname);
//          out.println(lastname);
//         
//          out.println(gender);
//          
//          out.println(mobile);
//          out.println(username);
//          out.println(password);
//          out.println(address);
          
SimpleDateFormat dateformatJava = new SimpleDateFormat("dd-mm-yyyy");
String date_to_string=dateformatJava.format("dob"); 

               
//            dob = new SimpleDateFormat("yyyy-mm-dd").parse(request.getParameter("dob"));
//           java.sql.Date sqldob = new java.sql.Date(dob.getTime());
           
           out.println(dob);
           //out.println(sqldob);
           out.println(date_to_string);
         
       
      out.write("\n");
      out.write("       \n");
      out.write("       ");
      out.write("\n");
      out.write("       <script type=\"text/javascript\">\n");
      out.write("                    function alertName(){\n");
      out.write("                    alert(\"Successfully Registered...!\");\n");
      out.write("                       } \n");
      out.write("              </script>\n");
      out.write("    </body>\n");
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
