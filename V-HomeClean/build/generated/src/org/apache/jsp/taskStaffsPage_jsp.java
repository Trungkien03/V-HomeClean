package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import DTO.BookingDTO;
import DTO.AccountDTO;

public final class taskStaffsPage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

static private org.apache.jasper.runtime.ProtectedFunctionMapper _jspx_fnmap_0;

static {
  _jspx_fnmap_0= org.apache.jasper.runtime.ProtectedFunctionMapper.getMapForFunction("fn:split", org.apache.taglibs.standard.functions.Functions.class, "split", new Class[] {java.lang.String.class, java.lang.String.class});
}

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_set_var_value_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_choose;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_otherwise;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_when_test;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_fmt_formatNumber_value_pattern_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_set_var_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_choose = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_otherwise = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_when_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_fmt_formatNumber_value_pattern_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_set_var_value_nobody.release();
    _jspx_tagPool_c_choose.release();
    _jspx_tagPool_c_if_test.release();
    _jspx_tagPool_c_otherwise.release();
    _jspx_tagPool_c_when_test.release();
    _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.release();
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <title>V-HomeClean - Thông Tin Tài Khoản</title>\n");
      out.write("        <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\n");
      out.write("        <meta content=\"\" name=\"keywords\">\n");
      out.write("        <meta content=\"\" name=\"description\">\n");
      out.write("\n");
      out.write("        <!-- Favicon -->\n");
      out.write("        <link href=\"img/favicon.ico\" rel=\"icon\">\n");
      out.write("\n");
      out.write("        <!-- Google Web Fonts -->\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@500&display=swap\" rel=\"stylesheet\">\n");
      out.write("        <!--        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("                 Bootstrap DataTable CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css\">\n");
      out.write("        <!-- Icon Font Stylesheet -->\n");
      out.write("        <link href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <meta content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\" name=\"viewport\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\">\n");
      out.write("        <!--        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\">-->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/ProfileStyle.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\">\n");
      out.write("        <link href=\"lib/animate/animate.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"lib/owlcarousel/assets/owl.carousel.min.css\" rel=\"stylesheet\">\n");
      out.write("        <style>\n");
      out.write("            .profile-image-label {\n");
      out.write("                display: block;\n");
      out.write("                width: 40px;\n");
      out.write("                height: 40px;\n");
      out.write("                border-radius: 50%;\n");
      out.write("                background-color: #f5f5f5;\n");
      out.write("                color: #009ce7;\n");
      out.write("                font-size: 20px;\n");
      out.write("                text-align: center;\n");
      out.write("                line-height: 40px;\n");
      out.write("                cursor: pointer;\n");
      out.write("                position: relative;\n");
      out.write("                bottom: 50px;\n");
      out.write("                left: 130px;\n");
      out.write("                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .profile-image-label:hover {\n");
      out.write("                background-color: #CCC;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("            .full-section {\n");
      out.write("                width: 100%;\n");
      out.write("                height: 100vh; /* vh stands for viewport height */\n");
      out.write("            }\n");
      out.write("            @media (max-width: 768px){\n");
      out.write("                .profile-image-label{\n");
      out.write("                    position: relative;\n");
      out.write("                    bottom: 50px;\n");
      out.write("                    left: 130px;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .container-fluid.page-header {\n");
      out.write("                position: relative;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .container-fluid.page-header:before {\n");
      out.write("                content: \"\";\n");
      out.write("                background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.3)), url(https://wordpress.horje.com/s-custom-registration-form-builder-with-submission-manager/assets/banner-772x250.jpg?rev=2081490);\n");
      out.write("                position: absolute;\n");
      out.write("                top: 0;\n");
      out.write("                left: 0;\n");
      out.write("                width: 100%;\n");
      out.write("                height: 100%;\n");
      out.write("                z-index: -1;\n");
      out.write("            }\n");
      out.write("            .avatar {\n");
      out.write("                width: 150px; /* Định dạng kích thước hình ảnh */\n");
      out.write("                height: 150px;\n");
      out.write("                border-radius: 50%; /* Định dạng góc cong tạo hiệu ứng tròn */\n");
      out.write("                overflow: hidden; /* Ẩn phần vượt ra khỏi hình tròn */\n");
      out.write("                margin-left: 30px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .avatar img {\n");
      out.write("                width: 100%; /* Định dạng kích thước hình ảnh bên trong */\n");
      out.write("                height: 100%;\n");
      out.write("                object-fit: cover; /* Căn chỉnh hình ảnh để lấp đầy không gian */\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navigation.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("\n");
      out.write("        <div class=\"container-fluid page-header py-5 mb-5 wow fadeIn\" data-wow-delay=\"0.1s\">\n");
      out.write("            <div class=\"container text-center py-5\">\n");
      out.write("<!--                <h1 class=\"display-4 text-white animated slideInDown mb-4\"><strong style=\"color: #f52626;\"> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ERROR}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong></h1>\n");
      out.write("                <h1 class=\"display-4 text-white animated slideInDown mb-4\"><strong style=\"color: #00d747;\" >");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${message}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong></h1>-->\n");
      out.write("                <h1 class=\"display-4 text-white animated slideInDown mb-4\">Thông Tin Tài Khoản</h1>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <section class=\" my-5\">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <div class=\"bg-white shadow rounded-lg d-block d-sm-flex w-full m-5\">\n");
      out.write("                    <div class=\"profile-tab-nav border-right\">\n");
      out.write("                        <div class=\"p-4\">\n");
      out.write("                            <div class=\" avatar img-circle\">\n");
      out.write("                                <img id=\"profileImage\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.image}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" alt=\"Image\" class=\"shadow\">\n");
      out.write("                            </div>\n");
      out.write("                            <label for=\"profile-image\" class=\"profile-image-label\">\n");
      out.write("                                <input type=\"file\" id=\"profile-image\" name=\"image\" style=\"display: none;\">\n");
      out.write("                                <i class=\"fas fa-camera\"></i>\n");
      out.write("                            </label>\n");
      out.write("\n");
      out.write("                            <h4 class=\"text-center\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.fullName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h4>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"nav flex-column nav-pills\" id=\"v-pills-tab\" role=\"tablist\" aria-orientation=\"vertical\">\n");
      out.write("                            <a class=\"nav-link active\" id=\"account-tab\" data-toggle=\"pill\" href=\"#account\" role=\"tab\" aria-controls=\"account\" aria-selected=\"true\">\n");
      out.write("                                <i class=\"fa fa-home text-center mr-1\"></i> \n");
      out.write("                                Tài Khoản\n");
      out.write("                            </a>\n");
      out.write("                            <a class=\"nav-link\" id=\"password-tab\" data-toggle=\"pill\" href=\"#password\" role=\"tab\" aria-controls=\"password\" aria-selected=\"false\">\n");
      out.write("                                <i class=\"fa fa-key text-center mr-1\"></i> \n");
      out.write("                                Mật Khẩu\n");
      out.write("                            </a>\n");
      out.write("                            <a class=\"nav-link\" id=\"security-tab\" data-toggle=\"pill\" href=\"#security\" role=\"tab\" aria-controls=\"security\" aria-selected=\"false\">\n");
      out.write("                                <i class=\"fa fa-user text-center mr-1\"></i> \n");
      out.write("                                Tình Trạng Đơn\n");
      out.write("                            </a>\n");
      out.write("                            <a class=\"nav-link\" id=\"application-tab\" data-toggle=\"pill\" href=\"#application\" role=\"tab\" aria-controls=\"application\" aria-selected=\"false\">\n");
      out.write("                                <i class=\"fa fa-tv text-center mr-1\"></i> \n");
      out.write("                                Tổng Số Đơn\n");
      out.write("                            </a>\n");
      out.write("                            <a class=\"nav-link\" id=\"notification-tab\" data-toggle=\"pill\" href=\"#notification\" role=\"tab\" aria-controls=\"notification\" aria-selected=\"false\">\n");
      out.write("                                <i class=\"fa fa-bell text-center mr-1\"></i> \n");
      out.write("                                Thông Báo\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"tab-content p-4 p-md-5\" id=\"v-pills-tabContent\">\n");
      out.write("                        <div class=\"tab-pane fade show active\" id=\"account\" role=\"tabpanel\" aria-labelledby=\"account-tab\">\n");
      out.write("                            <form action=\"ProfilePageController\" method=\"post\">\n");
      out.write("                                <h3 class=\"mb-4\">Thông Tin Tài Khoản</h3>\n");
      out.write("                                <h6 class=\"text-white animated slideInDown mb-4\"><strong style=\"color: #00d747;\" >");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${message}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong></h6>\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col-md-6\">\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label>Họ và Tên</label>\n");
      out.write("                                            <input name=\"fullName\" type=\"text\" class=\"form-control\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.fullName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-6\">\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label>Ngày Sinh</label>\n");
      out.write("                                            <input name=\"dateOfBirth\" type=\"date\" class=\"form-control\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.dateOfBirth}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-6\">\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label>Email</label>\n");
      out.write("                                            <input name=\"email\" type=\"email\" class=\"form-control\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.email}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-6\">\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label>Số Điện Thoại</label>\n");
      out.write("                                            <input name=\"phone\" type=\"text\" class=\"form-control\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.phone}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-6\">\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label>Địa chỉ</label>\n");
      out.write("                                            <input name=\"address\" type=\"text\" class=\"form-control\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.address}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-6\">\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label>Giới tính</label>\n");
      out.write("                                            <select name=\"gender\" class=\"form-control\">\n");
      out.write("                                                ");
      if (_jspx_meth_c_choose_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                            </select>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <input class=\"btn btn-primary\" style=\"width: 40%\" name=\"action\" value=\"Cập Nhật\" type=\"submit\" >\n");
      out.write("                                </div>\n");
      out.write("                            </form>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <!--                        PASSWORD CHANGE -->\n");
      out.write("\n");
      out.write("\n");
      out.write("                        ");

                            AccountDTO account = (AccountDTO) session.getAttribute("acc");
                            if (account != null) {

                        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <div class=\"tab-pane fade\" id=\"password\" role=\"tabpanel\" aria-labelledby=\"password-tab\">\n");
      out.write("                            <h3 class=\"mb-4\">Cài đặt mật khẩu</h3>\n");
      out.write("                            <div>\n");
      out.write("                                <p class=\"text-white animated slideInDown mb-4\"><strong style=\"color: #00d747;\" >");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${messagePass}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong></p>\n");
      out.write("                                <p class=\"text-white animated slideInDown mb-4\"><strong style=\"color: #f52626;\"> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ERRORPass}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong></p>\n");
      out.write("                                <form action=\"ProfilePageController\" method=\"POST\">\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col-md-6\">\n");
      out.write("\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("\n");
      out.write("                                                <label>Mật khẩu cũ</label>\n");
      out.write("                                                <input required=\"\" type=\"password\" name=\"password\" class=\"form-control\">\n");
      out.write("                                                <div class=\"old-pass\"> <i class=\"fa-solid fa-warning\"></i> Xác nhận mật khẩu cũ</div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col-md-6\">\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <label>Mật khẩu mới</label>\n");
      out.write("                                                <input required=\"\" type=\"password\" name=\"newPassword\" class=\"form-control\">\n");
      out.write("                                                <div class=\"requirement mt-3\">\n");
      out.write("                                                    <p>Mật khẩu mới phải chứa:</p>\n");
      out.write("                                                    <ul class=\"requirement-list\" style=\"list-style-type: none;\">\n");
      out.write("                                                        <li><i class=\"fa-solid fa-warning\"></i><span>Ít nhất 8 ký tự</span></li>\n");
      out.write("                                                        <li><i class=\"fa-solid fa-warning\"></i><span>Ít nhất 1 số tự nhiên (0...9)</span></li>\n");
      out.write("                                                        <li><i class=\"fa-solid fa-warning\"></i><span>Ít nhất 1 ký tự thường (a...z)</span></li>\n");
      out.write("                                                        <li><i class=\"fa-solid fa-warning\"></i><span>Ít nhất 1 ký tự đặc biệt (!...$) </span></li>\n");
      out.write("                                                        <li><i class=\"fa-solid fa-warning\"></i><span>Ít nhất 1 ký tự in hoa (A...Z)</span></li>\n");
      out.write("                                                        <li><i class=\"fa-solid fa-warning\"></i><span>Không được giống mật khẩu cũ</span></li>\n");
      out.write("                                                    </ul>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col-md-6\">\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <label>Xác nhận mật khẩu mới</label>\n");
      out.write("                                                <input required=\"\" type=\"password\" name=\"confirm\" class=\"form-control\">\n");
      out.write("                                                <p class=\"confirm-new-pass\"> <i class=\"fa-solid fa-warning\"></i>Xác nhận đúng mật khẩu mới!</p>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <input class=\"btn btn-primary change-pass-button\" type=\"submit\" name=\"action\" value=\"Thay Đổi Mật Khẩu\"\n");
      out.write("                                           class=\"btn btn-block btn-info\">\n");
      out.write("                                    <!--                            <div>\n");
      out.write("                                                                    <button class=\"btn btn-primary\">Update</button>\n");
      out.write("                                                                    <button class=\"btn btn-light\">Cancel</button>\n");
      out.write("                                                                </div>-->\n");
      out.write("                                </form>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <!-- đay là tab thông tin đơn hàng   -->\n");
      out.write("                        <div class=\"tab-pane fade\" id=\"security\" role=\"tabpanel\" aria-labelledby=\"security-tab\">\n");
      out.write("                            <h3 class=\"mb-4\">Tình Trạng Đơn Dịch Vụ</h3>\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <table id=\"example_table1\" class=\"table table-hover text-center table-info\">\n");
      out.write("                                    <thead>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th>Dịch vụ</th>\n");
      out.write("                                            <th>Định Kì</th>\n");
      out.write("                                            <th>Mã phòng</th>\n");
      out.write("                                            <th>Khu vực</th>\n");
      out.write("                                            <th>Nhân viên</th>\n");
      out.write("                                            <th>Thời gian</th>\n");
      out.write("                                            <th>Tổng chi phí</th>\n");
      out.write("                                            <th>Tình Trạng</th>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </thead>\n");
      out.write("                                    <tbody>\n");
      out.write("                                        ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                    </tbody>\n");
      out.write("                                </table>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"tab-pane fade\" id=\"application\" role=\"tabpanel\" aria-labelledby=\"application-tab\">\n");
      out.write("                            <h3 class=\"mb-4\">Số Đơn Của Bạn</h3>\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <table id=\"example_table2\" class=\"table\">\n");
      out.write("                                    <thead>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th>Mã đơn</th>\n");
      out.write("                                            <th>dịch vụ</th>\n");
      out.write("                                            <th>Mã phòng</th>\n");
      out.write("                                            <th>Khu vực</th>\n");
      out.write("                                            <th>Nhân viên</th>\n");
      out.write("                                            <th>Tổng chi phí</th>\n");
      out.write("                                            <th>Tình Trạng</th>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </thead>\n");
      out.write("                                    <tbody>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>Mã đơn</td>\n");
      out.write("                                            <td>Dịch vụ</td>\n");
      out.write("                                            <td>Mã phòng</td>\n");
      out.write("                                            <td>Khu vực</td>\n");
      out.write("                                            <td>Nhân viên</td>\n");
      out.write("                                            <td>Tổng chi phí</td>\n");
      out.write("                                            <td>Tình trạng</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </tbody>\n");
      out.write("                                </table>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"tab-pane fade\" id=\"notification\" role=\"tabpanel\" aria-labelledby=\"notification-tab\">\n");
      out.write("                            <h3 class=\"mb-4\">Thông Tin</h3>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("\n");
      out.write("                                <table id=\"example_table3\" class=\"table\">\n");
      out.write("                                    <thead>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th></th>\n");
      out.write("                                            <th>Nội Dung</th>\n");
      out.write("                                            <th></th>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </thead>\n");
      out.write("                                    <tbody>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>1</td>\n");
      out.write("                                            <td>Colt Adams</td>\n");
      out.write("                                            <td>16740326 5320</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>1</td>\n");
      out.write("                                            <td>Colt Adams</td>\n");
      out.write("                                            <td>16740326 5320</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>1</td>\n");
      out.write("                                            <td>Colt Adams</td>\n");
      out.write("                                            <td>16740326 5320</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>1</td>\n");
      out.write("                                            <td>Colt Adams</td>\n");
      out.write("                                            <td>16740326 5320</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </tbody>\n");
      out.write("                                </table>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        ");
            }
        
      out.write("\n");
      out.write("    </section>\n");
      out.write("\n");
      out.write("    <!-- JavaScript Libraries -->\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.4.1.min.js\"></script>\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\"></script>\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <!-- Bootstrap js -->\n");
      out.write("    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("    <script src=\"lib/wow/wow.min.js\"></script>\n");
      out.write("    <script src=\"lib/easing/easing.min.js\"></script>\n");
      out.write("    <script src=\"lib/waypoints/waypoints.min.js\"></script>\n");
      out.write("    <script src=\"lib/owlcarousel/owl.carousel.min.js\"></script>\n");
      out.write("    <!--    //----------------------------------------------------------------------------------\n");
      out.write("    //cập nhật hình ảnh Real Time-->\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.6.0.min.js\"></script>\n");
      out.write("    <script>\n");
      out.write("        $(document).ready(function () {\n");
      out.write("            // Bắt sự kiện khi người dùng thay đổi trường input file\n");
      out.write("            $('#profile-image').change(function () {\n");
      out.write("                var fileInput = $('#profile-image')[0].files[0];\n");
      out.write("                if (fileInput) {\n");
      out.write("                    var formData = new FormData();\n");
      out.write("                    formData.append('image', fileInput);\n");
      out.write("\n");
      out.write("                    $.ajax({\n");
      out.write("                        url: 'UpdateImageProfileController',\n");
      out.write("                        type: 'POST',\n");
      out.write("                        data: formData,\n");
      out.write("                        processData: false,\n");
      out.write("                        contentType: false,\n");
      out.write("                        success: function (response) {\n");
      out.write("                            // Cập nhật hình ảnh mới trên trang web\n");
      out.write("                            $('#profileImage').attr('src', response);\n");
      out.write("                            $('#profile-image-2').attr('src', response);\n");
      out.write("                        },\n");
      out.write("                        error: function (xhr, status, error) {\n");
      out.write("                            // Xử lý lỗi (nếu có)\n");
      out.write("                            console.log(error);\n");
      out.write("                        }\n");
      out.write("                    });\n");
      out.write("                }\n");
      out.write("\n");
      out.write("            });\n");
      out.write("        });\n");
      out.write("    </script>\n");
      out.write("    <!-- cho data table -->\n");
      out.write("    <!-- jQuery Datatable js -->\n");
      out.write("    <script src=\"https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js\"></script>\n");
      out.write("    <!-- Bootstrap Datatable js -->    \n");
      out.write("    <script src=\"https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js\"></script>\n");
      out.write("    <script>\n");
      out.write("        $(document).ready(function () {\n");
      out.write("            $('#example_table1').DataTable({\n");
      out.write("                language: {\n");
      out.write("                    \"sProcessing\": \"Đang xử lý...\",\n");
      out.write("                    \"sLengthMenu\": \"Hiển thị _MENU_ dòng\",\n");
      out.write("                    \"sZeroRecords\": \"Không tìm thấy kết quả nào\",\n");
      out.write("                    \"sInfo\": \"Đang hiển thị _START_ đến _END_ trong tổng số _TOTAL_ mục\",\n");
      out.write("                    \"sInfoEmpty\": \"Đang hiển thị 0 đến 0 trong tổng số 0 mục\",\n");
      out.write("                    \"sInfoFiltered\": \"(được lọc từ _MAX_ mục)\",\n");
      out.write("                    \"sSearch\": \"Tìm kiếm:\",\n");
      out.write("                    \"oPaginate\": {\n");
      out.write("                        \"sFirst\": \"Đầu\",\n");
      out.write("                        \"sPrevious\": \"Trước\",\n");
      out.write("                        \"sNext\": \"Tiếp\",\n");
      out.write("                        \"sLast\": \"Cuối\"\n");
      out.write("                    },\n");
      out.write("                    \"sEmptyTable\": \"Không có dữ liệu\",\n");
      out.write("                    \"sLoadingRecords\": \"Đang tải...\",\n");
      out.write("                    \"oAria\": {\n");
      out.write("                        \"sSortAscending\": \": Sắp xếp cột tăng dần\",\n");
      out.write("                        \"sSortDescending\": \": Sắp xếp cột giảm dần\"\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("            });\n");
      out.write("        });\n");
      out.write("\n");
      out.write("        $(document).ready(function () {\n");
      out.write("            $('#example_table2').DataTable({\n");
      out.write("                language: {\n");
      out.write("                    \"sProcessing\": \"Đang xử lý...\",\n");
      out.write("                    \"sLengthMenu\": \"Hiển thị _MENU_ dòng\",\n");
      out.write("                    \"sZeroRecords\": \"Không tìm thấy kết quả nào\",\n");
      out.write("                    \"sInfo\": \"Đang hiển thị _START_ đến _END_ trong tổng số _TOTAL_ mục\",\n");
      out.write("                    \"sInfoEmpty\": \"Đang hiển thị 0 đến 0 trong tổng số 0 mục\",\n");
      out.write("                    \"sInfoFiltered\": \"(được lọc từ _MAX_ mục)\",\n");
      out.write("                    \"sSearch\": \"Tìm kiếm:\",\n");
      out.write("                    \"oPaginate\": {\n");
      out.write("                        \"sFirst\": \"Đầu\",\n");
      out.write("                        \"sPrevious\": \"Trước\",\n");
      out.write("                        \"sNext\": \"Tiếp\",\n");
      out.write("                        \"sLast\": \"Cuối\"\n");
      out.write("                    },\n");
      out.write("                    \"sEmptyTable\": \"Không có dữ liệu\",\n");
      out.write("                    \"sLoadingRecords\": \"Đang tải...\",\n");
      out.write("                    \"oAria\": {\n");
      out.write("                        \"sSortAscending\": \": Sắp xếp cột tăng dần\",\n");
      out.write("                        \"sSortDescending\": \": Sắp xếp cột giảm dần\"\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("            });\n");
      out.write("        });\n");
      out.write("\n");
      out.write("        $(document).ready(function () {\n");
      out.write("            $('#example_table3').DataTable({\n");
      out.write("                language: {\n");
      out.write("                    \"sProcessing\": \"Đang xử lý...\",\n");
      out.write("                    \"sLengthMenu\": \"Hiển thị _MENU_ dòng\",\n");
      out.write("                    \"sZeroRecords\": \"Không tìm thấy kết quả nào\",\n");
      out.write("                    \"sInfo\": \"Đang hiển thị _START_ đến _END_ trong tổng số _TOTAL_ mục\",\n");
      out.write("                    \"sInfoEmpty\": \"Đang hiển thị 0 đến 0 trong tổng số 0 mục\",\n");
      out.write("                    \"sInfoFiltered\": \"(được lọc từ _MAX_ mục)\",\n");
      out.write("                    \"sSearch\": \"Tìm kiếm:\",\n");
      out.write("                    \"oPaginate\": {\n");
      out.write("                        \"sFirst\": \"Đầu\",\n");
      out.write("                        \"sPrevious\": \"Trước\",\n");
      out.write("                        \"sNext\": \"Tiếp\",\n");
      out.write("                        \"sLast\": \"Cuối\"\n");
      out.write("                    },\n");
      out.write("                    \"sEmptyTable\": \"Không có dữ liệu\",\n");
      out.write("                    \"sLoadingRecords\": \"Đang tải...\",\n");
      out.write("                    \"oAria\": {\n");
      out.write("                        \"sSortAscending\": \": Sắp xếp cột tăng dần\",\n");
      out.write("                        \"sSortDescending\": \": Sắp xếp cột giảm dần\"\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("            });\n");
      out.write("        });\n");
      out.write("    </script>\n");
      out.write("    <!-- Template Javascript -->\n");
      out.write("    <script src=\"js/main.js\"></script>\n");
      out.write("    <!--phan nay danh cho thay doi mat khau-->\n");
      out.write("    <script>\n");
      out.write("        var status = \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${status}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\";\n");
      out.write("\n");
      out.write("        // Auto-click vào tab \"password\" nếu giá trị của biến status là \"change-password\"\n");
      out.write("        if (status === \"change-password\") {\n");
      out.write("            window.addEventListener('DOMContentLoaded', function () {\n");
      out.write("                document.getElementById('password-tab').click();\n");
      out.write("                status = \"\";\n");
      out.write("            });\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        // Khởi tạo biến để lưu trạng thái của mỗi điều kiện\n");
      out.write("        let isOldPasswordValid = false;\n");
      out.write("        let isNewPasswordValid = false;\n");
      out.write("        let isConfirmationValid = false;\n");
      out.write("\n");
      out.write("// Check nhập mật khẩu cũ\n");
      out.write("        const passwordConfirmation = document.querySelector('.old-pass');\n");
      out.write("        passwordConfirmation.style.display = 'none';\n");
      out.write("        const oldPasswordInput = document.querySelector('input[name=\"password\"]');\n");
      out.write("        oldPasswordInput.addEventListener('input', checkOldPassword);\n");
      out.write("\n");
      out.write("        function checkOldPassword(event) {\n");
      out.write("            const oldPassword = event.target.value;\n");
      out.write("\n");
      out.write("            // Kiểm tra mật khẩu cũ có khớp với giá trị từ biến `acc.password` hay không\n");
      out.write("            if (oldPassword === '");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.password}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("') {\n");
      out.write("                passwordConfirmation.innerHTML = '<i class=\"fas fa-check\"></i> Xác nhận mật khẩu cũ';\n");
      out.write("                passwordConfirmation.style.color = '#00d747';\n");
      out.write("                isOldPasswordValid = true; // Đánh dấu mật khẩu cũ là hợp lệ\n");
      out.write("            } else {\n");
      out.write("                passwordConfirmation.innerHTML = '<i class=\"fa-solid fa-warning\"></i> Xác nhận mật khẩu cũ';\n");
      out.write("                passwordConfirmation.style.color = 'red';\n");
      out.write("                isOldPasswordValid = false; // Đánh dấu mật khẩu cũ không hợp lệ\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            if (oldPassword !== '') {\n");
      out.write("                passwordConfirmation.style.display = 'block';\n");
      out.write("            } else {\n");
      out.write("                passwordConfirmation.style.display = 'none';\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            // Kiểm tra trạng thái tổng hợp và kích hoạt/disabled nút\n");
      out.write("            updateButtonState();\n");
      out.write("        }\n");
      out.write("\n");
      out.write("// Check nhập mật khẩu mới\n");
      out.write("        const newPasswordInput = document.querySelector('input[name=\"newPassword\"]');\n");
      out.write("        const requirementList = document.querySelector('.requirement-list');\n");
      out.write("        const requirementItems = requirementList.querySelectorAll('li');\n");
      out.write("        requirementList.style.display = 'none';\n");
      out.write("        newPasswordInput.addEventListener('input', checkNewPassword);\n");
      out.write("        newPasswordInput.addEventListener('focus', showRequirementList);\n");
      out.write("\n");
      out.write("        function checkNewPassword(event) {\n");
      out.write("            const newPassword = event.target.value;\n");
      out.write("\n");
      out.write("            // Kiểm tra các yêu cầu cho mật khẩu mới\n");
      out.write("            const lengthRequirement = newPassword.length >= 8;\n");
      out.write("            const numberRequirement = /\\d/.test(newPassword);\n");
      out.write("            const lowercaseRequirement = /[a-z]/.test(newPassword);\n");
      out.write("            const specialCharRequirement = /[!@#$%^&*]/.test(newPassword);\n");
      out.write("            const uppercaseRequirement = /[A-Z]/.test(newPassword);\n");
      out.write("            const notEqualRequirement = newPassword !== '");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.password}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("';\n");
      out.write("\n");
      out.write("            // Hiển thị requirementList cho các yêu cầu thỏa mãn\n");
      out.write("            requirementItems.forEach((item, index) => {\n");
      out.write("                const icon = item.querySelector('i');\n");
      out.write("\n");
      out.write("                if (index === 0 && lengthRequirement) {\n");
      out.write("                    icon.classList.remove('fa-warning');\n");
      out.write("                    icon.classList.add('fa-check');\n");
      out.write("                    item.style.color = '#00d747';\n");
      out.write("                } else if (index === 1 && numberRequirement) {\n");
      out.write("                    icon.classList.remove('fa-warning');\n");
      out.write("                    icon.classList.add('fa-check');\n");
      out.write("                    item.style.color = '#00d747';\n");
      out.write("                } else if (index === 2 && lowercaseRequirement) {\n");
      out.write("                    icon.classList.remove('fa-warning');\n");
      out.write("                    icon.classList.add('fa-check');\n");
      out.write("                    item.style.color = '#00d747';\n");
      out.write("                } else if (index === 3 && specialCharRequirement) {\n");
      out.write("                    icon.classList.remove('fa-warning');\n");
      out.write("                    icon.classList.add('fa-check');\n");
      out.write("                    item.style.color = '#00d747';\n");
      out.write("                } else if (index === 4 && uppercaseRequirement) {\n");
      out.write("                    icon.classList.remove('fa-warning');\n");
      out.write("                    icon.classList.add('fa-check');\n");
      out.write("                    item.style.color = '#00d747';\n");
      out.write("                } else if (index === 5 && notEqualRequirement) {\n");
      out.write("                    icon.classList.remove('fa-warning');\n");
      out.write("                    icon.classList.add('fa-check');\n");
      out.write("                    item.style.color = '#00d747';\n");
      out.write("                } else {\n");
      out.write("                    icon.classList.remove('fa-check');\n");
      out.write("                    icon.classList.add('fa-warning');\n");
      out.write("                    item.style.color = 'red';\n");
      out.write("                }\n");
      out.write("            });\n");
      out.write("\n");
      out.write("            if (newPassword !== '') {\n");
      out.write("                requirementList.style.display = 'block';\n");
      out.write("                isNewPasswordValid = lengthRequirement && numberRequirement && lowercaseRequirement && specialCharRequirement && uppercaseRequirement && notEqualRequirement;\n");
      out.write("            } else {\n");
      out.write("                requirementList.style.display = 'none';\n");
      out.write("                isNewPasswordValid = false;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            // Kiểm tra trạng thái tổng hợp và kích hoạt/disabled nút\n");
      out.write("            updateButtonState();\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        function showRequirementList() {\n");
      out.write("            if (newPasswordInput.value !== '') {\n");
      out.write("                requirementList.style.display = 'block';\n");
      out.write("            } else {\n");
      out.write("                requirementList.style.display = 'none';\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("\n");
      out.write("// Confirm pass\n");
      out.write("        const confirmInput = document.querySelector('input[name=\"confirm\"]');\n");
      out.write("        const confirmMessage = document.querySelector('.confirm-new-pass');\n");
      out.write("\n");
      out.write("        confirmMessage.style.display = 'none';\n");
      out.write("\n");
      out.write("        confirmInput.addEventListener('input', checkConfirmation);\n");
      out.write("\n");
      out.write("        function checkConfirmation(event) {\n");
      out.write("            const newPassword = document.querySelector('input[name=\"newPassword\"]').value;\n");
      out.write("            const confirmation = event.target.value;\n");
      out.write("\n");
      out.write("            if (confirmation === newPassword) {\n");
      out.write("                confirmMessage.innerHTML = '<i class=\"fa-solid fa-check\"></i> Xác nhận đúng mật khẩu mới!';\n");
      out.write("                confirmMessage.style.color = '#00d747';\n");
      out.write("                isConfirmationValid = true; // Đánh dấu xác nhận mật khẩu mới là hợp lệ\n");
      out.write("            } else {\n");
      out.write("                confirmMessage.innerHTML = '<i class=\"fa-solid fa-warning\"></i> Xác nhận đúng mật khẩu mới!';\n");
      out.write("                confirmMessage.style.color = 'red';\n");
      out.write("                isConfirmationValid = false; // Đánh dấu xác nhận mật khẩu mới không hợp lệ\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            if (confirmation !== '') {\n");
      out.write("                confirmMessage.style.display = 'block';\n");
      out.write("            } else {\n");
      out.write("                confirmMessage.style.display = 'none';\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            // Kiểm tra trạng thái tổng hợp và kích hoạt/disabled nút\n");
      out.write("            updateButtonState();\n");
      out.write("        }\n");
      out.write("\n");
      out.write("// Cập nhật trạng thái của nút dựa trên kết quả kiểm tra\n");
      out.write("        function updateButtonState() {\n");
      out.write("            const button = document.querySelector('.change-pass-button');\n");
      out.write("            const isButtonDisabled = !(isOldPasswordValid && isNewPasswordValid && isConfirmationValid);\n");
      out.write("\n");
      out.write("            button.disabled = isButtonDisabled;\n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
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

  private boolean _jspx_meth_c_choose_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:choose
    org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_choose_0 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _jspx_tagPool_c_choose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
    _jspx_th_c_choose_0.setPageContext(_jspx_page_context);
    _jspx_th_c_choose_0.setParent(null);
    int _jspx_eval_c_choose_0 = _jspx_th_c_choose_0.doStartTag();
    if (_jspx_eval_c_choose_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                                    ");
        if (_jspx_meth_c_when_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                                                    ");
        if (_jspx_meth_c_when_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                                                    ");
        if (_jspx_meth_c_otherwise_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                                                ");
        int evalDoAfterBody = _jspx_th_c_choose_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_choose_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
      return true;
    }
    _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
    return false;
  }

  private boolean _jspx_meth_c_when_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_when_0 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _jspx_tagPool_c_when_test.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    _jspx_th_c_when_0.setPageContext(_jspx_page_context);
    _jspx_th_c_when_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
    _jspx_th_c_when_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.gender eq 'Male'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_when_0 = _jspx_th_c_when_0.doStartTag();
    if (_jspx_eval_c_when_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                                        <option value=\"Male\" selected>Nam</option>\n");
        out.write("                                                        <option value=\"Female\">Nữ</option>\n");
        out.write("                                                        <option value=\"Other\">Khác</option>\n");
        out.write("                                                    ");
        int evalDoAfterBody = _jspx_th_c_when_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_when_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
      return true;
    }
    _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
    return false;
  }

  private boolean _jspx_meth_c_when_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_when_1 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _jspx_tagPool_c_when_test.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    _jspx_th_c_when_1.setPageContext(_jspx_page_context);
    _jspx_th_c_when_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
    _jspx_th_c_when_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.gender eq 'Female'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_when_1 = _jspx_th_c_when_1.doStartTag();
    if (_jspx_eval_c_when_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                                        <option value=\"Male\">Nam</option>\n");
        out.write("                                                        <option value=\"Female\" selected>Nữ</option>\n");
        out.write("                                                        <option value=\"Other\">Khác</option>\n");
        out.write("                                                    ");
        int evalDoAfterBody = _jspx_th_c_when_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_when_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_1);
      return true;
    }
    _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_1);
    return false;
  }

  private boolean _jspx_meth_c_otherwise_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:otherwise
    org.apache.taglibs.standard.tag.common.core.OtherwiseTag _jspx_th_c_otherwise_0 = (org.apache.taglibs.standard.tag.common.core.OtherwiseTag) _jspx_tagPool_c_otherwise.get(org.apache.taglibs.standard.tag.common.core.OtherwiseTag.class);
    _jspx_th_c_otherwise_0.setPageContext(_jspx_page_context);
    _jspx_th_c_otherwise_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
    int _jspx_eval_c_otherwise_0 = _jspx_th_c_otherwise_0.doStartTag();
    if (_jspx_eval_c_otherwise_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                                        <option value=\"Male\">Nam</option>\n");
        out.write("                                                        <option value=\"Female\">Nữ</option>\n");
        out.write("                                                        <option value=\"Other\" selected>Khác</option>\n");
        out.write("                                                    ");
        int evalDoAfterBody = _jspx_th_c_otherwise_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_otherwise_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_0);
      return true;
    }
    _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_0);
    return false;
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setVar("booking");
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ListB}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                            ");
          if (_jspx_meth_c_set_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\n");
          out.write("                                            <tr>\n");
          out.write("                                                <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${booking.serviceName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                                <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${booking.typeOfService}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                                <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${addressParts[0]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                                <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${addressParts[1]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                                <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${booking.staffID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                                <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${booking.bookingDate}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                                <td>");
          if (_jspx_meth_fmt_formatNumber_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("</td>\n");
          out.write("                                                <td>\n");
          out.write("                                                    ");
          if (_jspx_meth_c_if_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\n");
          out.write("                                                    ");
          if (_jspx_meth_c_if_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\n");
          out.write("                                                    ");
          if (_jspx_meth_c_if_2((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\n");
          out.write("                                                </td>\n");
          out.write("                                            </tr>\n");
          out.write("                                        ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_set_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_0.setPageContext(_jspx_page_context);
    _jspx_th_c_set_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_set_0.setVar("addressParts");
    _jspx_th_c_set_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${fn:split(booking.bookingAddress, '||')}", java.lang.Object.class, (PageContext)_jspx_page_context, _jspx_fnmap_0));
    int _jspx_eval_c_set_0 = _jspx_th_c_set_0.doStartTag();
    if (_jspx_th_c_set_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
    return false;
  }

  private boolean _jspx_meth_fmt_formatNumber_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:formatNumber
    org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag _jspx_th_fmt_formatNumber_0 = (org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag) _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag.class);
    _jspx_th_fmt_formatNumber_0.setPageContext(_jspx_page_context);
    _jspx_th_fmt_formatNumber_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_fmt_formatNumber_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${booking.totalPrice}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_fmt_formatNumber_0.setPattern("###,### VND");
    int _jspx_eval_fmt_formatNumber_0 = _jspx_th_fmt_formatNumber_0.doStartTag();
    if (_jspx_th_fmt_formatNumber_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.reuse(_jspx_th_fmt_formatNumber_0);
      return true;
    }
    _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.reuse(_jspx_th_fmt_formatNumber_0);
    return false;
  }

  private boolean _jspx_meth_c_if_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${booking.bookingStatus eq 'Xác nhận'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                                        <button class=\"btn btn-outline-primary\">Xác nhận</button>\n");
        out.write("                                                    ");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }

  private boolean _jspx_meth_c_if_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_1.setPageContext(_jspx_page_context);
    _jspx_th_c_if_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_if_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${booking.bookingStatus eq 'Đang hoạt động'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_1 = _jspx_th_c_if_1.doStartTag();
    if (_jspx_eval_c_if_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                                        <button class=\"btn btn-primary\">Đang làm</button>\n");
        out.write("                                                    ");
        int evalDoAfterBody = _jspx_th_c_if_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
    return false;
  }

  private boolean _jspx_meth_c_if_2(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_2 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_2.setPageContext(_jspx_page_context);
    _jspx_th_c_if_2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_if_2.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${booking.bookingStatus eq 'Hoàn tất'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_2 = _jspx_th_c_if_2.doStartTag();
    if (_jspx_eval_c_if_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                                        <button class=\"btn btn-success\">Hoàn tất</button>\n");
        out.write("                                                    ");
        int evalDoAfterBody = _jspx_th_c_if_2.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_2);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_2);
    return false;
  }
}
