package org.apache.jsp.dashboard;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class blogs_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("            href=\"assets/img/favicon.png\"\n");
      out.write("            />\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/assets/css/bootstrap.min.css\" />\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/assets/css/font-awesome.min.css\" />\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/assets/css/feathericon.min.css\" />\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/assets/plugins/morris/morris.css\" />\n");
      out.write("        <link\n");
      out.write("            rel=\"stylesheet\"\n");
      out.write("            href=\"css/assets/plugins/datatables/datatables.min.css\"\n");
      out.write("            />\n");
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
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-sm-12\">\n");
      out.write("                                    <h3 class=\"page-title\">Danh Sách Blog </h3>\n");
      out.write("                                    <ul class=\"breadcrumb\">\n");
      out.write("                                        <li class=\"breadcrumb-item\">\n");
      out.write("                                            <a href=\"dashboard/index.jsp\">Bảng Điều Khiển</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li class=\"breadcrumb-item active\">Danh Sách Blog</li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"container\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"card\">\n");
      out.write("                                    <div class=\"card-header\">\n");
      out.write("                                        <h4 class=\"card-title\">Số Lượng Bài Viết</h4>\n");
      out.write("                                    <p class=\"card-text\">\n");
      out.write("                                        Đây là bảng thể hiện danh sách những dịch vụ của công ty\n");
      out.write("                                    </p>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <div class=\"table-responsive custom-table-responsive\">                                          \n");
      out.write("                                        <table id=\"example_table\" class=\"table table-center tab-content\">\n");
      out.write("                                            <thead>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <th class=\"text-center\"></th>\n");
      out.write("                                                    <th class=\"text-center\"></th>\n");
      out.write("                                                    <th class=\"text-center\"></th>\n");
      out.write("                                                    <th class=\"text-center\"></th>\n");
      out.write("                                                </tr>\n");
      out.write("                                            </thead>\n");
      out.write("                                            <tbody>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td class=\"text-center\">\n");
      out.write("                                                        <div class=\"card\" style=\"width: 15rem;\">\n");
      out.write("                                                            <img class=\"card-img-top\" src=\"...\" alt=\"Card image cap\">\n");
      out.write("                                                            <div class=\"card-body\">\n");
      out.write("                                                                <h5 class=\"card-title\">Card title</h5>\n");
      out.write("                                                                <p class=\"card-text\">Some quick example text to build on the card title and make up the bulk of the card's content.</p>\n");
      out.write("                                                                <a href=\"#\" class=\"btn btn-primary\">Go somewhere</a>\n");
      out.write("                                                            </div>\n");
      out.write("                                                        </div>\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td class=\"text-center\">\n");
      out.write("                                                        <div class=\"card\" style=\"width: 15rem;\">\n");
      out.write("                                                            <img class=\"card-img-top\" src=\"...\" alt=\"Card image cap\">\n");
      out.write("                                                            <div class=\"card-body\">\n");
      out.write("                                                                <h5 class=\"card-title\">Card title</h5>\n");
      out.write("                                                                <p class=\"card-text\">Some quick example text to build on the card title and make up the bulk of the card's content.</p>\n");
      out.write("                                                                <a href=\"#\" class=\"btn btn-primary\">Go somewhere</a>\n");
      out.write("                                                            </div>\n");
      out.write("                                                        </div>\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td class=\"text-center\">\n");
      out.write("                                                        <div class=\"card\" style=\"width: 15rem;\">\n");
      out.write("                                                            <img class=\"card-img-top\" src=\"...\" alt=\"Card image cap\">\n");
      out.write("                                                            <div class=\"card-body\">\n");
      out.write("                                                                <h5 class=\"card-title\">Card title</h5>\n");
      out.write("                                                                <p class=\"card-text\">Some quick example text to build on the card title and make up the bulk of the card's content.</p>\n");
      out.write("                                                                <a href=\"#\" class=\"btn btn-primary\">Go somewhere</a>\n");
      out.write("                                                            </div>\n");
      out.write("                                                        </div>\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td class=\"text-center\">\n");
      out.write("                                                        <div class=\"card\" style=\"width: 15rem;\">\n");
      out.write("                                                            <img class=\"card-img-top\" src=\"...\" alt=\"Card image cap\">\n");
      out.write("                                                            <div class=\"card-body\">\n");
      out.write("                                                                <h5 class=\"card-title\">Card title</h5>\n");
      out.write("                                                                <p class=\"card-text\">Some quick example text to build on the card title and make up the bulk of the card's content.</p>\n");
      out.write("                                                                <a href=\"#\" class=\"btn btn-primary\">Go somewhere</a>\n");
      out.write("                                                            </div>\n");
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
      out.write("\n");
      out.write("<!--                                                            <div class=\"modal fade\" id=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.serviceID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" tabindex=\"-1\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\n");
      out.write("        <div class=\"modal-dialog\">\n");
      out.write("            <div class=\"modal-content\">\n");
      out.write("                <div class=\"modal-header\">\n");
      out.write("                    <h5 class=\"modal-title\" id=\"exampleModalLabel\">Ngưng dịch vụ ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.serviceName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h5>\n");
      out.write("                    <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"modal\" aria-label=\"Close\"></button>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"modal-body\">\n");
      out.write("                    Bạn có chắc chắn là muốn khóa dịch vụ này chứ ?\n");
      out.write("                </div>\n");
      out.write("                <div class=\"modal-footer\" style=\"display: flex; justify-content: space-between\">\n");
      out.write("                    <button type=\"button\" class=\"btn btn-outline-danger\" data-bs-dismiss=\"modal\"><a>Không</a></button>\n");
      out.write("                    <button type=\"button\" class=\"btn btn-outline-primary\"><a href=\"ServicesManagementController?action=Khóa&serviceID=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.serviceID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                            Có\n");
      out.write("                        </a></button>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
      out.write("        <script src=\"css/assets/plugins/datatables/jquery.dataTables.min.js\"></script>\n");
      out.write("        <script src=\"css/assets/plugins/datatables/datatables.min.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"css/assets/js/script.js\"></script>\n");
      out.write("        <script src=\"https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                $('#example_table').DataTable({\n");
      out.write("                    language: {\n");
      out.write("                        \"sProcessing\": \"Đang xử lý...\",\n");
      out.write("                        \"sLengthMenu\": \"Hiển thị _MENU_ dòng\",\n");
      out.write("                        \"sZeroRecords\": \"Không tìm thấy kết quả nào\",\n");
      out.write("                        \"sInfo\": \"Đang hiển thị _START_ đến _END_ trong tổng số _TOTAL_ mục\",\n");
      out.write("                        \"sInfoEmpty\": \"Đang hiển thị 0 đến 0 trong tổng số 0 mục\",\n");
      out.write("                        \"sInfoFiltered\": \"(được lọc từ _MAX_ mục)\",\n");
      out.write("                        \"sSearch\": \"Tìm kiếm:\",\n");
      out.write("                        \"oPaginate\": {\n");
      out.write("                            \"sFirst\": \"Đầu\",\n");
      out.write("                            \"sPrevious\": \"Trước\",\n");
      out.write("                            \"sNext\": \"Tiếp\",\n");
      out.write("                            \"sLast\": \"Cuối\"\n");
      out.write("                        },\n");
      out.write("                        \"sEmptyTable\": \"Không có dữ liệu\",\n");
      out.write("                        \"sLoadingRecords\": \"Đang tải...\",\n");
      out.write("                        \"oAria\": {\n");
      out.write("                            \"sSortAscending\": \": Sắp xếp cột tăng dần\",\n");
      out.write("                            \"sSortDescending\": \": Sắp xếp cột giảm dần\"\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
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
