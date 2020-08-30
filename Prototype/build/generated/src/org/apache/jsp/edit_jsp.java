package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Model.User;

public final class edit_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\"/>\n");
      out.write("        <title>Edit Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            User user = (User)session.getAttribute("user");
            String updated = (String)session.getAttribute("updated");
        
      out.write("\n");
      out.write("       <center>     \n");
      out.write("          \n");
      out.write("          \n");
      out.write("        <h1 class=\"header\" align=\"center\">Edit User Account<span>");
      out.print((updated != null? updated : ""));
      out.write("</span></h1>\n");
      out.write("        \n");
      out.write("        <div class=\"regbox\"><br>\n");
      out.write("        <form method=\"post\" action=\"EditServlet\">\n");
      out.write("            <table>\n");
      out.write("                <tr><td>Confirm Your Current User ID</td><td><input type=\"text\"  name=\"userId\" required=\"true\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.userId}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></td></tr><tr><td></td></tr><tr></tr>\n");
      out.write("                <tr><td>First Name:</td><td><input type=\"text\"  name=\"name\" required=\"true\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.firstname}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></td></tr>\n");
      out.write("                <tr><td>Last Name:</td><td><input type=\"text\"  name=\"name\" required=\"true\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.lastname}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></td></tr>\n");
      out.write("                <tr><td>Email:</td><td><input type=\"text\"  name=\"email\" required=\"true\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.email}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></td></tr>\n");
      out.write("                <tr><td>Password:</td><td><input type=\"password\"  name=\"password\" required=\"true\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.password}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></td></tr>\n");
      out.write("                <tr><td>Location:</td><td><input type=\"text\"  name=\"address\" required=\"true\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.location}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></td></tr>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                    </td></tr>\n");
      out.write("                <tr><td></td><td><input type=\"submit\" value=\"Update\"></td></tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("        </div>\n");
      out.write("                    <a href=\"index.html\" >Main page</a>  \n");
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
