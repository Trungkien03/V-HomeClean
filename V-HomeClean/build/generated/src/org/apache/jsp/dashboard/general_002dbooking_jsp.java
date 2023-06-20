package org.apache.jsp.dashboard;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class general_002dbooking_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_fmt_formatNumber_var_value_pattern_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_fmt_formatNumber_var_value_pattern_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_fmt_formatNumber_var_value_pattern_nobody.release();
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
      out.write("                <div class=\"page-wrapper\">\n");
      out.write("                    <div class=\"content container-fluid\">\n");
      out.write("                        <div class=\"page-header\">\n");
      out.write("                            <div class=\"row align-items-center\">\n");
      out.write("                                <div class=\"col\">\n");
      out.write("                                    <h3 class=\"page-title\">Thông Tin Dịch Vụ</h3>\n");
      out.write("                                    <ul class=\"breadcrumb\">\n");
      out.write("                                        <li class=\"breadcrumb-item\">\n");
      out.write("                                            <a href=\"ServicesManagementController\">Quản lý Dịch Vụ</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li class=\"breadcrumb-item active\">Thông Tin Dịch Vụ</li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row settings-tab\">\n");
      out.write("                            \n");
      out.write("\n");
      out.write("                        <div class=\"col-md-12\">\n");
      out.write("                            <div class=\"card\">\n");
      out.write("                                <div class=\"card-header text-center\">\n");
      out.write("                                    <h4 class=\"card-title text-primary\">Thông Tin</h4>\n");
      out.write("                                    <h6 class=\"text-success\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${message}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h6>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <ul class=\"nav nav-tabs nav-tabs-top nav-justified\">\n");
      out.write("                                        <li class=\"nav-item\">\n");
      out.write("                                            <a\n");
      out.write("                                                class=\"nav-link active\"\n");
      out.write("                                                href=\"#top-justified-tab1\"\n");
      out.write("                                                data-bs-toggle=\"tab\"\n");
      out.write("                                                >Thông Tin</a\n");
      out.write("                                            >\n");
      out.write("                                        </li>\n");
      out.write("                                        <li class=\"nav-item\">\n");
      out.write("                                            <a\n");
      out.write("                                                class=\"nav-link\"\n");
      out.write("                                                href=\"#top-justified-tab2\"\n");
      out.write("                                                data-bs-toggle=\"tab\"\n");
      out.write("                                                >Mô Tả Dịch Vụ</a\n");
      out.write("                                            >\n");
      out.write("                                        </li>\n");
      out.write("                                        <li class=\"nav-item\">\n");
      out.write("                                            <a\n");
      out.write("                                                class=\"nav-link\"\n");
      out.write("                                                href=\"#top-justified-tab3\"\n");
      out.write("                                                data-bs-toggle=\"tab\"\n");
      out.write("                                                >Thông Báo</a\n");
      out.write("                                            >\n");
      out.write("                                        </li>\n");
      out.write("                                    </ul>\n");
      out.write("                                    <div class=\"tab-content\">\n");
      out.write("                                        <div\n");
      out.write("                                            class=\"tab-pane show active\"\n");
      out.write("                                            id=\"top-justified-tab1\"\n");
      out.write("                                            >\n");
      out.write("                                            <form action=\"ServiceGeneralController\" method=\"post\">\n");
      out.write("                                                <input type=\"hidden\" name=\"serviceID\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${service.serviceID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                                                <div class=\"form-group\" style=\"display:flex; justify-content: center; align-items: center\">\n");
      out.write("                                                    <label class=\"text-info font-weight-600 w-25\">Tên dịch vụ:</label>\n");
      out.write("                                                    <input\n");
      out.write("                                                        required=\"\"\n");
      out.write("                                                        name=\"serviceName\"\n");
      out.write("                                                        type=\"text\"\n");
      out.write("                                                        class=\"form-control\"\n");
      out.write("                                                        value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${service.serviceName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"\n");
      out.write("                                                        />\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"form-group\" style=\"display:flex; justify-content: center; align-items: center\">\n");
      out.write("                                                    <label class=\"text-info font-weight-600 w-25\">Thể loại dịch vụ:</label>\n");
      out.write("                                                    <select required name=\"serviceType\" class=\"form-control form-select\">\n");
      out.write("                                                        <option value=\"2\" ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${service.cateServiceName == 'Dịch vụ sửa chữa' ? 'selected' : ''}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(">Dịch vụ sửa chữa</option>\n");
      out.write("                                                        <option value=\"1\" ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${service.cateServiceName == 'Dịch vụ vệ sinh' ? 'selected' : ''}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(">Dịch vụ vệ sinh</option>\n");
      out.write("                                                    </select>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"form-group\" style=\"display:flex; align-items: center;\">\n");
      out.write("                                                    <label class=\"text-info font-weight-600 w-25\">Giá dịch vụ</label>\n");
      out.write("                                                    <div class=\"w-100\" style=\"display: flex; justify-content: center; align-items: center;\">\n");
      out.write("                                                        ");
      if (_jspx_meth_fmt_formatNumber_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("                                                        <input\n");
      out.write("                                                            required=\"\"\n");
      out.write("                                                            name=\"price\"\n");
      out.write("                                                            type=\"text\"\n");
      out.write("                                                            class=\"form-control\"\n");
      out.write("                                                            value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${formattedSalary}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"\n");
      out.write("                                                            />\n");
      out.write("                                                        <span class=\"btn btn-success\">VND</span>\n");
      out.write("\n");
      out.write("                                                    </div>\n");
      out.write("\n");
      out.write("                                                </div>\n");
      out.write("\n");
      out.write("                                                <div class=\"form-group\" style=\"display:flex; justify-content: center; align-items: center\">\n");
      out.write("                                                    <label class=\"text-info font-weight-600 w-25\">Cập nhật hình ảnh</label>\n");
      out.write("                                                    <input\n");
      out.write("                                                        name=\"image\"\n");
      out.write("                                                        type=\"file\"\n");
      out.write("                                                        class=\"form-control\"\n");
      out.write("                                                        />\n");
      out.write("                                                </div>\n");
      out.write("\n");
      out.write("                                                <div class=\"text-end text-center\">\n");
      out.write("                                                    <input name=\"action\" type=\"submit\" value=\"Chỉnh Sửa\" class=\"btn btn-primary\" />\n");
      out.write("                                                </div>\n");
      out.write("                                            </form>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"tab-pane\" id=\"top-justified-tab2\">\n");
      out.write("                                            <div class=\"form-group\" style=\"display:flex; justify-content: center; align-items: center\">\n");
      out.write("                                                <label class=\"text-info font-weight-600 w-25\">Chi tiết:</label>\n");
      out.write("                                                <textarea class=\"form-control\" name=\"serviceDetail\" rows=\"10\" cols=\"50\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${service.serviceDetail}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</textarea>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"text-end text-center\">\n");
      out.write("                                                <input name=\"action\" type=\"submit\" value=\"Chỉnh Sửa\" class=\"btn btn-primary\" />\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"tab-pane\" id=\"top-justified-tab3\">\n");
      out.write("                                            Tab content 3\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
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
      out.write("        <script src=\"https://code.jquery.com/jquery-3.6.0.min.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                // Kiểm tra khi người dùng nhập vào input\n");
      out.write("                $(\"input[name='price']\").on(\"input\", function () {\n");
      out.write("                    var value = $(this).val();\n");
      out.write("\n");
      out.write("                    // Kiểm tra nếu giá trị không phải là số\n");
      out.write("                    if (!$.isNumeric(value)) {\n");
      out.write("                        // Hiển thị thông báo cảnh báo\n");
      out.write("                        $(this).next(\".error-message\").text(\"Vui lòng chỉ nhập số.\");\n");
      out.write("                    } else {\n");
      out.write("                        // Xóa thông báo cảnh báo nếu giá trị hợp lệ\n");
      out.write("                        $(this).next(\".error-message\").text(\"\");\n");
      out.write("                    }\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("\n");
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

  private boolean _jspx_meth_fmt_formatNumber_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:formatNumber
    org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag _jspx_th_fmt_formatNumber_0 = (org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag) _jspx_tagPool_fmt_formatNumber_var_value_pattern_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag.class);
    _jspx_th_fmt_formatNumber_0.setPageContext(_jspx_page_context);
    _jspx_th_fmt_formatNumber_0.setParent(null);
    _jspx_th_fmt_formatNumber_0.setVar("formattedSalary");
    _jspx_th_fmt_formatNumber_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${service.price}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_fmt_formatNumber_0.setPattern("###,###");
    int _jspx_eval_fmt_formatNumber_0 = _jspx_th_fmt_formatNumber_0.doStartTag();
    if (_jspx_th_fmt_formatNumber_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_formatNumber_var_value_pattern_nobody.reuse(_jspx_th_fmt_formatNumber_0);
      return true;
    }
    _jspx_tagPool_fmt_formatNumber_var_value_pattern_nobody.reuse(_jspx_th_fmt_formatNumber_0);
    return false;
  }
}
