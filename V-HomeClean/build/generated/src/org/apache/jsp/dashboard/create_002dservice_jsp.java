package org.apache.jsp.dashboard;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class create_002dservice_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("                                <h3 class=\"page-title\">Tạo mới dịch vụ</h3>\n");
      out.write("                                <ul class=\"breadcrumb\">\n");
      out.write("                                    <li class=\"breadcrumb-item\">\n");
      out.write("                                        <a href=\"dashboard/index.jsp\">Bảng điều khiển</a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li class=\"breadcrumb-item active\">Tạo mới dịch vụ</li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-sm-12\">\n");
      out.write("                            <div class=\"card\">\n");
      out.write("                                <div class=\"card-header text-center\">\n");
      out.write("                                    <h4 class=\"card-title text-primary\">Điền Thông Tin</h4>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    \n");
      out.write("                                    \n");
      out.write("                                    <form action=\"#\" method=\"post\">\n");
      out.write("                                        <div class=\"form-group row\">\n");
      out.write("                                            <label class=\"col-form-label col-md-2 text-info\">Tên Dịch Vụ</label>\n");
      out.write("                                            <div class=\"col-md-10\">\n");
      out.write("                                                <input required=\"\" name=\"serviceName\" type=\"text\" class=\"form-control\" placeholder=\"Điền đầy đủ tên dịch vụ\">\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group row\">\n");
      out.write("                                            <label class=\"col-form-label col-md-2 text-info\">Hình Ảnh</label>\n");
      out.write("                                            <div class=\"col-md-10\">\n");
      out.write("                                                <input required=\"\" name=\"serviceImage\" class=\"form-control\" type=\"file\">\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group row\">\n");
      out.write("                                            <label class=\"col-form-label col-md-2 text-info\">Thể loại</label>\n");
      out.write("                                            <div class=\"col-md-10\">\n");
      out.write("                                                <select required=\"\" name=\"serviceType\" class=\"form-control form-select\">\n");
      out.write("                                                    <option>-- Chọn --</option>\n");
      out.write("                                                    <option value=\"2\">Dịch vụ sửa chữa</option>\n");
      out.write("                                                    <option value=\"1\">Dịch vụ dọn dẹp</option>                                 \n");
      out.write("                                                </select>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group row\">\n");
      out.write("                                            <label class=\"col-form-label col-md-2 text-info\">Mô tả dịch vụ</label>\n");
      out.write("                                            <div class=\"col-md-10\">\n");
      out.write("                                                <textarea name=\"serviceDetails\" rows=\"5\" cols=\"5\" class=\"form-control\" required=\"\" placeholder=\"Mô tả chi tiết cho dịch vụ ở đây\"></textarea>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group mb-0 row\">\n");
      out.write("                                            <label class=\"col-form-label col-md-2 text-info\">Giá dịch vụ</label>\n");
      out.write("                                            <div class=\"col-md-10\">\n");
      out.write("                                                <div class=\"input-group\">\n");
      out.write("                                                    <span class=\"input-group-text\">$</span>\n");
      out.write("                                                    <input name=\"servicePrice\" class=\"form-control\" required=\"\" type=\"number\">\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("                                        <div class=\"form-group row text-center mt-3\">\n");
      out.write("                                            <div>\n");
      out.write("                                                <button class=\"btn btn-primary w-25\" type=\"submit\" name=\"action\">Tạo mới dịch vụ</button>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("                                    </form>\n");
      out.write("                                    \n");
      out.write("                                    \n");
      out.write("                                    \n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<script src=\"css/assets/js/jquery-3.6.0.min.js\"></script>\n");
      out.write("\n");
      out.write("<script src=\"css/assets/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("\n");
      out.write("<script src=\"css/assets/plugins/slimscroll/jquery.slimscroll.min.js\"></script>\n");
      out.write("\n");
      out.write("<script src=\"css/assets/js/script.js\"></script>\n");
      out.write("</body>\n");
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
