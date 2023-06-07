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
      out.write("            href=\"css/assets/img/favicon.png\"\n");
      out.write("            />\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("        <!-- Bootstrap DataTable CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css\">\n");
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
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-xl-3 col-sm-3 col-12\">\n");
      out.write("                            <div class=\"card\">\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <div class=\"dash-widget-header\">\n");
      out.write("                                        <span class=\"dash-widget-icon bg-info-light\">\n");
      out.write("                                            <i class=\"fe fe-users\"></i>\n");
      out.write("                                        </span>\n");
      out.write("                                        <div class=\"dash-count\">\n");
      out.write("                                            <a href=\"#\" class=\"count-title\">Số Lượng Người Dùng</a>\n");
      out.write("                                            <a href=\"#\" class=\"count\">0</a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-xl-3 col-sm-3 col-12\">\n");
      out.write("                            <div class=\"card\">\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <div class=\"dash-widget-header\">\n");
      out.write("                                        <span class=\"dash-widget-icon bg-info-light\">\n");
      out.write("                                            <i class=\"fe fe-document\"></i>\n");
      out.write("                                        </span>\n");
      out.write("                                        <div class=\"dash-count\">\n");
      out.write("                                            <a href=\"#\" class=\"count-title\">Tổng số dịch vụ</a>\n");
      out.write("                                            <a href=\"#\" class=\"count\">0</a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-xl-3 col-sm-3 col-12\">\n");
      out.write("                            <div class=\"card\">\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <div class=\"dash-widget-header\">\n");
      out.write("                                        <span class=\"dash-widget-icon bg-info-light\">\n");
      out.write("                                            <i class=\"fe fe-book\"></i>\n");
      out.write("                                        </span>\n");
      out.write("                                        <div class=\"dash-count\">\n");
      out.write("                                            <a href=\"#\" class=\"count-title\">Tổng số đơn đã đặt</a>\n");
      out.write("                                            <a href=\"#\" class=\"count\">0</a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                        <div class=\"col-xl-3 col-sm-3 col-12\">\n");
      out.write("                            <div class=\"card\">\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <div class=\"dash-widget-header\">\n");
      out.write("                                        <span class=\"dash-widget-icon bg-info-light\">\n");
      out.write("                                            <i class=\"fe fe-book\"></i>\n");
      out.write("                                        </span>\n");
      out.write("                                        <div class=\"dash-count\">\n");
      out.write("                                            <a href=\"#\" class=\"count-title\">Tổng số Blog</a>\n");
      out.write("                                            <a href=\"#\" class=\"count\">0</a>\n");
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
      out.write("                                    <h4 class=\"card-title float-start\">Danh Sách Người Dùng</h4>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <div style=\"margin: 20px;\" class=\"table-responsive\">\n");
      out.write("                                        <table id=\"example_table\" class=\"table\">\n");
      out.write("                                            <thead>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <th>ID</th>\n");
      out.write("                                                    <th>Full Name</th>\n");
      out.write("                                                    <th>Email</th>\n");
      out.write("                                                    <th>Address</th>\n");
      out.write("                                                    <th>Phone</th>\n");
      out.write("                                                    <th>Gender</th>\n");
      out.write("                                                    <th>Age</th>\n");
      out.write("                                                    <th>Status</th>\n");
      out.write("                                                </tr>\n");
      out.write("                                            </thead>\n");
      out.write("                                            <tbody>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td>1</td>\n");
      out.write("                                                    <td>Colt Adams</td>\n");
      out.write("                                                    <td>16740326 5320</td>\n");
      out.write("                                                    <td>16740326 5320</td>\n");
      out.write("                                                    <td>16740326 5320</td>\n");
      out.write("                                                    <td>16740326 5320</td>\n");
      out.write("                                                    <td>16740326 5320</td>\n");
      out.write("                                                    <td>16740326 5320</td>\n");
      out.write("                                                </tr>\n");
      out.write("                                               \n");
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
      out.write("        <script src=\"css/assets/js/jquery-3.6.0.min.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"css/assets/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"css/assets/plugins/slimscroll/jquery.slimscroll.min.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"css/assets/js/script.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <!-- Bootstrap js -->\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <!-- jQuery Datatable js -->\n");
      out.write("        <script src=\"https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js\"></script>\n");
      out.write("        <!-- Bootstrap Datatable js -->    \n");
      out.write("        <script src=\"https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                $('#example_table').DataTable();\n");
      out.write("            });\n");
      out.write("        </script>\n");
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
