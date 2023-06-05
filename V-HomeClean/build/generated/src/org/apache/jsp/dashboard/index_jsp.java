package org.apache.jsp.dashboard;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>V-HomeClean - Dashboard</title>\n");
      out.write("\n");
      out.write("        <link\n");
      out.write("            rel=\"shortcut icon\"\n");
      out.write("            type=\"image/x-icon\"\n");
      out.write("            href=\"assets/img/favicon.png\"\n");
      out.write("            />\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/bootstrap.min.css\" />\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/font-awesome.min.css\" />\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/feathericon.min.css\" />\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/plugins/morris/morris.css\" />\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/style.css\" />\n");
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
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-xl-4 col-sm-4 col-12\">\n");
      out.write("                            <div class=\"card\">\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <div class=\"dash-widget-header\">\n");
      out.write("                                        <span class=\"dash-widget-icon bg-primary\">\n");
      out.write("                                            <i class=\"fe fe-users\"></i>\n");
      out.write("                                        </span>\n");
      out.write("                                        <div class=\"dash-count\">\n");
      out.write("                                            <a href=\"#\" class=\"count-title\">User Count</a>\n");
      out.write("                                            <a href=\"#\" class=\"count\"> 10,320</a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-xl-4 col-sm-4 col-12\">\n");
      out.write("                            <div class=\"card\">\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <div class=\"dash-widget-header\">\n");
      out.write("                                        <span class=\"dash-widget-icon bg-warning\">\n");
      out.write("                                            <i class=\"fe fe-phone\"></i>\n");
      out.write("                                        </span>\n");
      out.write("                                        <div class=\"dash-count\">\n");
      out.write("                                            <a href=\"#\" class=\"count-title\">Call Duration</a>\n");
      out.write("                                            <a href=\"#\" class=\"count\"> 14,628</a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-xl-4 col-sm-4 col-12\">\n");
      out.write("                            <div class=\"card\">\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <div class=\"dash-widget-header\">\n");
      out.write("                                        <span class=\"dash-widget-icon bg-danger\">\n");
      out.write("                                            <i class=\"fe fe-comments\"></i>\n");
      out.write("                                        </span>\n");
      out.write("                                        <div class=\"dash-count\">\n");
      out.write("                                            <a href=\"#\" class=\"count-title\">Chat Count</a>\n");
      out.write("                                            <a href=\"#\" class=\"count\"> 2,980</a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-12 d-flex\">\n");
      out.write("                            <div class=\"card card-table flex-fill\">\n");
      out.write("                                <div class=\"card-header\">\n");
      out.write("                                    <h4 class=\"card-title float-start\">User List</h4>\n");
      out.write("                                    <div class=\"table-search float-end\">\n");
      out.write("                                        <input\n");
      out.write("                                            type=\"text\"\n");
      out.write("                                            class=\"form-control\"\n");
      out.write("                                            placeholder=\"Search\"\n");
      out.write("                                            />\n");
      out.write("                                        <button class=\"btn\" type=\"submit\">\n");
      out.write("                                            <i class=\"fa fa-search\"></i>\n");
      out.write("                                        </button>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <div class=\"table-responsive no-radius\">\n");
      out.write("                                        <table class=\"table table-hover table-center\">\n");
      out.write("                                            <thead>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <th>User Id</th>\n");
      out.write("                                                    <th>User Name</th>\n");
      out.write("                                                    <th class=\"text-center\">Joined Date</th>\n");
      out.write("                                                    <th class=\"text-center\">Last Seen</th>\n");
      out.write("                                                    <th class=\"text-end\">Status</th>\n");
      out.write("                                                </tr>\n");
      out.write("                                            </thead>\n");
      out.write("                                            <tbody>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td class=\"text-nowrap\">\n");
      out.write("                                                        <div class=\"font-weight-600\">001</div>\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td class=\"text-nowrap\">Scott Albright</td>\n");
      out.write("                                                    <td class=\"text-center\">20 Jan 2019</td>\n");
      out.write("                                                    <td class=\"text-center\">15 mins ago</td>\n");
      out.write("                                                    <td class=\"text-end\">\n");
      out.write("                                                        <div class=\"font-weight-600 text-danger\">\n");
      out.write("                                                            Inactive\n");
      out.write("                                                        </div>\n");
      out.write("                                                    </td>\n");
      out.write("                                                </tr>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td class=\"text-nowrap\">\n");
      out.write("                                                        <div class=\"font-weight-600\">002</div>\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td class=\"text-nowrap\">Kevin Howard</td>\n");
      out.write("                                                    <td class=\"text-center\">10 Mar 2019</td>\n");
      out.write("                                                    <td class=\"text-center\">Just Now</td>\n");
      out.write("                                                    <td class=\"text-end\">\n");
      out.write("                                                        <div class=\"font-weight-600 text-success\">\n");
      out.write("                                                            Active\n");
      out.write("                                                        </div>\n");
      out.write("                                                    </td>\n");
      out.write("                                                </tr>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td class=\"text-nowrap\">\n");
      out.write("                                                        <div class=\"font-weight-600\">003</div>\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td class=\"text-nowrap\">Eric Knight</td>\n");
      out.write("                                                    <td class=\"text-center\">24 Jun 2019</td>\n");
      out.write("                                                    <td class=\"text-center\">1 hr ago</td>\n");
      out.write("                                                    <td class=\"text-end\">\n");
      out.write("                                                        <div class=\"font-weight-600 text-success\">\n");
      out.write("                                                            Inactive\n");
      out.write("                                                        </div>\n");
      out.write("                                                    </td>\n");
      out.write("                                                </tr>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td class=\"text-nowrap\">\n");
      out.write("                                                        <div class=\"font-weight-600\">004</div>\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td class=\"text-nowrap\">Irene Perkins</td>\n");
      out.write("                                                    <td class=\"text-center\">09 Sep 2019</td>\n");
      out.write("                                                    <td class=\"text-center\">3 mins ago</td>\n");
      out.write("                                                    <td class=\"text-end\">\n");
      out.write("                                                        <div class=\"font-weight-600 text-success\">\n");
      out.write("                                                            Active\n");
      out.write("                                                        </div>\n");
      out.write("                                                    </td>\n");
      out.write("                                                </tr>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td class=\"text-nowrap\">\n");
      out.write("                                                        <div class=\"font-weight-600\">005</div>\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td class=\"text-nowrap\">Carol Andre</td>\n");
      out.write("                                                    <td class=\"text-center\">10 Oct 2020</td>\n");
      out.write("                                                    <td class=\"text-center\">1 day ago</td>\n");
      out.write("                                                    <td class=\"text-end\">\n");
      out.write("                                                        <div class=\"font-weight-600 text-danger\">\n");
      out.write("                                                            Inactive\n");
      out.write("                                                        </div>\n");
      out.write("                                                    </td>\n");
      out.write("                                                </tr>\n");
      out.write("                                            </tbody>\n");
      out.write("                                        </table>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <script src=\"assets/js/jquery-3.6.0.min.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"assets/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"assets/plugins/slimscroll/jquery.slimscroll.min.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"assets/js/script.js\"></script>\n");
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
