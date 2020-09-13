package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.File;
import java.io.*;
import javax.servlet.*;

public final class print_005fticket_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("application/pdf; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${encoding}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></head>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    response.reset();
    response.setContentType("application/pdf");
    File file = new File("D:\\TNWRD_Documents\\CHAPTER_II.pdf");
    response.setHeader("Content-Type", "application/pdf");
    response.setHeader("Content-Disposition",
            "inline;filename=Saba_PhBill.pdf");
    response.setContentLength((int) file.length());
    response.setHeader("Content-Type",
            getServletContext().getMimeType(file.getName()));
    response.setHeader("Content-Length", String.valueOf(file.length()));
    //OPen an input stream to the file and post the file contents thru the
    //servlet output stream to the browser
    FileInputStream in = new FileInputStream(file);
    ServletOutputStream outs = response.getOutputStream();
    response.setContentLength(in.available());
    byte[] buf = new byte[8192];
    int c = 0;
    try {
        while ((c = in.read(buf, 0, buf.length)) > 0) {
            //System.out.println("size:"+c);
            outs.write(buf, 0, c);
            out.write(outs.toString());
        }

    } catch (IOException ioe) {
        ioe.printStackTrace(System.out);
    } finally {
        outs.flush();
        outs.close();
        in.close();
    }

      out.write("\n");
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
