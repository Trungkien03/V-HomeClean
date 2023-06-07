package org.apache.jsp.dashboard;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class general_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\" />\n");
      out.write("        <meta\n");
      out.write("            name=\"viewport\"\n");
      out.write("            content=\"width=device-width, initial-scale=1.0, user-scalable=0\"\n");
      out.write("            />\n");
      out.write("        <title>Dreamchat - Dashboard</title>\n");
      out.write("\n");
      out.write("        <link\n");
      out.write("            rel=\"shortcut icon\"\n");
      out.write("            type=\"image/x-icon\"\n");
      out.write("            href=\"css/assets/img/favicon.png\"\n");
      out.write("            />\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/assets/css/bootstrap.min.css\" />\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/assets/css/font-awesome.min.css\" />\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/assets/css/feathericon.min.css\" />\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/assets/plugins/morris/morris.css\" />\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/assets/css/style.css\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"main-wrapper\">\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "sidebar.jsp", out, false);
      out.write("\n");
      out.write("            <div class=\"page-wrapper\">\n");
      out.write("                <div class=\"content container-fluid\">\n");
      out.write("                    <div class=\"page-header\">\n");
      out.write("                        <div class=\"row align-items-center\">\n");
      out.write("                            <div class=\"col\">\n");
      out.write("                                <h3 class=\"page-title\">General Settings</h3>\n");
      out.write("                                <ul class=\"breadcrumb\">\n");
      out.write("                                    <li class=\"breadcrumb-item\">\n");
      out.write("                                        <a href=\"dashboard/index.jsp\">Dashboard</a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li class=\"breadcrumb-item active\">General Settings</li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row settings-tab\">\n");
      out.write("                        <div class=\"col-md-4\">\n");
      out.write("                            <div class=\"card\">\n");
      out.write("                                <div class=\"card-header all-center\">\n");
      out.write("                                    <a href=\"dashboard/general.jsp\" class=\"avatar avatar-sm me-2\"\n");
      out.write("                                       ><img\n");
      out.write("                                            class=\"avatar-img rounded-circle\"\n");
      out.write("                                            src=\"css/assets/img/profiles/avatar-01.jpg\"\n");
      out.write("                                            alt=\"User Image\"\n");
      out.write("                                            />\n");
      out.write("                                        <i class=\"fe fe-camera\"></i>\n");
      out.write("                                    </a>\n");
      out.write("                                    <h6>Seema Sisty</h6>\n");
      out.write("                                    <p>Administrator</p>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"card-body p-0\">\n");
      out.write("                                    <div class=\"profile-list\">\n");
      out.write("                                        <a href=\"#\"><i class=\"fe fe-comment-o\"></i></a>\n");
      out.write("                                        <a href=\"#\">Chat</a>\n");
      out.write("                                        <a href=\"#\" class=\"float-end\"><h5>10, 203</h5></a>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"profile-list\">\n");
      out.write("                                        <a href=\"#\"><i class=\"fe fe-phone\"></i></a>\n");
      out.write("                                        <a href=\"#\">Call</a>\n");
      out.write("                                        <a href=\"#\" class=\"float-end\"><h5>403</h5></a>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"profile-list\">\n");
      out.write("                                        <a href=\"#\"><i class=\"fe fe-disabled\"></i></a>\n");
      out.write("                                        <a href=\"#\">Blocked User</a>\n");
      out.write("                                        <a href=\"#\" class=\"float-end\"><h5>103</h5></a>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"profile-list\">\n");
      out.write("                                        <a href=\"group-history.jsp\"\n");
      out.write("                                           ><button\n");
      out.write("                                                type=\"button\"\n");
      out.write("                                                class=\"btn btn-block btn-outline-light\"\n");
      out.write("                                                >\n");
      out.write("                                                View History\n");
      out.write("                                            </button></a\n");
      out.write("                                        >\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-8\">\n");
      out.write("                            <div class=\"card\">\n");
      out.write("                                <div class=\"card-header\">\n");
      out.write("                                    <h4 class=\"card-title\">General Settings</h4>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <form action=\"#\">\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label>Name</label>\n");
      out.write("                                            <input\n");
      out.write("                                                type=\"text\"\n");
      out.write("                                                class=\"form-control\"\n");
      out.write("                                                value=\"Seemasisty\"\n");
      out.write("                                                />\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label>Email Address</label>\n");
      out.write("                                            <input\n");
      out.write("                                                type=\"email\"\n");
      out.write("                                                class=\"form-control\"\n");
      out.write("                                                value=\"sisty@gmail.com\"\n");
      out.write("                                                />\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label>Username</label>\n");
      out.write("                                            <input type=\"text\" class=\"form-control\" value=\"Seema\" />\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label>Password</label>\n");
      out.write("                                            <input\n");
      out.write("                                                type=\"password\"\n");
      out.write("                                                class=\"form-control\"\n");
      out.write("                                                value=\"seemas12345\"\n");
      out.write("                                                />\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"text-end\">\n");
      out.write("                                            <button type=\"submit\" class=\"btn btn-primary\">\n");
      out.write("                                                Submit\n");
      out.write("                                            </button>\n");
      out.write("                                        </div>\n");
      out.write("                                    </form>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <script src=\"css/assets/js/jquery-3.6.0.min.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"css/assets/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"css/assets/plugins/slimscroll/jquery.slimscroll.min.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"css/assets/js/script.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
