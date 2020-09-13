<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=${encoding}"></head>

<%@page import="java.io.File"%>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.*"%>

<%@ page language="java" contentType="application/pdf; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
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
%>
</html>