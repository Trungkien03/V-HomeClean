package org.apache.jsp.dashboard;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admob_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"utf-8\" />\r\n");
      out.write("        <meta\r\n");
      out.write("            name=\"viewport\"\r\n");
      out.write("            content=\"width=device-width, initial-scale=1.0, user-scalable=0\"\r\n");
      out.write("            />\r\n");
      out.write("        <title>Dreamchat - Dashboard</title>\r\n");
      out.write("\r\n");
      out.write("        <link\r\n");
      out.write("            rel=\"shortcut icon\"\r\n");
      out.write("            type=\"image/x-icon\"\r\n");
      out.write("            href=\"assets/img/favicon.png\"\r\n");
      out.write("            />\r\n");
      out.write("\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/assets/css/bootstrap.min.css\" />\r\n");
      out.write("\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/assets/css/font-awesome.min.css\" />\r\n");
      out.write("\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/assets/css/feathericon.min.css\" />\r\n");
      out.write("\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/assets/plugins/morris/morris.css\" />\r\n");
      out.write("\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/assets/css/style.css\" />\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div class=\"main-wrapper\">\r\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "sidebar.jsp", out, false);
      out.write("\r\n");
      out.write("            <div class=\"page-wrapper\">\r\n");
      out.write("                <div class=\"content container-fluid\">\r\n");
      out.write("                    <div class=\"page-header\">\r\n");
      out.write("                        <div class=\"row align-items-center\">\r\n");
      out.write("                            <div class=\"col\">\r\n");
      out.write("                                <h3 class=\"page-title\">Admob Settings</h3>\r\n");
      out.write("                                <ul class=\"breadcrumb\">\r\n");
      out.write("                                    <li class=\"breadcrumb-item\">\r\n");
      out.write("                                        <a href=\"dashboard/index.jsp\">Dashboard</a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    <li class=\"breadcrumb-item active\">Admob Settings</li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\"col-lg-12\">\r\n");
      out.write("                            <div class=\"card\">\r\n");
      out.write("                                <div class=\"card-header\">\r\n");
      out.write("                                    <h4 class=\"card-title\">Admob Inputs</h4>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"card-body\">\r\n");
      out.write("                                    <form action=\"#\">\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-form-label col-md-2\">Text Input</label>\r\n");
      out.write("                                            <div class=\"col-md-10\">\r\n");
      out.write("                                                <input type=\"text\" class=\"form-control\" />\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-form-label col-md-2\">Password</label>\r\n");
      out.write("                                            <div class=\"col-md-10\">\r\n");
      out.write("                                                <input type=\"password\" class=\"form-control\" />\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-form-label col-md-2\"\r\n");
      out.write("                                                   >Disabled Input</label\r\n");
      out.write("                                            >\r\n");
      out.write("                                            <div class=\"col-md-10\">\r\n");
      out.write("                                                <input\r\n");
      out.write("                                                    type=\"text\"\r\n");
      out.write("                                                    class=\"form-control\"\r\n");
      out.write("                                                    disabled=\"disabled\"\r\n");
      out.write("                                                    />\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-form-label col-md-2\"\r\n");
      out.write("                                                   >Readonly Input</label\r\n");
      out.write("                                            >\r\n");
      out.write("                                            <div class=\"col-md-10\">\r\n");
      out.write("                                                <input\r\n");
      out.write("                                                    type=\"text\"\r\n");
      out.write("                                                    class=\"form-control\"\r\n");
      out.write("                                                    value=\"readonly\"\r\n");
      out.write("                                                    readonly=\"readonly\"\r\n");
      out.write("                                                    />\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-form-label col-md-2\">Placeholder</label>\r\n");
      out.write("                                            <div class=\"col-md-10\">\r\n");
      out.write("                                                <input\r\n");
      out.write("                                                    type=\"text\"\r\n");
      out.write("                                                    class=\"form-control\"\r\n");
      out.write("                                                    placeholder=\"Placeholder\"\r\n");
      out.write("                                                    />\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-form-label col-md-2\">File Input</label>\r\n");
      out.write("                                            <div class=\"col-md-10\">\r\n");
      out.write("                                                <input class=\"form-control\" type=\"file\" />\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-form-label col-md-2\"\r\n");
      out.write("                                                   >Default Select</label\r\n");
      out.write("                                            >\r\n");
      out.write("                                            <div class=\"col-md-10\">\r\n");
      out.write("                                                <select class=\"form-control form-select\">\r\n");
      out.write("                                                    <option>-- Select --</option>\r\n");
      out.write("                                                    <option>Option 1</option>\r\n");
      out.write("                                                    <option>Option 2</option>\r\n");
      out.write("                                                    <option>Option 3</option>\r\n");
      out.write("                                                    <option>Option 4</option>\r\n");
      out.write("                                                    <option>Option 5</option>\r\n");
      out.write("                                                </select>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"text-end\">\r\n");
      out.write("                                            <button type=\"submit\" class=\"btn btn-primary\">\r\n");
      out.write("                                                Submit\r\n");
      out.write("                                            </button>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </form>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <script src=\"css/assets/js/jquery-3.6.0.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        <script src=\"css/assets/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        <script src=\"css/assets/plugins/slimscroll/jquery.slimscroll.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        <script src=\"css/assets/js/script.js\"></script>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
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
