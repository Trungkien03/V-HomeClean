package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import DTO.BookingDTO;
import DTO.AccountDTO;

public final class userProfile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

static private org.apache.jasper.runtime.ProtectedFunctionMapper _jspx_fnmap_0;
static private org.apache.jasper.runtime.ProtectedFunctionMapper _jspx_fnmap_1;
static private org.apache.jasper.runtime.ProtectedFunctionMapper _jspx_fnmap_2;
static private org.apache.jasper.runtime.ProtectedFunctionMapper _jspx_fnmap_3;

static {
  _jspx_fnmap_0= org.apache.jasper.runtime.ProtectedFunctionMapper.getMapForFunction("fn:split", org.apache.taglibs.standard.functions.Functions.class, "split", new Class[] {java.lang.String.class, java.lang.String.class});
  _jspx_fnmap_1= org.apache.jasper.runtime.ProtectedFunctionMapper.getMapForFunction("fn:substring", org.apache.taglibs.standard.functions.Functions.class, "substring", new Class[] {java.lang.String.class, int.class, int.class});
  _jspx_fnmap_2= org.apache.jasper.runtime.ProtectedFunctionMapper.getMapForFunction("fn:length", org.apache.taglibs.standard.functions.Functions.class, "length", new Class[] {java.lang.Object.class});
  _jspx_fnmap_3= org.apache.jasper.runtime.ProtectedFunctionMapper.getMapForFunction("fn:trim", org.apache.taglibs.standard.functions.Functions.class, "trim", new Class[] {java.lang.String.class});
}

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_set_var_value_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_varStatus_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_choose;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_fmt_formatNumber_var_value_pattern_nobody;
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
    _jspx_tagPool_c_forEach_varStatus_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_choose = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_fmt_formatNumber_var_value_pattern_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_otherwise = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_when_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_fmt_formatNumber_value_pattern_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_set_var_value_nobody.release();
    _jspx_tagPool_c_forEach_varStatus_var_items.release();
    _jspx_tagPool_c_choose.release();
    _jspx_tagPool_c_if_test.release();
    _jspx_tagPool_fmt_formatNumber_var_value_pattern_nobody.release();
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <title>V-HomeClean - Thông Tin Tài Khoản</title>\r\n");
      out.write("        <link\r\n");
      out.write("            rel=\"shortcut icon\"\r\n");
      out.write("            type=\"image/x-icon\"\r\n");
      out.write("            href=\"css/assets/img/icon.png\"\r\n");
      out.write("            />\r\n");
      out.write("        <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\r\n");
      out.write("        <meta content=\"\" name=\"keywords\">\r\n");
      out.write("        <meta content=\"\" name=\"description\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Favicon -->\r\n");
      out.write("        <link href=\"img/favicon.ico\" rel=\"icon\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Google Web Fonts -->\r\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@500&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css\">\r\n");
      out.write("        <!-- Icon Font Stylesheet -->\r\n");
      out.write("        <link href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("        <meta content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\" name=\"viewport\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("        <!--                <link rel=\"stylesheet\" type=\"text/css\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\">         -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css\">\r\n");
      out.write("\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/ProfileStyle.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\">\r\n");
      out.write("        <link href=\"lib/animate/animate.min.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"lib/owlcarousel/assets/owl.carousel.min.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css\">\r\n");
      out.write("        <style>\r\n");
      out.write("            .profile-image-label {\r\n");
      out.write("                display: block;\r\n");
      out.write("                width: 40px;\r\n");
      out.write("                height: 40px;\r\n");
      out.write("                border-radius: 50%;\r\n");
      out.write("                background-color: #f5f5f5;\r\n");
      out.write("                color: #009ce7;\r\n");
      out.write("                font-size: 20px;\r\n");
      out.write("                text-align: center;\r\n");
      out.write("                line-height: 40px;\r\n");
      out.write("                cursor: pointer;\r\n");
      out.write("                position: relative;\r\n");
      out.write("                bottom: 50px;\r\n");
      out.write("                left: 130px;\r\n");
      out.write("                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .profile-image-label:hover {\r\n");
      out.write("                background-color: #CCC;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            .full-section {\r\n");
      out.write("                width: 100%;\r\n");
      out.write("                height: 100vh; /* vh stands for viewport height */\r\n");
      out.write("            }\r\n");
      out.write("            @media (max-width: 768px){\r\n");
      out.write("                .profile-image-label{\r\n");
      out.write("                    position: relative;\r\n");
      out.write("                    bottom: 50px;\r\n");
      out.write("                    left: 130px;\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .container-fluid.page-header {\r\n");
      out.write("                position: relative;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .container-fluid.page-header:before {\r\n");
      out.write("                content: \"\";\r\n");
      out.write("                background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.3)), url(https://wordpress.horje.com/s-custom-registration-form-builder-with-submission-manager/assets/banner-772x250.jpg?rev=2081490);\r\n");
      out.write("                position: absolute;\r\n");
      out.write("                top: 0;\r\n");
      out.write("                left: 0;\r\n");
      out.write("                width: 100%;\r\n");
      out.write("                height: 100%;\r\n");
      out.write("                z-index: -1;\r\n");
      out.write("            }\r\n");
      out.write("            .avatar1 {\r\n");
      out.write("                width: 150px; /* Định dạng kích thước hình ảnh */\r\n");
      out.write("                height: 150px;\r\n");
      out.write("                border-radius: 50%; /* Định dạng góc cong tạo hiệu ứng tròn */\r\n");
      out.write("                overflow: hidden; /* Ẩn phần vượt ra khỏi hình tròn */\r\n");
      out.write("                margin-left: 30px;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .avatar1 img {\r\n");
      out.write("                width: 100%; /* Định dạng kích thước hình ảnh bên trong */\r\n");
      out.write("                height: 100%;\r\n");
      out.write("                object-fit: cover; /* Căn chỉnh hình ảnh để lấp đầy không gian */\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("        </style>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("\r\n");
      out.write("    <body>\r\n");
      out.write("\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navigation.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("        ");

            AccountDTO user = (AccountDTO) session.getAttribute("acc");
            if (user == null) {
                response.sendRedirect("login.jsp");
            }
        
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <section class=\" my-5\">\r\n");
      out.write("            <div class=\"container-fluid\">\r\n");
      out.write("                <div class=\"bg-white shadow rounded-lg d-block d-sm-flex w-full m-5\">\r\n");
      out.write("                    <div class=\"profile-tab-nav border-right\">\r\n");
      out.write("                        <div class=\"p-4\">\r\n");
      out.write("                            <div class=\" avatar1 img-circle\">\r\n");
      out.write("                                <img id=\"profileImage\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.image}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" alt=\"Image\" class=\"shadow\">\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <label for=\"profile-image\" class=\"profile-image-label\">\r\n");
      out.write("                                <input type=\"file\" id=\"profile-image\" name=\"image\" style=\"display: none;\">\r\n");
      out.write("                                <i class=\"fas fa-camera\"></i>\r\n");
      out.write("                            </label>\r\n");
      out.write("\r\n");
      out.write("                            <h4 class=\"text-center\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.fullName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h4>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"nav flex-column nav-pills\" id=\"v-pills-tab\" role=\"tablist\" aria-orientation=\"vertical\">\r\n");
      out.write("                            <a class=\"nav-link active\" id=\"account-tab\" data-toggle=\"pill\" href=\"#account\" role=\"tab\" aria-controls=\"account\" aria-selected=\"true\">\r\n");
      out.write("                                <i class=\"fa fa-home text-center mr-1\"></i> \r\n");
      out.write("                                Tài Khoản\r\n");
      out.write("                            </a>\r\n");
      out.write("                            <a class=\"nav-link\" id=\"password-tab\" data-toggle=\"pill\" href=\"#password\" role=\"tab\" aria-controls=\"password\" aria-selected=\"false\">\r\n");
      out.write("                                <i class=\"fa fa-key text-center mr-1\"></i> \r\n");
      out.write("                                Mật Khẩu\r\n");
      out.write("                            </a>\r\n");
      out.write("                            <a class=\"nav-link\" id=\"security-tab\" data-toggle=\"pill\" href=\"#security\" role=\"tab\" aria-controls=\"security\" aria-selected=\"false\">\r\n");
      out.write("                                <i class=\"fa fa-tv text-center mr-1\"></i> \r\n");
      out.write("                                Tổng Đơn\r\n");
      out.write("                            </a>\r\n");
      out.write("                            <a class=\"nav-link\" id=\"notification-tab\" data-toggle=\"pill\" href=\"#notification\" role=\"tab\" aria-controls=\"notification\" aria-selected=\"false\">\r\n");
      out.write("                                <i class=\"fa fa-bell text-center mr-1\"></i> \r\n");
      out.write("                                Thông Báo\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"tab-content p-4 p-md-5\" id=\"v-pills-tabContent\">\r\n");
      out.write("                        <div class=\"tab-pane fade show active\" id=\"account\" role=\"tabpanel\" aria-labelledby=\"account-tab\">\r\n");
      out.write("                            <form action=\"ProfilePageController\" method=\"post\">\r\n");
      out.write("                                <h3 class=\"mb-4\">Thông Tin Tài Khoản</h3>\r\n");
      out.write("                                <p><strong style=\"font-family: sans-serif;color: #00d747;\" >");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${message}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong></p>\r\n");
      out.write("                                <div class=\"row\">\r\n");
      out.write("                                    <div class=\"col-md-6\">\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <label style=\"color: black\">Họ và Tên</label>\r\n");
      out.write("                                            <input name=\"fullName\" type=\"text\" class=\"text-info form-control\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.fullName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-md-6\">\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <label style=\"color: black\">Ngày Sinh</label>\r\n");
      out.write("                                            <input name=\"dateOfBirth\" type=\"date\" class=\" text-info form-control\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.dateOfBirth}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-md-6\">\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <label style=\"color: black\">Email</label>\r\n");
      out.write("                                            <input name=\"email\" type=\"email\" class=\"text-info form-control\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.email}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-md-6\">\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <label style=\"color: black\">Số Điện Thoại</label>\r\n");
      out.write("                                            <input name=\"phone\" type=\"text\" class=\"text-info form-control\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.phone}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-md-6\">\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <label style=\"color: black\">Địa chỉ</label>\r\n");
      out.write("                                            <input name=\"address\" type=\"text\" class=\"text-info form-control\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.address}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-md-6\">\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <label style=\"color: black\">Giới tính</label>\r\n");
      out.write("                                            <select name=\"gender\" class=\"text-info form-control\">\r\n");
      out.write("                                                ");
      if (_jspx_meth_c_choose_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                                            </select>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <input class=\"btn btn-outline-primary\" style=\"width: 40%\" name=\"action\" value=\"Cập Nhật\" type=\"submit\" >\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </form>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                        <!--                        PASSWORD CHANGE -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                        ");

                            AccountDTO account = (AccountDTO) session.getAttribute("acc");
                            if (account != null) {

                        
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"tab-pane fade\" id=\"password\" role=\"tabpanel\" aria-labelledby=\"password-tab\">\r\n");
      out.write("                            <h3 class=\"mb-4\">Cài đặt mật khẩu</h3>\r\n");
      out.write("                            <div>\r\n");
      out.write("                                <p class=\"text-white animated slideInDown mb-4\"><strong style=\"color: #00d747;\" >");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${messagePass}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong></p>\r\n");
      out.write("                                <p class=\"text-white animated slideInDown mb-4\"><strong style=\"color: #f52626;\"> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ERRORPass}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong></p>\r\n");
      out.write("                                <form action=\"ProfilePageController\" method=\"POST\">\r\n");
      out.write("                                    <div class=\"row\">\r\n");
      out.write("                                        <div class=\"col-md-6\">\r\n");
      out.write("\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("\r\n");
      out.write("                                                <label style=\"color: black\" >Mật khẩu cũ</label>\r\n");
      out.write("                                                <input required=\"\" type=\"password\" name=\"password\" class=\"form-control\">\r\n");
      out.write("                                                <div class=\"old-pass\"> <i class=\"fa-solid fa-warning\"></i> Xác nhận mật khẩu cũ</div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"row\">\r\n");
      out.write("                                        <div class=\"col-md-6\">\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                                <label style=\"color: black\" >Mật khẩu mới</label>\r\n");
      out.write("                                                <input required=\"\" type=\"password\" name=\"newPassword\" class=\"form-control\">\r\n");
      out.write("                                                <div class=\"requirement mt-3\">\r\n");
      out.write("                                                    <p>Mật khẩu mới phải chứa:</p>\r\n");
      out.write("                                                    <ul class=\"requirement-list\" style=\"list-style-type: none;\">\r\n");
      out.write("                                                        <li><i class=\"fa-solid fa-warning\"></i><span>Ít nhất 8 ký tự</span></li>\r\n");
      out.write("                                                        <li><i class=\"fa-solid fa-warning\"></i><span>Ít nhất 1 số tự nhiên (0...9)</span></li>\r\n");
      out.write("                                                        <li><i class=\"fa-solid fa-warning\"></i><span>Ít nhất 1 ký tự thường (a...z)</span></li>\r\n");
      out.write("                                                        <li><i class=\"fa-solid fa-warning\"></i><span>Ít nhất 1 ký tự đặc biệt (!...$) </span></li>\r\n");
      out.write("                                                        <li><i class=\"fa-solid fa-warning\"></i><span>Ít nhất 1 ký tự in hoa (A...Z)</span></li>\r\n");
      out.write("                                                        <li><i class=\"fa-solid fa-warning\"></i><span>Không được giống mật khẩu cũ</span></li>\r\n");
      out.write("                                                    </ul>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"col-md-6\">\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                                <label style=\"color: black\">Xác nhận mật khẩu mới</label>\r\n");
      out.write("                                                <input required=\"\" type=\"password\" name=\"confirm\" class=\"form-control\">\r\n");
      out.write("                                                <p class=\"confirm-new-pass\"> <i class=\"fa-solid fa-warning\"></i>Xác nhận đúng mật khẩu mới!</p>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                    <input class=\"btn btn-outline-primary change-pass-button\" type=\"submit\" name=\"action\" value=\"Thay Đổi Mật Khẩu\"\r\n");
      out.write("                                           class=\"btn btn-block btn-info\">\r\n");
      out.write("                                </form>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                        <!-- đay là tab thông tin đơn hàng   -->\r\n");
      out.write("                        <div class=\"tab-pane fade\" id=\"security\" role=\"tabpanel\" aria-labelledby=\"security-tab\">\r\n");
      out.write("                            <h3 class=\"mb-4\">Tình Trạng Đơn Dịch Vụ</h3>\r\n");
      out.write("                            <div class=\"row\">\r\n");
      out.write("                                <table style=\"border: #004085 solid medium\" id=\"example_table1\" class=\"table table-hover text-center table-info\">\r\n");
      out.write("                                    <thead>\r\n");
      out.write("                                        <tr>\r\n");
      out.write("                                            <th>Dịch vụ</th>\r\n");
      out.write("                                            <th>Định Kì</th>\r\n");
      out.write("                                            <th>Thời gian</th>\r\n");
      out.write("                                            <th>Tổng chi phí</th>\r\n");
      out.write("                                            <th>Chỉnh sửa</th>\r\n");
      out.write("                                            <th>Tình Trạng</th>\r\n");
      out.write("                                        </tr>\r\n");
      out.write("                                    </thead>\r\n");
      out.write("                                    <tbody>\r\n");
      out.write("\r\n");
      out.write("                                        ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                                        </tbody>\r\n");
      out.write("                                </table>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"tab-pane fade\" id=\"notification\" role=\"tabpanel\" aria-labelledby=\"notification-tab\">\r\n");
      out.write("                            <h3 class=\"mb-4\">Thông Tin Thông Báo</h3>\r\n");
      out.write("                            <div class=\"form-group\">\r\n");
      out.write("\r\n");
      out.write("                                <table style=\"border: #004085 solid medium\" id=\"example_table3\" class=\"table table-hover table-bordered table-info\">\r\n");
      out.write("                                    <thead>\r\n");
      out.write("                                        <tr>\r\n");
      out.write("                                            <th class=\"text-center font-weight-600\">Hình Ảnh</th>\r\n");
      out.write("                                            <th class=\"text-center font-weight-600\">Nội Dung</th>\r\n");
      out.write("                                            <th class=\"text-center font-weight-600\">Thời Gian</th>\r\n");
      out.write("                                        </tr>\r\n");
      out.write("                                    </thead>\r\n");
      out.write("                                    <tbody>\r\n");
      out.write("                                        ");
      if (_jspx_meth_c_forEach_3(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                                    </tbody>\r\n");
      out.write("                                </table>\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        ");
            }
        
      out.write("\r\n");
      out.write("    </section>\r\n");
      out.write("\r\n");
      out.write("    <!-- JavaScript Libraries -->\r\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.4.1.min.js\"></script>\r\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\"></script>\r\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    <!-- Bootstrap js -->\r\n");
      out.write("    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    <!-- jQuery Datatable js -->\r\n");
      out.write("    <script src=\"https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js\"></script>\r\n");
      out.write("    <!-- Bootstrap Datatable js -->    \r\n");
      out.write("    <script src=\"https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js\"></script>\r\n");
      out.write("    <script src=\"lib/wow/wow.min.js\"></script>\r\n");
      out.write("    <script src=\"lib/easing/easing.min.js\"></script>\r\n");
      out.write("    <script src=\"lib/waypoints/waypoints.min.js\"></script>\r\n");
      out.write("    <script src=\"lib/owlcarousel/owl.carousel.min.js\"></script>\r\n");
      out.write("    <!--    //----------------------------------------------------------------------------------\r\n");
      out.write("    //cập nhật hình ảnh Real Time-->\r\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.6.0.min.js\"></script>\r\n");
      out.write("    <script>\r\n");
      out.write("        $(document).ready(function () {\r\n");
      out.write("            // Bắt sự kiện khi người dùng thay đổi trường input file\r\n");
      out.write("            $('#profile-image').change(function () {\r\n");
      out.write("                var fileInput = $('#profile-image')[0].files[0];\r\n");
      out.write("                if (fileInput) {\r\n");
      out.write("                    var formData = new FormData();\r\n");
      out.write("                    formData.append('image', fileInput);\r\n");
      out.write("\r\n");
      out.write("                    $.ajax({\r\n");
      out.write("                        url: 'UpdateImageProfileController',\r\n");
      out.write("                        type: 'POST',\r\n");
      out.write("                        data: formData,\r\n");
      out.write("                        processData: false,\r\n");
      out.write("                        contentType: false,\r\n");
      out.write("                        success: function (response) {\r\n");
      out.write("                            // Cập nhật hình ảnh mới trên trang web\r\n");
      out.write("                            $('#profileImage').attr('src', response);\r\n");
      out.write("                            $('#profile-image-2').attr('src', response);\r\n");
      out.write("                        },\r\n");
      out.write("                        error: function (xhr, status, error) {\r\n");
      out.write("                            // Xử lý lỗi (nếu có)\r\n");
      out.write("                            console.log(error);\r\n");
      out.write("                        }\r\n");
      out.write("                    });\r\n");
      out.write("                }\r\n");
      out.write("\r\n");
      out.write("            });\r\n");
      out.write("        });\r\n");
      out.write("    </script>\r\n");
      out.write("    <!-- cho data table -->\r\n");
      out.write("    <!-- jQuery Datatable js -->\r\n");
      out.write("    <script src=\"https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js\"></script>\r\n");
      out.write("    <!-- Bootstrap Datatable js -->    \r\n");
      out.write("    <script src=\"https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js\"></script>\r\n");
      out.write("    <script>\r\n");
      out.write("        $(document).ready(function () {\r\n");
      out.write("            $('#example_table1').DataTable({\r\n");
      out.write("                language: {\r\n");
      out.write("                    \"sProcessing\": \"Đang xử lý...\",\r\n");
      out.write("                    \"sLengthMenu\": \"Hiển thị _MENU_ dòng\",\r\n");
      out.write("                    \"sZeroRecords\": \"Không tìm thấy kết quả nào\",\r\n");
      out.write("                    \"sInfo\": \"Đang hiển thị _START_ đến _END_ trong tổng số _TOTAL_ mục\",\r\n");
      out.write("                    \"sInfoEmpty\": \"Đang hiển thị 0 đến 0 trong tổng số 0 mục\",\r\n");
      out.write("                    \"sInfoFiltered\": \"(được lọc từ _MAX_ mục)\",\r\n");
      out.write("                    \"sSearch\": \"Tìm kiếm:\",\r\n");
      out.write("                    \"oPaginate\": {\r\n");
      out.write("                        \"sFirst\": \"Đầu\",\r\n");
      out.write("                        \"sPrevious\": \"Trước\",\r\n");
      out.write("                        \"sNext\": \"Tiếp\",\r\n");
      out.write("                        \"sLast\": \"Cuối\"\r\n");
      out.write("                    },\r\n");
      out.write("                    \"sEmptyTable\": \"Không có dữ liệu\",\r\n");
      out.write("                    \"sLoadingRecords\": \"Đang tải...\",\r\n");
      out.write("                    \"oAria\": {\r\n");
      out.write("                        \"sSortAscending\": \": Sắp xếp cột tăng dần\",\r\n");
      out.write("                        \"sSortDescending\": \": Sắp xếp cột giảm dần\"\r\n");
      out.write("                    }\r\n");
      out.write("                },\r\n");
      out.write("                order: [[2, 'des']]\r\n");
      out.write("\r\n");
      out.write("            });\r\n");
      out.write("        });\r\n");
      out.write("\r\n");
      out.write("        $(document).ready(function () {\r\n");
      out.write("            $('#example_table2').DataTable({\r\n");
      out.write("                language: {\r\n");
      out.write("                    \"sProcessing\": \"Đang xử lý...\",\r\n");
      out.write("                    \"sLengthMenu\": \"Hiển thị _MENU_ dòng\",\r\n");
      out.write("                    \"sZeroRecords\": \"Không tìm thấy kết quả nào\",\r\n");
      out.write("                    \"sInfo\": \"Đang hiển thị _START_ đến _END_ trong tổng số _TOTAL_ mục\",\r\n");
      out.write("                    \"sInfoEmpty\": \"Đang hiển thị 0 đến 0 trong tổng số 0 mục\",\r\n");
      out.write("                    \"sInfoFiltered\": \"(được lọc từ _MAX_ mục)\",\r\n");
      out.write("                    \"sSearch\": \"Tìm kiếm:\",\r\n");
      out.write("                    \"oPaginate\": {\r\n");
      out.write("                        \"sFirst\": \"Đầu\",\r\n");
      out.write("                        \"sPrevious\": \"Trước\",\r\n");
      out.write("                        \"sNext\": \"Tiếp\",\r\n");
      out.write("                        \"sLast\": \"Cuối\"\r\n");
      out.write("                    },\r\n");
      out.write("                    \"sEmptyTable\": \"Không có dữ liệu\",\r\n");
      out.write("                    \"sLoadingRecords\": \"Đang tải...\",\r\n");
      out.write("                    \"oAria\": {\r\n");
      out.write("                        \"sSortAscending\": \": Sắp xếp cột tăng dần\",\r\n");
      out.write("                        \"sSortDescending\": \": Sắp xếp cột giảm dần\"\r\n");
      out.write("                    }\r\n");
      out.write("                }\r\n");
      out.write("            });\r\n");
      out.write("        });\r\n");
      out.write("\r\n");
      out.write("        $(document).ready(function () {\r\n");
      out.write("            $('#example_table3').DataTable({\r\n");
      out.write("                language: {\r\n");
      out.write("                    \"sProcessing\": \"Đang xử lý...\",\r\n");
      out.write("                    \"sLengthMenu\": \"Hiển thị _MENU_ dòng\",\r\n");
      out.write("                    \"sZeroRecords\": \"Không tìm thấy kết quả nào\",\r\n");
      out.write("                    \"sInfo\": \"Đang hiển thị _START_ đến _END_ trong tổng số _TOTAL_ mục\",\r\n");
      out.write("                    \"sInfoEmpty\": \"Đang hiển thị 0 đến 0 trong tổng số 0 mục\",\r\n");
      out.write("                    \"sInfoFiltered\": \"(được lọc từ _MAX_ mục)\",\r\n");
      out.write("                    \"sSearch\": \"Tìm kiếm:\",\r\n");
      out.write("                    \"oPaginate\": {\r\n");
      out.write("                        \"sFirst\": \"Đầu\",\r\n");
      out.write("                        \"sPrevious\": \"Trước\",\r\n");
      out.write("                        \"sNext\": \"Tiếp\",\r\n");
      out.write("                        \"sLast\": \"Cuối\"\r\n");
      out.write("                    },\r\n");
      out.write("                    \"sEmptyTable\": \"Không có dữ liệu\",\r\n");
      out.write("                    \"sLoadingRecords\": \"Đang tải...\",\r\n");
      out.write("                    \"oAria\": {\r\n");
      out.write("                        \"sSortAscending\": \": Sắp xếp cột tăng dần\",\r\n");
      out.write("                        \"sSortDescending\": \": Sắp xếp cột giảm dần\"\r\n");
      out.write("                    }\r\n");
      out.write("                }\r\n");
      out.write("            });\r\n");
      out.write("        });\r\n");
      out.write("    </script>\r\n");
      out.write("    <!-- Template Javascript -->\r\n");
      out.write("    <script src=\"js/main.js\"></script>\r\n");
      out.write("    <!--phan nay danh cho thay doi mat khau-->\r\n");
      out.write("    <script>\r\n");
      out.write("        var status = \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${status}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\";\r\n");
      out.write("\r\n");
      out.write("        // Auto-click vào tab \"password\" nếu giá trị của biến status là \"change-password\"\r\n");
      out.write("        if (status === \"change-password\") {\r\n");
      out.write("            window.addEventListener('DOMContentLoaded', function () {\r\n");
      out.write("                document.getElementById('password-tab').click();\r\n");
      out.write("                status = \"\";\r\n");
      out.write("            });\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        if (status === \"feedBack\") {\r\n");
      out.write("            window.addEventListener('DOMContentLoaded', function () {\r\n");
      out.write("                document.getElementById('security-tab').click();\r\n");
      out.write("                status = \"\";\r\n");
      out.write("            });\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        if (status === \"checkNoti\") {\r\n");
      out.write("            window.addEventListener('DOMContentLoaded', function () {\r\n");
      out.write("                document.getElementById('security-tab').click();\r\n");
      out.write("                status = \"\";\r\n");
      out.write("            });\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        // Khởi tạo biến để lưu trạng thái của mỗi điều kiện\r\n");
      out.write("        let isOldPasswordValid = false;\r\n");
      out.write("        let isNewPasswordValid = false;\r\n");
      out.write("        let isConfirmationValid = false;\r\n");
      out.write("\r\n");
      out.write("// Check nhập mật khẩu cũ\r\n");
      out.write("        const passwordConfirmation = document.querySelector('.old-pass');\r\n");
      out.write("        passwordConfirmation.style.display = 'none';\r\n");
      out.write("        const oldPasswordInput = document.querySelector('input[name=\"password\"]');\r\n");
      out.write("        oldPasswordInput.addEventListener('input', checkOldPassword);\r\n");
      out.write("\r\n");
      out.write("        function checkOldPassword(event) {\r\n");
      out.write("            const oldPassword = event.target.value;\r\n");
      out.write("\r\n");
      out.write("            // Kiểm tra mật khẩu cũ có khớp với giá trị từ biến `acc.password` hay không\r\n");
      out.write("            if (oldPassword === '");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.password}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("') {\r\n");
      out.write("                passwordConfirmation.innerHTML = '<i class=\"fas fa-check\"></i> Xác nhận mật khẩu cũ';\r\n");
      out.write("                passwordConfirmation.style.color = '#00d747';\r\n");
      out.write("                isOldPasswordValid = true; // Đánh dấu mật khẩu cũ là hợp lệ\r\n");
      out.write("            } else {\r\n");
      out.write("                passwordConfirmation.innerHTML = '<i class=\"fa-solid fa-warning\"></i> Xác nhận mật khẩu cũ';\r\n");
      out.write("                passwordConfirmation.style.color = 'red';\r\n");
      out.write("                isOldPasswordValid = false; // Đánh dấu mật khẩu cũ không hợp lệ\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            if (oldPassword !== '') {\r\n");
      out.write("                passwordConfirmation.style.display = 'block';\r\n");
      out.write("            } else {\r\n");
      out.write("                passwordConfirmation.style.display = 'none';\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            // Kiểm tra trạng thái tổng hợp và kích hoạt/disabled nút\r\n");
      out.write("            updateButtonState();\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("// Check nhập mật khẩu mới\r\n");
      out.write("        const newPasswordInput = document.querySelector('input[name=\"newPassword\"]');\r\n");
      out.write("        const requirementList = document.querySelector('.requirement-list');\r\n");
      out.write("        const requirementItems = requirementList.querySelectorAll('li');\r\n");
      out.write("        requirementList.style.display = 'none';\r\n");
      out.write("        newPasswordInput.addEventListener('input', checkNewPassword);\r\n");
      out.write("        newPasswordInput.addEventListener('focus', showRequirementList);\r\n");
      out.write("\r\n");
      out.write("        function checkNewPassword(event) {\r\n");
      out.write("            const newPassword = event.target.value;\r\n");
      out.write("\r\n");
      out.write("            // Kiểm tra các yêu cầu cho mật khẩu mới\r\n");
      out.write("            const lengthRequirement = newPassword.length >= 8;\r\n");
      out.write("            const numberRequirement = /\\d/.test(newPassword);\r\n");
      out.write("            const lowercaseRequirement = /[a-z]/.test(newPassword);\r\n");
      out.write("            const specialCharRequirement = /[!@#$%^&*]/.test(newPassword);\r\n");
      out.write("            const uppercaseRequirement = /[A-Z]/.test(newPassword);\r\n");
      out.write("            const notEqualRequirement = newPassword !== '");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.password}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("';\r\n");
      out.write("\r\n");
      out.write("            // Hiển thị requirementList cho các yêu cầu thỏa mãn\r\n");
      out.write("            requirementItems.forEach((item, index) => {\r\n");
      out.write("                const icon = item.querySelector('i');\r\n");
      out.write("\r\n");
      out.write("                if (index === 0 && lengthRequirement) {\r\n");
      out.write("                    icon.classList.remove('fa-warning');\r\n");
      out.write("                    icon.classList.add('fa-check');\r\n");
      out.write("                    item.style.color = '#00d747';\r\n");
      out.write("                } else if (index === 1 && numberRequirement) {\r\n");
      out.write("                    icon.classList.remove('fa-warning');\r\n");
      out.write("                    icon.classList.add('fa-check');\r\n");
      out.write("                    item.style.color = '#00d747';\r\n");
      out.write("                } else if (index === 2 && lowercaseRequirement) {\r\n");
      out.write("                    icon.classList.remove('fa-warning');\r\n");
      out.write("                    icon.classList.add('fa-check');\r\n");
      out.write("                    item.style.color = '#00d747';\r\n");
      out.write("                } else if (index === 3 && specialCharRequirement) {\r\n");
      out.write("                    icon.classList.remove('fa-warning');\r\n");
      out.write("                    icon.classList.add('fa-check');\r\n");
      out.write("                    item.style.color = '#00d747';\r\n");
      out.write("                } else if (index === 4 && uppercaseRequirement) {\r\n");
      out.write("                    icon.classList.remove('fa-warning');\r\n");
      out.write("                    icon.classList.add('fa-check');\r\n");
      out.write("                    item.style.color = '#00d747';\r\n");
      out.write("                } else if (index === 5 && notEqualRequirement) {\r\n");
      out.write("                    icon.classList.remove('fa-warning');\r\n");
      out.write("                    icon.classList.add('fa-check');\r\n");
      out.write("                    item.style.color = '#00d747';\r\n");
      out.write("                } else {\r\n");
      out.write("                    icon.classList.remove('fa-check');\r\n");
      out.write("                    icon.classList.add('fa-warning');\r\n");
      out.write("                    item.style.color = 'red';\r\n");
      out.write("                }\r\n");
      out.write("            });\r\n");
      out.write("\r\n");
      out.write("            if (newPassword !== '') {\r\n");
      out.write("                requirementList.style.display = 'block';\r\n");
      out.write("                isNewPasswordValid = lengthRequirement && numberRequirement && lowercaseRequirement && specialCharRequirement && uppercaseRequirement && notEqualRequirement;\r\n");
      out.write("            } else {\r\n");
      out.write("                requirementList.style.display = 'none';\r\n");
      out.write("                isNewPasswordValid = false;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            // Kiểm tra trạng thái tổng hợp và kích hoạt/disabled nút\r\n");
      out.write("            updateButtonState();\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        function showRequirementList() {\r\n");
      out.write("            if (newPasswordInput.value !== '') {\r\n");
      out.write("                requirementList.style.display = 'block';\r\n");
      out.write("            } else {\r\n");
      out.write("                requirementList.style.display = 'none';\r\n");
      out.write("            }\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("// Confirm pass\r\n");
      out.write("        const confirmInput = document.querySelector('input[name=\"confirm\"]');\r\n");
      out.write("        const confirmMessage = document.querySelector('.confirm-new-pass');\r\n");
      out.write("\r\n");
      out.write("        confirmMessage.style.display = 'none';\r\n");
      out.write("\r\n");
      out.write("        confirmInput.addEventListener('input', checkConfirmation);\r\n");
      out.write("\r\n");
      out.write("        function checkConfirmation(event) {\r\n");
      out.write("            const newPassword = document.querySelector('input[name=\"newPassword\"]').value;\r\n");
      out.write("            const confirmation = event.target.value;\r\n");
      out.write("\r\n");
      out.write("            if (confirmation === newPassword) {\r\n");
      out.write("                confirmMessage.innerHTML = '<i class=\"fa-solid fa-check\"></i> Xác nhận đúng mật khẩu mới!';\r\n");
      out.write("                confirmMessage.style.color = '#00d747';\r\n");
      out.write("                isConfirmationValid = true; // Đánh dấu xác nhận mật khẩu mới là hợp lệ\r\n");
      out.write("            } else {\r\n");
      out.write("                confirmMessage.innerHTML = '<i class=\"fa-solid fa-warning\"></i> Xác nhận đúng mật khẩu mới!';\r\n");
      out.write("                confirmMessage.style.color = 'red';\r\n");
      out.write("                isConfirmationValid = false; // Đánh dấu xác nhận mật khẩu mới không hợp lệ\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            if (confirmation !== '') {\r\n");
      out.write("                confirmMessage.style.display = 'block';\r\n");
      out.write("            } else {\r\n");
      out.write("                confirmMessage.style.display = 'none';\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            // Kiểm tra trạng thái tổng hợp và kích hoạt/disabled nút\r\n");
      out.write("            updateButtonState();\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("// Cập nhật trạng thái của nút dựa trên kết quả kiểm tra\r\n");
      out.write("        function updateButtonState() {\r\n");
      out.write("            const button = document.querySelector('.change-pass-button');\r\n");
      out.write("            const isButtonDisabled = !(isOldPasswordValid && isNewPasswordValid && isConfirmationValid);\r\n");
      out.write("\r\n");
      out.write("            button.disabled = isButtonDisabled;\r\n");
      out.write("        }\r\n");
      out.write("    </script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.js\"></script>\r\n");
      out.write("    <script>\r\n");
      out.write("        $(document).ready(function () {\r\n");
      out.write("            // Khởi tạo plugin rateYo\r\n");
      out.write("            $(\"#rateYo\").rateYo();\r\n");
      out.write("\r\n");
      out.write("            // Gắn sự kiện cho plugin rateYo khi người dùng thay đổi đánh giá\r\n");
      out.write("            $(\"#rateYo\").rateYo(\"option\", \"onSet\", function (rating) {\r\n");
      out.write("                if (rating > 0) {\r\n");
      out.write("                    $(\"#submitBtn\").prop(\"disabled\", false); // Enable button khi có đánh giá\r\n");
      out.write("                } else {\r\n");
      out.write("                    $(\"#submitBtn\").prop(\"disabled\", true); // Disable button khi chưa có đánh giá\r\n");
      out.write("                }\r\n");
      out.write("                $(\"#ratingInput\").val(rating); // Gán giá trị đánh giá vào trường ẩn (hidden input)\r\n");
      out.write("            });\r\n");
      out.write("\r\n");
      out.write("        ");
      if (_jspx_meth_c_forEach_6(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("        });\r\n");
      out.write("    </script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
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
        out.write("\r\n");
        out.write("                                                    ");
        if (_jspx_meth_c_when_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("                                                    ");
        if (_jspx_meth_c_when_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("                                                    ");
        if (_jspx_meth_c_otherwise_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\r\n");
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
        out.write("\r\n");
        out.write("                                                        <option value=\"Male\" selected>Nam</option>\r\n");
        out.write("                                                        <option value=\"Female\">Nữ</option>\r\n");
        out.write("                                                        <option value=\"Other\">Khác</option>\r\n");
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
        out.write("\r\n");
        out.write("                                                        <option value=\"Male\">Nam</option>\r\n");
        out.write("                                                        <option value=\"Female\" selected>Nữ</option>\r\n");
        out.write("                                                        <option value=\"Other\">Khác</option>\r\n");
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
        out.write("\r\n");
        out.write("                                                        <option value=\"Male\">Nam</option>\r\n");
        out.write("                                                        <option value=\"Female\">Nữ</option>\r\n");
        out.write("                                                        <option value=\"Other\" selected>Khác</option>\r\n");
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
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_varStatus_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setVar("booking");
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ListB}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVarStatus("loop");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                                            ");
          if (_jspx_meth_c_set_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("                                            <tr>\r\n");
          out.write("                                                <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${booking.serviceName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("                                                <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${booking.typeOfService}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("                                                <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${booking.bookingDate}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("                                                <td>");
          if (_jspx_meth_fmt_formatNumber_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("</td>\r\n");
          out.write("                                                <td>\r\n");
          out.write("                                                    <button type=\"button\" class=\"btn btn-outline-info\" data-toggle=\"modal\" data-target=\"#b");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${booking.bookingID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">\r\n");
          out.write("                                                        Xem Thêm\r\n");
          out.write("                                                    </button>\r\n");
          out.write("                                                </td>\r\n");
          out.write("                                                <!-- Modal -->\r\n");
          out.write("                                        <div class=\"modal fade\" id=\"b");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${booking.bookingID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalCenterTitle\" aria-hidden=\"true\">\r\n");
          out.write("                                            <div class=\"modal-dialog modal-dialog-centered modal-lg\" role=\"document\">\r\n");
          out.write("                                                <div class=\"modal-content\">\r\n");
          out.write("                                                    <div class=\"modal-header\">\r\n");
          out.write("                                                        <h5 class=\"modal-title\" id=\"exampleModalLongTitle\">Chi tiết đơn của khách hàng</h5>\r\n");
          out.write("\r\n");
          out.write("\r\n");
          out.write("                                                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\r\n");
          out.write("                                                            <span aria-hidden=\"true\">&times;</span>\r\n");
          out.write("                                                        </button>\r\n");
          out.write("                                                    </div>\r\n");
          out.write("                                                    <div class=\"modal-body\">\r\n");
          out.write("                                                        <div class=\"container-fluid\">\r\n");
          out.write("                                                            <div class=\"row\">\r\n");
          out.write("                                                                <div class=\"col-md-6\">\r\n");
          out.write("                                                                    Thông tin nhân viên\r\n");
          out.write("                                                                    ");
          if (_jspx_meth_c_set_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("                                                                    ");
          if (_jspx_meth_c_set_2((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("                                                                    ");
          if (_jspx_meth_c_set_3((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("                                                                    ");
          if (_jspx_meth_c_set_4((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("                                                                    ");
          if (_jspx_meth_c_set_5((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("                                                                    ");
          if (_jspx_meth_c_forEach_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("                                                                    ");
          if (_jspx_meth_c_choose_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("\r\n");
          out.write("\r\n");
          out.write("                                                                </div>\r\n");
          out.write("                                                                <div class=\"col-md-6\">\r\n");
          out.write("                                                                    Thông tin đơn\r\n");
          out.write("                                                                    <div class=\"card\">\r\n");
          out.write("                                                                        <div class=\"card-body\">\r\n");
          out.write("                                                                            <form action=\"#\">\r\n");
          out.write("                                                                                <div class=\"form-group\">\r\n");
          out.write("                                                                                    <label class=\"text-info\">Thời gian</label>\r\n");
          out.write("                                                                                    <input style=\"color: #000;\" readonly=\"\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${fn:substring(booking.bookingDate, 11, 16)}", java.lang.String.class, (PageContext)_jspx_page_context, _jspx_fnmap_1));
          out.write("\" type=\"text\" class=\"form-control text-center\">\r\n");
          out.write("                                                                                </div>\r\n");
          out.write("                                                                                <div class=\"form-group\">\r\n");
          out.write("                                                                                    <label class=\"text-info\">Ngày (mm-dd-yyyy)</label>\r\n");
          out.write("                                                                                    ");
          if (_jspx_meth_c_set_11((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("                                                                                    ");
          if (_jspx_meth_c_set_12((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("\r\n");
          out.write("                                                                                    ");
          if (_jspx_meth_c_set_13((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("                                                                                    ");
          if (_jspx_meth_c_choose_2((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("\r\n");
          out.write("                                                                                    ");
          if (_jspx_meth_c_set_15((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("                                                                                    ");
          if (_jspx_meth_c_choose_3((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("                                                                                    ");
          if (_jspx_meth_c_set_17((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("                                                                                    <input style=\"color: #000;\" readonly=\"\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${formattedDateString}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" type=\"text\" class=\"form-control text-center\">\r\n");
          out.write("                                                                                </div>\r\n");
          out.write("                                                                                <div class=\"form-group\">\r\n");
          out.write("                                                                                    ");
          if (_jspx_meth_c_set_18((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("                                                                                    <label class=\"text-info\">Số phòng</label>\r\n");
          out.write("                                                                                    <input style=\"color: #000;\" readonly=\"\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${fn:trim(addressArray[0])}", java.lang.String.class, (PageContext)_jspx_page_context, _jspx_fnmap_3));
          out.write("\" type=\"text\" class=\"form-control text-center\">\r\n");
          out.write("                                                                                </div>\r\n");
          out.write("                                                                                <div class=\"form-group\">\r\n");
          out.write("                                                                                    <label class=\"text-info\">Khu vực</label>\r\n");
          out.write("                                                                                    <input style=\"color: #000;\" readonly=\"\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${fn:trim(addressArray[1])}", java.lang.String.class, (PageContext)_jspx_page_context, _jspx_fnmap_3));
          out.write("\" type=\"text\" class=\"form-control text-center\">\r\n");
          out.write("                                                                                </div>\r\n");
          out.write("\r\n");
          out.write("                                                                                <div class=\"form-group\">\r\n");
          out.write("                                                                                    <label class=\"text-info\">Định kì</label>\r\n");
          out.write("                                                                                    <input style=\"color: #000;\" readonly=\"\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${booking.typeOfService}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" type=\"text\" class=\"form-control text-center\">\r\n");
          out.write("                                                                                </div>\r\n");
          out.write("\r\n");
          out.write("                                                                                <div class=\"form-group\">\r\n");
          out.write("                                                                                    ");
          if (_jspx_meth_fmt_formatNumber_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("                                                                                    <label class=\"text-info\">Tổng chi phí</label>\r\n");
          out.write("                                                                                    <div style=\"display: flex\" class=\" text-center col-md-12\">\r\n");
          out.write("                                                                                        <input style=\"color: #000;\" readonly=\"\"\r\n");
          out.write("                                                                                               required=\"\"\r\n");
          out.write("                                                                                               name=\"bookingPrice\"\r\n");
          out.write("                                                                                               type=\"text\"\r\n");
          out.write("                                                                                               class=\"form-control text-center\"\r\n");
          out.write("                                                                                               value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${formattedPrice}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"\r\n");
          out.write("                                                                                               />\r\n");
          out.write("                                                                                        <span style=\"position: absolute;\" class=\"btn btn-success\">VND</span>     \r\n");
          out.write("                                                                                    </div>\r\n");
          out.write("\r\n");
          out.write("                                                                                </div>\r\n");
          out.write("                                                                            </form>\r\n");
          out.write("                                                                        </div>\r\n");
          out.write("                                                                    </div>\r\n");
          out.write("                                                                </div>\r\n");
          out.write("                                                                <div class=\"col-md-12\">\r\n");
          out.write("                                                                    <div class=\"card\">\r\n");
          out.write("                                                                        <div class=\"card-body\">\r\n");
          out.write("                                                                            <div style=\"margin: auto;margin-top: 10px;\" class=\"text-center\" id=\"rateYo");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${booking.bookingID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"></div>\r\n");
          out.write("                                                                            <div class=\"text-center text-black\" style=\"color: #000\">\r\n");
          out.write("                                                                                ");
          if (_jspx_meth_c_forEach_2((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("                                                                            </div>\r\n");
          out.write("                                                                        </div>\r\n");
          out.write("                                                                    </div>\r\n");
          out.write("                                                                </div>\r\n");
          out.write("\r\n");
          out.write("                                                            </div>\r\n");
          out.write("\r\n");
          out.write("\r\n");
          out.write("                                                        </div>\r\n");
          out.write("                                                        <div style=\"display: flex; justify-content: space-between\" class=\"modal-footer\">\r\n");
          out.write("                                                            ");
          if (_jspx_meth_c_if_2((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("                                                        </div>\r\n");
          out.write("\r\n");
          out.write("                                                    </div>\r\n");
          out.write("                                                </div>\r\n");
          out.write("                                            </div>\r\n");
          out.write("                                            <div class=\"modal fade\" id=\"h");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${loop.index}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" tabindex=\"-2\" role=\"dialog\" aria-labelledby=\"exampleModalCenterTitle\" aria-hidden=\"true\">\r\n");
          out.write("                                                <div class=\"modal-dialog modal-dialog-centered\" role=\"document\">\r\n");
          out.write("                                                    <div class=\"modal-content\">\r\n");
          out.write("                                                        <div class=\"modal-header\">\r\n");
          out.write("                                                            <h5 style=\"color: black;\" class=\"modal-title\" id=\"exampleModalLongTitle\">Phản hồi từ quý khách</h5>\r\n");
          out.write("                                                            <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\r\n");
          out.write("                                                                <span aria-hidden=\"true\">&times;</span>\r\n");
          out.write("                                                            </button>\r\n");
          out.write("                                                        </div>\r\n");
          out.write("                                                        <form action=\"ProfilePageController\" method=\"POST\">\r\n");
          out.write("                                                            <div style=\"color: black;\" class=\"modal-body\">\r\n");
          out.write("                                                                Quý khách có chắc chắn là hủy đơn hàng này không ạ ?\r\n");
          out.write("                                                                <div class=\"col-lg-12 col-md-6 wow fadeInUp mt-3\" data-wow-delay=\"0.3s\">\r\n");
          out.write("                                                                    <input name=\"bookingID\" type=\"hidden\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${booking.bookingID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">\r\n");
          out.write("                                                                    <div class=\"row g-3\">\r\n");
          out.write("                                                                        <div class=\"col-12\">\r\n");
          out.write("                                                                            <div class=\"form-floating\">\r\n");
          out.write("                                                                                <textarea name=\"feedbackDetail\" class=\"form-control bg-light border-0\" placeholder=\"Leave a message here\" id=\"message\" style=\"height: 100px\"></textarea>\r\n");
          out.write("                                                                                <label for=\"message\">Hãy cho chúng tôi biết lý do hủy đơn</label>\r\n");
          out.write("                                                                            </div>\r\n");
          out.write("                                                                        </div>\r\n");
          out.write("                                                                    </div>\r\n");
          out.write("                                                                </div>\r\n");
          out.write("                                                            </div>\r\n");
          out.write("                                                            <div style=\"display: flex; justify-content: space-between\" class=\"modal-footer\">\r\n");
          out.write("                                                                <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Đóng</button>\r\n");
          out.write("                                                                <input id=\"submitBtn\" name=\"action\" value=\"Hủy\" type=\"submit\" class=\"btn btn-primary\">\r\n");
          out.write("                                                            </div>\r\n");
          out.write("                                                        </form>\r\n");
          out.write("                                                    </div>\r\n");
          out.write("                                                </div>\r\n");
          out.write("                                            </div>\r\n");
          out.write("                                            <td>\r\n");
          out.write("                                                ");
          if (_jspx_meth_c_if_3((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("                                                ");
          if (_jspx_meth_c_if_4((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("                                                ");
          if (_jspx_meth_c_if_5((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("                                                ");
          if (_jspx_meth_c_if_6((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("                                                ");
          if (_jspx_meth_c_if_7((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("                                                ");
          if (_jspx_meth_c_if_8((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("                                            </td>\r\n");
          out.write("                                            </tr>\r\n");
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
      _jspx_tagPool_c_forEach_varStatus_var_items.reuse(_jspx_th_c_forEach_0);
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

  private boolean _jspx_meth_c_set_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_1 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_1.setPageContext(_jspx_page_context);
    _jspx_th_c_set_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_set_1.setVar("staffName");
    _jspx_th_c_set_1.setValue(new String(""));
    int _jspx_eval_c_set_1 = _jspx_th_c_set_1.doStartTag();
    if (_jspx_th_c_set_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_1);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_1);
    return false;
  }

  private boolean _jspx_meth_c_set_2(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_2 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_2.setPageContext(_jspx_page_context);
    _jspx_th_c_set_2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_set_2.setVar("staffAge");
    _jspx_th_c_set_2.setValue(new String(""));
    int _jspx_eval_c_set_2 = _jspx_th_c_set_2.doStartTag();
    if (_jspx_th_c_set_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_2);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_2);
    return false;
  }

  private boolean _jspx_meth_c_set_3(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_3 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_3.setPageContext(_jspx_page_context);
    _jspx_th_c_set_3.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_set_3.setVar("staffEmail");
    _jspx_th_c_set_3.setValue(new String(""));
    int _jspx_eval_c_set_3 = _jspx_th_c_set_3.doStartTag();
    if (_jspx_th_c_set_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_3);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_3);
    return false;
  }

  private boolean _jspx_meth_c_set_4(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_4 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_4.setPageContext(_jspx_page_context);
    _jspx_th_c_set_4.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_set_4.setVar("staffPhone");
    _jspx_th_c_set_4.setValue(new String(""));
    int _jspx_eval_c_set_4 = _jspx_th_c_set_4.doStartTag();
    if (_jspx_th_c_set_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_4);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_4);
    return false;
  }

  private boolean _jspx_meth_c_set_5(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_5 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_5.setPageContext(_jspx_page_context);
    _jspx_th_c_set_5.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_set_5.setVar("staffImage");
    _jspx_th_c_set_5.setValue(new String(""));
    int _jspx_eval_c_set_5 = _jspx_th_c_set_5.doStartTag();
    if (_jspx_th_c_set_5.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_5);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_5);
    return false;
  }

  private boolean _jspx_meth_c_forEach_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${allAccounts}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_1.setVar("o");
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                                                                        ");
          if (_jspx_meth_c_if_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_1, _jspx_page_context, _jspx_push_body_count_c_forEach_1))
            return true;
          out.write("\r\n");
          out.write("                                                                    ");
          int evalDoAfterBody = _jspx_th_c_forEach_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_1.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_1);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_1, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_1)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_1);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${booking.staffID == o.accountID}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                                            ");
        if (_jspx_meth_c_set_6((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_0, _jspx_page_context, _jspx_push_body_count_c_forEach_1))
          return true;
        out.write("\r\n");
        out.write("                                                                            ");
        if (_jspx_meth_c_set_7((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_0, _jspx_page_context, _jspx_push_body_count_c_forEach_1))
          return true;
        out.write("\r\n");
        out.write("                                                                            ");
        if (_jspx_meth_c_set_8((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_0, _jspx_page_context, _jspx_push_body_count_c_forEach_1))
          return true;
        out.write("\r\n");
        out.write("                                                                            ");
        if (_jspx_meth_c_set_9((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_0, _jspx_page_context, _jspx_push_body_count_c_forEach_1))
          return true;
        out.write("\r\n");
        out.write("                                                                            ");
        if (_jspx_meth_c_set_10((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_0, _jspx_page_context, _jspx_push_body_count_c_forEach_1))
          return true;
        out.write("\r\n");
        out.write("                                                                        ");
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

  private boolean _jspx_meth_c_set_6(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_1)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_6 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_6.setPageContext(_jspx_page_context);
    _jspx_th_c_set_6.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_0);
    _jspx_th_c_set_6.setVar("staffName");
    _jspx_th_c_set_6.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.fullName}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_6 = _jspx_th_c_set_6.doStartTag();
    if (_jspx_th_c_set_6.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_6);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_6);
    return false;
  }

  private boolean _jspx_meth_c_set_7(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_1)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_7 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_7.setPageContext(_jspx_page_context);
    _jspx_th_c_set_7.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_0);
    _jspx_th_c_set_7.setVar("staffAge");
    _jspx_th_c_set_7.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.age}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_7 = _jspx_th_c_set_7.doStartTag();
    if (_jspx_th_c_set_7.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_7);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_7);
    return false;
  }

  private boolean _jspx_meth_c_set_8(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_1)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_8 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_8.setPageContext(_jspx_page_context);
    _jspx_th_c_set_8.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_0);
    _jspx_th_c_set_8.setVar("staffEmail");
    _jspx_th_c_set_8.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.email}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_8 = _jspx_th_c_set_8.doStartTag();
    if (_jspx_th_c_set_8.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_8);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_8);
    return false;
  }

  private boolean _jspx_meth_c_set_9(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_1)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_9 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_9.setPageContext(_jspx_page_context);
    _jspx_th_c_set_9.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_0);
    _jspx_th_c_set_9.setVar("staffPhone");
    _jspx_th_c_set_9.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.phone}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_9 = _jspx_th_c_set_9.doStartTag();
    if (_jspx_th_c_set_9.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_9);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_9);
    return false;
  }

  private boolean _jspx_meth_c_set_10(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_1)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_10 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_10.setPageContext(_jspx_page_context);
    _jspx_th_c_set_10.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_0);
    _jspx_th_c_set_10.setVar("staffImage");
    _jspx_th_c_set_10.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.image}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_10 = _jspx_th_c_set_10.doStartTag();
    if (_jspx_th_c_set_10.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_10);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_10);
    return false;
  }

  private boolean _jspx_meth_c_choose_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:choose
    org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_choose_1 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _jspx_tagPool_c_choose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
    _jspx_th_c_choose_1.setPageContext(_jspx_page_context);
    _jspx_th_c_choose_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    int _jspx_eval_c_choose_1 = _jspx_th_c_choose_1.doStartTag();
    if (_jspx_eval_c_choose_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                                        ");
        if (_jspx_meth_c_when_2((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_1, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
          return true;
        out.write("\r\n");
        out.write("                                                                        ");
        if (_jspx_meth_c_otherwise_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_1, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
          return true;
        out.write("\r\n");
        out.write("                                                                    ");
        int evalDoAfterBody = _jspx_th_c_choose_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_choose_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_1);
      return true;
    }
    _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_1);
    return false;
  }

  private boolean _jspx_meth_c_when_2(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_1, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_when_2 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _jspx_tagPool_c_when_test.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    _jspx_th_c_when_2.setPageContext(_jspx_page_context);
    _jspx_th_c_when_2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_1);
    _jspx_th_c_when_2.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${empty staffName}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_when_2 = _jspx_th_c_when_2.doStartTag();
    if (_jspx_eval_c_when_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                                            <div class=\"p-3 text-center\">\r\n");
        out.write("                                                                                <h4 class=\"text-center text-danger\">Hiện tại chưa có nhân viên phụ trách</h4>\r\n");
        out.write("                                                                                <img class=\"img-thumbnail\" style=\"width: 70%; height: 45%;\" src=\"img/thangQR.jpg\">\r\n");
        out.write("                                                                                <p style=\"color: black;\">Nếu bạn thanh toàn rồi, quý khách vui lòng đợi, chúng tôi sẽ xác nhận đơn cho quý khách sớm nhất có thể</p>\r\n");
        out.write("                                                                                <p style=\"color: black;\">Chủ tài khoản: LE QUOC THANG</p>\r\n");
        out.write("                                                                                <p style=\"color: black;\">Cú pháp: Thanh toan - [mã đơn hàng]</p>\r\n");
        out.write("                                                                                <p style=\"color: red;\">Lưu ý: Chúng tôi chỉ chấp nhận thanh toán qua online.</p>\r\n");
        out.write("                                                                            </div>\r\n");
        out.write("                                                                        ");
        int evalDoAfterBody = _jspx_th_c_when_2.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_when_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_2);
      return true;
    }
    _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_2);
    return false;
  }

  private boolean _jspx_meth_c_otherwise_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_1, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:otherwise
    org.apache.taglibs.standard.tag.common.core.OtherwiseTag _jspx_th_c_otherwise_1 = (org.apache.taglibs.standard.tag.common.core.OtherwiseTag) _jspx_tagPool_c_otherwise.get(org.apache.taglibs.standard.tag.common.core.OtherwiseTag.class);
    _jspx_th_c_otherwise_1.setPageContext(_jspx_page_context);
    _jspx_th_c_otherwise_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_1);
    int _jspx_eval_c_otherwise_1 = _jspx_th_c_otherwise_1.doStartTag();
    if (_jspx_eval_c_otherwise_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                                            <div class=\"p-3 text-center\">\r\n");
        out.write("                                                                                <div style=\"margin-left: 80px;\" class=\"avatar1 img-circle\">\r\n");
        out.write("                                                                                    <img id=\"profileImage\" src=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${staffImage}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\" alt=\"Image\" class=\"shadow\">\r\n");
        out.write("                                                                                </div>\r\n");
        out.write("                                                                                <h4 class=\"text-center text-success\">");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${staffName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("</h4>\r\n");
        out.write("                                                                                <h5 class=\"text-center text-primary\">");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${staffAge}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write(" tuổi</h5>\r\n");
        out.write("                                                                            </div>\r\n");
        out.write("                                                                            <div class=\"card\">\r\n");
        out.write("                                                                                <div class=\"card-body\">\r\n");
        out.write("                                                                                    Địa chỉ liên hệ\r\n");
        out.write("                                                                                    <form action=\"#\">\r\n");
        out.write("                                                                                        <div class=\"form-group\">\r\n");
        out.write("                                                                                            <label class=\"text-info\">Số điện thoại</label>\r\n");
        out.write("                                                                                            <input style=\"color: #000;\" readonly=\"\" value=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${staffPhone}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\" type=\"text\" class=\"form-control text-center\">\r\n");
        out.write("                                                                                        </div>\r\n");
        out.write("                                                                                        <div class=\"form-group\">\r\n");
        out.write("                                                                                            <label class=\"text-info\">Địa chỉ email</label>\r\n");
        out.write("                                                                                            <input style=\"color: #000;\" readonly=\"\" value=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${staffEmail}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\" type=\"text\" class=\"form-control text-center\">\r\n");
        out.write("                                                                                        </div>\r\n");
        out.write("                                                                                    </form>\r\n");
        out.write("                                                                                </div>\r\n");
        out.write("                                                                            </div>\r\n");
        out.write("                                                                        ");
        int evalDoAfterBody = _jspx_th_c_otherwise_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_otherwise_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_1);
      return true;
    }
    _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_1);
    return false;
  }

  private boolean _jspx_meth_c_set_11(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_11 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_11.setPageContext(_jspx_page_context);
    _jspx_th_c_set_11.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_set_11.setVar("date");
    _jspx_th_c_set_11.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${fn:split(booking.bookingDate, ' ')}", java.lang.Object.class, (PageContext)_jspx_page_context, _jspx_fnmap_0));
    int _jspx_eval_c_set_11 = _jspx_th_c_set_11.doStartTag();
    if (_jspx_th_c_set_11.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_11);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_11);
    return false;
  }

  private boolean _jspx_meth_c_set_12(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_12 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_12.setPageContext(_jspx_page_context);
    _jspx_th_c_set_12.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_set_12.setVar("formattedDate");
    _jspx_th_c_set_12.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${fn:split(date[0], '-')}", java.lang.Object.class, (PageContext)_jspx_page_context, _jspx_fnmap_0));
    int _jspx_eval_c_set_12 = _jspx_th_c_set_12.doStartTag();
    if (_jspx_th_c_set_12.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_12);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_12);
    return false;
  }

  private boolean _jspx_meth_c_set_13(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_13 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_13.setPageContext(_jspx_page_context);
    _jspx_th_c_set_13.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_set_13.setVar("month");
    _jspx_th_c_set_13.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${formattedDate[1]}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_13 = _jspx_th_c_set_13.doStartTag();
    if (_jspx_th_c_set_13.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_13);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_13);
    return false;
  }

  private boolean _jspx_meth_c_choose_2(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:choose
    org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_choose_2 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _jspx_tagPool_c_choose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
    _jspx_th_c_choose_2.setPageContext(_jspx_page_context);
    _jspx_th_c_choose_2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    int _jspx_eval_c_choose_2 = _jspx_th_c_choose_2.doStartTag();
    if (_jspx_eval_c_choose_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                                                        ");
        if (_jspx_meth_c_when_3((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_2, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
          return true;
        out.write("\r\n");
        out.write("                                                                                    ");
        int evalDoAfterBody = _jspx_th_c_choose_2.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_choose_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_2);
      return true;
    }
    _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_2);
    return false;
  }

  private boolean _jspx_meth_c_when_3(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_2, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_when_3 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _jspx_tagPool_c_when_test.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    _jspx_th_c_when_3.setPageContext(_jspx_page_context);
    _jspx_th_c_when_3.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_2);
    _jspx_th_c_when_3.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${fn:length(month) == 1}", java.lang.Boolean.class, (PageContext)_jspx_page_context, _jspx_fnmap_2)).booleanValue());
    int _jspx_eval_c_when_3 = _jspx_th_c_when_3.doStartTag();
    if (_jspx_eval_c_when_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                                                            ");
        if (_jspx_meth_c_set_14((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_when_3, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
          return true;
        out.write("\r\n");
        out.write("                                                                                        ");
        int evalDoAfterBody = _jspx_th_c_when_3.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_when_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_3);
      return true;
    }
    _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_3);
    return false;
  }

  private boolean _jspx_meth_c_set_14(javax.servlet.jsp.tagext.JspTag _jspx_th_c_when_3, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_14 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_14.setPageContext(_jspx_page_context);
    _jspx_th_c_set_14.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_when_3);
    _jspx_th_c_set_14.setVar("month");
    _jspx_th_c_set_14.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("0${month}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_14 = _jspx_th_c_set_14.doStartTag();
    if (_jspx_th_c_set_14.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_14);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_14);
    return false;
  }

  private boolean _jspx_meth_c_set_15(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_15 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_15.setPageContext(_jspx_page_context);
    _jspx_th_c_set_15.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_set_15.setVar("day");
    _jspx_th_c_set_15.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${formattedDate[2]}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_15 = _jspx_th_c_set_15.doStartTag();
    if (_jspx_th_c_set_15.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_15);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_15);
    return false;
  }

  private boolean _jspx_meth_c_choose_3(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:choose
    org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_choose_3 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _jspx_tagPool_c_choose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
    _jspx_th_c_choose_3.setPageContext(_jspx_page_context);
    _jspx_th_c_choose_3.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    int _jspx_eval_c_choose_3 = _jspx_th_c_choose_3.doStartTag();
    if (_jspx_eval_c_choose_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                                                        ");
        if (_jspx_meth_c_when_4((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_3, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
          return true;
        out.write("\r\n");
        out.write("                                                                                    ");
        int evalDoAfterBody = _jspx_th_c_choose_3.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_choose_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_3);
      return true;
    }
    _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_3);
    return false;
  }

  private boolean _jspx_meth_c_when_4(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_3, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_when_4 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _jspx_tagPool_c_when_test.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    _jspx_th_c_when_4.setPageContext(_jspx_page_context);
    _jspx_th_c_when_4.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_3);
    _jspx_th_c_when_4.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${fn:length(day) == 1}", java.lang.Boolean.class, (PageContext)_jspx_page_context, _jspx_fnmap_2)).booleanValue());
    int _jspx_eval_c_when_4 = _jspx_th_c_when_4.doStartTag();
    if (_jspx_eval_c_when_4 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                                                            ");
        if (_jspx_meth_c_set_16((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_when_4, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
          return true;
        out.write("\r\n");
        out.write("                                                                                        ");
        int evalDoAfterBody = _jspx_th_c_when_4.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_when_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_4);
      return true;
    }
    _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_4);
    return false;
  }

  private boolean _jspx_meth_c_set_16(javax.servlet.jsp.tagext.JspTag _jspx_th_c_when_4, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_16 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_16.setPageContext(_jspx_page_context);
    _jspx_th_c_set_16.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_when_4);
    _jspx_th_c_set_16.setVar("day");
    _jspx_th_c_set_16.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("0${day}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_16 = _jspx_th_c_set_16.doStartTag();
    if (_jspx_th_c_set_16.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_16);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_16);
    return false;
  }

  private boolean _jspx_meth_c_set_17(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_17 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_17.setPageContext(_jspx_page_context);
    _jspx_th_c_set_17.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_set_17.setVar("formattedDateString");
    _jspx_th_c_set_17.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${month}-${day}-${formattedDate[0]}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_17 = _jspx_th_c_set_17.doStartTag();
    if (_jspx_th_c_set_17.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_17);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_17);
    return false;
  }

  private boolean _jspx_meth_c_set_18(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_18 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_18.setPageContext(_jspx_page_context);
    _jspx_th_c_set_18.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_set_18.setVar("addressArray");
    _jspx_th_c_set_18.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${fn:split(booking.bookingAddress, '||')}", java.lang.Object.class, (PageContext)_jspx_page_context, _jspx_fnmap_0));
    int _jspx_eval_c_set_18 = _jspx_th_c_set_18.doStartTag();
    if (_jspx_th_c_set_18.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_18);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_18);
    return false;
  }

  private boolean _jspx_meth_fmt_formatNumber_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:formatNumber
    org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag _jspx_th_fmt_formatNumber_1 = (org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag) _jspx_tagPool_fmt_formatNumber_var_value_pattern_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag.class);
    _jspx_th_fmt_formatNumber_1.setPageContext(_jspx_page_context);
    _jspx_th_fmt_formatNumber_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_fmt_formatNumber_1.setVar("formattedPrice");
    _jspx_th_fmt_formatNumber_1.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${booking.totalPrice}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_fmt_formatNumber_1.setPattern("###,###");
    int _jspx_eval_fmt_formatNumber_1 = _jspx_th_fmt_formatNumber_1.doStartTag();
    if (_jspx_th_fmt_formatNumber_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_formatNumber_var_value_pattern_nobody.reuse(_jspx_th_fmt_formatNumber_1);
      return true;
    }
    _jspx_tagPool_fmt_formatNumber_var_value_pattern_nobody.reuse(_jspx_th_fmt_formatNumber_1);
    return false;
  }

  private boolean _jspx_meth_c_forEach_2(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_2 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_2.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_forEach_2.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${feedBackList}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_2.setVar("j");
    int[] _jspx_push_body_count_c_forEach_2 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_2 = _jspx_th_c_forEach_2.doStartTag();
      if (_jspx_eval_c_forEach_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                                                                                    ");
          if (_jspx_meth_c_if_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_2, _jspx_page_context, _jspx_push_body_count_c_forEach_2))
            return true;
          out.write("\r\n");
          out.write("                                                                                ");
          int evalDoAfterBody = _jspx_th_c_forEach_2.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_2[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_2.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_2.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_2);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_2, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_2)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_1.setPageContext(_jspx_page_context);
    _jspx_th_c_if_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_2);
    _jspx_th_c_if_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${booking.bookingID eq j.bookingID}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_1 = _jspx_th_c_if_1.doStartTag();
    if (_jspx_eval_c_if_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("\r\n");
        out.write("\r\n");
        out.write("                                                                                        <p>\r\n");
        out.write("                                                                                            ");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${j.feedbackDetail}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\r\n");
        out.write("                                                                                        </p>\r\n");
        out.write("\r\n");
        out.write("\r\n");
        out.write("                                                                                    ");
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
    _jspx_th_c_if_2.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${booking.bookingStatus eq 'Chờ xác nhận'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_2 = _jspx_th_c_if_2.doStartTag();
    if (_jspx_eval_c_if_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                                <button type=\"button\" class=\"btn btn-danger\" data-toggle=\"modal\" data-target=\"#h");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${loop.index}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\">Hủy đơn</button>\r\n");
        out.write("                                                            ");
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

  private boolean _jspx_meth_c_if_3(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_3 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_3.setPageContext(_jspx_page_context);
    _jspx_th_c_if_3.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_if_3.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${booking.bookingStatus eq 'Chờ xác nhận'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_3 = _jspx_th_c_if_3.doStartTag();
    if (_jspx_eval_c_if_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                    <button class=\"btn btn-info\">Chờ xác nhận</button>\r\n");
        out.write("                                                ");
        int evalDoAfterBody = _jspx_th_c_if_3.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_3);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_3);
    return false;
  }

  private boolean _jspx_meth_c_if_4(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_4 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_4.setPageContext(_jspx_page_context);
    _jspx_th_c_if_4.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_if_4.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${booking.bookingStatus eq 'Xác nhận'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_4 = _jspx_th_c_if_4.doStartTag();
    if (_jspx_eval_c_if_4 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                    <button class=\"btn btn-info\">Đã xác nhận</button>\r\n");
        out.write("                                                ");
        int evalDoAfterBody = _jspx_th_c_if_4.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_4);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_4);
    return false;
  }

  private boolean _jspx_meth_c_if_5(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_5 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_5.setPageContext(_jspx_page_context);
    _jspx_th_c_if_5.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_if_5.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${booking.bookingStatus eq 'Đang thực hiện'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_5 = _jspx_th_c_if_5.doStartTag();
    if (_jspx_eval_c_if_5 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                    <button class=\"btn btn-info\">Đang hoạt động</button>\r\n");
        out.write("                                                ");
        int evalDoAfterBody = _jspx_th_c_if_5.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_5.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_5);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_5);
    return false;
  }

  private boolean _jspx_meth_c_if_6(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_6 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_6.setPageContext(_jspx_page_context);
    _jspx_th_c_if_6.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_if_6.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${booking.bookingStatus eq 'Hủy'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_6 = _jspx_th_c_if_6.doStartTag();
    if (_jspx_eval_c_if_6 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                    <button class=\"btn btn-danger\">Đã Hủy</button>\r\n");
        out.write("                                                ");
        int evalDoAfterBody = _jspx_th_c_if_6.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_6.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_6);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_6);
    return false;
  }

  private boolean _jspx_meth_c_if_7(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_7 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_7.setPageContext(_jspx_page_context);
    _jspx_th_c_if_7.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_if_7.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${booking.bookingStatus eq 'Xác nhận hoàn thành'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_7 = _jspx_th_c_if_7.doStartTag();
    if (_jspx_eval_c_if_7 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                    <button class=\"btn btn-info\" data-toggle=\"modal\" data-target=\"#a");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${loop.index}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\">Xác nhận đơn</button>\r\n");
        out.write("                                                    <!-- Modal -->\r\n");
        out.write("                                                    <div class=\"modal fade\" id=\"a");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${loop.index}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalCenterTitle\" aria-hidden=\"true\">\r\n");
        out.write("                                                        <div class=\"modal-dialog modal-dialog-centered\" role=\"document\">\r\n");
        out.write("                                                            <div class=\"modal-content\">\r\n");
        out.write("                                                                <div class=\"modal-header\">\r\n");
        out.write("                                                                    <h5 class=\"modal-title\" id=\"exampleModalLongTitle\">Phản hồi từ quý khách</h5>\r\n");
        out.write("                                                                    <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\r\n");
        out.write("                                                                        <span aria-hidden=\"true\">&times;</span>\r\n");
        out.write("                                                                    </button>\r\n");
        out.write("                                                                </div>\r\n");
        out.write("                                                                <form action=\"ProfilePageController\" method=\"POST\">\r\n");
        out.write("                                                                    <div class=\"modal-body\">\r\n");
        out.write("                                                                        Quý khách có hài lòng với dịch vụ của công ty chúng tôi không ạ ?\r\n");
        out.write("                                                                        <div class=\"col-lg-12 col-md-6 wow fadeInUp mt-3\" data-wow-delay=\"0.3s\">\r\n");
        out.write("\r\n");
        out.write("                                                                            <input name=\"bookingID\" type=\"hidden\" value=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${booking.bookingID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\">\r\n");
        out.write("                                                                            <div class=\"row g-3\">\r\n");
        out.write("                                                                                <div class=\"col-12\">\r\n");
        out.write("                                                                                    <div class=\"form-floating\">\r\n");
        out.write("                                                                                        <textarea name=\"feedbackDetail\" class=\"form-control bg-light border-0\" placeholder=\"Leave a message here\" id=\"message\" style=\"height: 100px\"></textarea>\r\n");
        out.write("                                                                                        <label for=\"message\">Hãy cho chúng tôi biết cảm nhận của quý khách</label>\r\n");
        out.write("                                                                                    </div>\r\n");
        out.write("                                                                                </div>\r\n");
        out.write("                                                                                <div class=\"col-md-12\">\r\n");
        out.write("                                                                                    <div>Mức độ hài lòng của quý khách:</div>\r\n");
        out.write("                                                                                    <div style=\"margin: auto\" class=\"text-center\" id=\"rateYo\"></div>\r\n");
        out.write("                                                                                    <input type=\"hidden\" id=\"ratingInput\" name=\"rating\" value=\"\">\r\n");
        out.write("                                                                                </div>\r\n");
        out.write("                                                                            </div>\r\n");
        out.write("\r\n");
        out.write("\r\n");
        out.write("                                                                        </div>\r\n");
        out.write("                                                                    </div>\r\n");
        out.write("                                                                    <div style=\"display: flex; justify-content: space-between\" class=\"modal-footer\">\r\n");
        out.write("                                                                        <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Đóng</button>\r\n");
        out.write("                                                                        <button id=\"submitBtn\" name=\"action\" value=\"Đánh giá\" type=\"submit\" class=\"btn btn-primary\">Gửi đánh giá</button>\r\n");
        out.write("                                                                    </div>\r\n");
        out.write("                                                                </form>\r\n");
        out.write("                                                            </div>\r\n");
        out.write("                                                        </div>\r\n");
        out.write("                                                    </div>\r\n");
        out.write("\r\n");
        out.write("\r\n");
        out.write("                                                ");
        int evalDoAfterBody = _jspx_th_c_if_7.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_7.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_7);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_7);
    return false;
  }

  private boolean _jspx_meth_c_if_8(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_8 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_8.setPageContext(_jspx_page_context);
    _jspx_th_c_if_8.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_if_8.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${booking.bookingStatus eq 'Hoàn thành'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_8 = _jspx_th_c_if_8.doStartTag();
    if (_jspx_eval_c_if_8 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                    <button class=\"btn btn-success\" >Hoàn tất</button>\r\n");
        out.write("                                                ");
        int evalDoAfterBody = _jspx_th_c_if_8.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_8.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_8);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_8);
    return false;
  }

  private boolean _jspx_meth_c_forEach_3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_3 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_3.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_3.setParent(null);
    _jspx_th_c_forEach_3.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listNotiOfUser}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_3.setVar("o");
    int[] _jspx_push_body_count_c_forEach_3 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_3 = _jspx_th_c_forEach_3.doStartTag();
      if (_jspx_eval_c_forEach_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                                            <tr>\r\n");
          out.write("                                                <td class=\"text-center\">\r\n");
          out.write("                                                    <span style=\"width: 70px; text-align: center;\">\r\n");
          out.write("                                                        ");
          if (_jspx_meth_c_set_19((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_3, _jspx_page_context, _jspx_push_body_count_c_forEach_3))
            return true;
          out.write(" <!-- Khởi tạo giá trị mặc định cho image -->\r\n");
          out.write("\r\n");
          out.write("                                                        ");
          if (_jspx_meth_c_forEach_4((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_3, _jspx_page_context, _jspx_push_body_count_c_forEach_3))
            return true;
          out.write("\r\n");
          out.write("                                                        <img style=\"width: 53px; height: 52px\" class=\"rounded-circle\" alt=\"User Image\" src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${image}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" />\r\n");
          out.write("                                                    </span>\r\n");
          out.write("                                                </td>\r\n");
          out.write("                                                <td style=\"width: 300px;\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.detail}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("\r\n");
          out.write("                                                ");
          if (_jspx_meth_c_set_21((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_3, _jspx_page_context, _jspx_push_body_count_c_forEach_3))
            return true;
          out.write("\r\n");
          out.write("                                                ");
          if (_jspx_meth_c_set_22((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_3, _jspx_page_context, _jspx_push_body_count_c_forEach_3))
            return true;
          out.write("\r\n");
          out.write("                                                ");
          if (_jspx_meth_c_set_23((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_3, _jspx_page_context, _jspx_push_body_count_c_forEach_3))
            return true;
          out.write("\r\n");
          out.write("\r\n");
          out.write("                                                ");
          if (_jspx_meth_c_set_24((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_3, _jspx_page_context, _jspx_push_body_count_c_forEach_3))
            return true;
          out.write("\r\n");
          out.write("                                                ");
          if (_jspx_meth_c_choose_4((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_3, _jspx_page_context, _jspx_push_body_count_c_forEach_3))
            return true;
          out.write("\r\n");
          out.write("\r\n");
          out.write("                                                ");
          if (_jspx_meth_c_set_26((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_3, _jspx_page_context, _jspx_push_body_count_c_forEach_3))
            return true;
          out.write("\r\n");
          out.write("                                                ");
          if (_jspx_meth_c_choose_5((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_3, _jspx_page_context, _jspx_push_body_count_c_forEach_3))
            return true;
          out.write("\r\n");
          out.write("                                                ");
          if (_jspx_meth_c_set_28((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_3, _jspx_page_context, _jspx_push_body_count_c_forEach_3))
            return true;
          out.write("\r\n");
          out.write("\r\n");
          out.write("                                                <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${formattedDateString}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("                                            </tr>\r\n");
          out.write("                                        ");
          int evalDoAfterBody = _jspx_th_c_forEach_3.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_3[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_3.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_3.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_3);
    }
    return false;
  }

  private boolean _jspx_meth_c_set_19(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_3, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_3)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_19 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_19.setPageContext(_jspx_page_context);
    _jspx_th_c_set_19.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_3);
    _jspx_th_c_set_19.setVar("image");
    _jspx_th_c_set_19.setValue(new String("img/user.jpg"));
    int _jspx_eval_c_set_19 = _jspx_th_c_set_19.doStartTag();
    if (_jspx_th_c_set_19.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_19);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_19);
    return false;
  }

  private boolean _jspx_meth_c_forEach_4(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_3, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_3)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_4 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_4.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_4.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_3);
    _jspx_th_c_forEach_4.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ListBookingAccounts}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_4.setVar("booking");
    int[] _jspx_push_body_count_c_forEach_4 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_4 = _jspx_th_c_forEach_4.doStartTag();
      if (_jspx_eval_c_forEach_4 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                                                            ");
          if (_jspx_meth_c_if_9((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_4, _jspx_page_context, _jspx_push_body_count_c_forEach_4))
            return true;
          out.write("\r\n");
          out.write("                                                        ");
          int evalDoAfterBody = _jspx_th_c_forEach_4.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_4[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_4.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_4.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_4);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_9(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_4, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_4)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_9 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_9.setPageContext(_jspx_page_context);
    _jspx_th_c_if_9.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_4);
    _jspx_th_c_if_9.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.bookingID eq booking.bookingID}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_9 = _jspx_th_c_if_9.doStartTag();
    if (_jspx_eval_c_if_9 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                                ");
        if (_jspx_meth_c_forEach_5((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_9, _jspx_page_context, _jspx_push_body_count_c_forEach_4))
          return true;
        out.write("\r\n");
        out.write("                                                            ");
        int evalDoAfterBody = _jspx_th_c_if_9.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_9.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_9);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_9);
    return false;
  }

  private boolean _jspx_meth_c_forEach_5(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_9, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_4)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_5 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_5.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_5.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_9);
    _jspx_th_c_forEach_5.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listAllAccounts}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_5.setVar("account");
    int[] _jspx_push_body_count_c_forEach_5 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_5 = _jspx_th_c_forEach_5.doStartTag();
      if (_jspx_eval_c_forEach_5 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                                                                    ");
          if (_jspx_meth_c_if_10((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_5, _jspx_page_context, _jspx_push_body_count_c_forEach_5))
            return true;
          out.write("\r\n");
          out.write("                                                                ");
          int evalDoAfterBody = _jspx_th_c_forEach_5.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_5.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_5[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_5.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_5.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_5);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_10(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_5, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_5)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_10 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_10.setPageContext(_jspx_page_context);
    _jspx_th_c_if_10.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_5);
    _jspx_th_c_if_10.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${account.accountID eq booking.staffID}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_10 = _jspx_th_c_if_10.doStartTag();
    if (_jspx_eval_c_if_10 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                                        ");
        if (_jspx_meth_c_set_20((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_10, _jspx_page_context, _jspx_push_body_count_c_forEach_5))
          return true;
        out.write("\r\n");
        out.write("                                                                    ");
        int evalDoAfterBody = _jspx_th_c_if_10.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_10.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_10);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_10);
    return false;
  }

  private boolean _jspx_meth_c_set_20(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_10, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_5)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_20 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_20.setPageContext(_jspx_page_context);
    _jspx_th_c_set_20.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_10);
    _jspx_th_c_set_20.setVar("image");
    _jspx_th_c_set_20.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${account.image}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_20 = _jspx_th_c_set_20.doStartTag();
    if (_jspx_th_c_set_20.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_20);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_20);
    return false;
  }

  private boolean _jspx_meth_c_set_21(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_3, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_3)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_21 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_21.setPageContext(_jspx_page_context);
    _jspx_th_c_set_21.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_3);
    _jspx_th_c_set_21.setVar("date");
    _jspx_th_c_set_21.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${fn:split(o.createAt, ' ')}", java.lang.Object.class, (PageContext)_jspx_page_context, _jspx_fnmap_0));
    int _jspx_eval_c_set_21 = _jspx_th_c_set_21.doStartTag();
    if (_jspx_th_c_set_21.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_21);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_21);
    return false;
  }

  private boolean _jspx_meth_c_set_22(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_3, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_3)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_22 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_22.setPageContext(_jspx_page_context);
    _jspx_th_c_set_22.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_3);
    _jspx_th_c_set_22.setVar("date");
    _jspx_th_c_set_22.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${fn:split(o.createAt, ' ')}", java.lang.Object.class, (PageContext)_jspx_page_context, _jspx_fnmap_0));
    int _jspx_eval_c_set_22 = _jspx_th_c_set_22.doStartTag();
    if (_jspx_th_c_set_22.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_22);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_22);
    return false;
  }

  private boolean _jspx_meth_c_set_23(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_3, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_3)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_23 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_23.setPageContext(_jspx_page_context);
    _jspx_th_c_set_23.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_3);
    _jspx_th_c_set_23.setVar("formattedDate");
    _jspx_th_c_set_23.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${fn:split(date[0], '-')}", java.lang.Object.class, (PageContext)_jspx_page_context, _jspx_fnmap_0));
    int _jspx_eval_c_set_23 = _jspx_th_c_set_23.doStartTag();
    if (_jspx_th_c_set_23.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_23);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_23);
    return false;
  }

  private boolean _jspx_meth_c_set_24(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_3, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_3)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_24 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_24.setPageContext(_jspx_page_context);
    _jspx_th_c_set_24.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_3);
    _jspx_th_c_set_24.setVar("month");
    _jspx_th_c_set_24.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${formattedDate[1]}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_24 = _jspx_th_c_set_24.doStartTag();
    if (_jspx_th_c_set_24.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_24);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_24);
    return false;
  }

  private boolean _jspx_meth_c_choose_4(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_3, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_3)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:choose
    org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_choose_4 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _jspx_tagPool_c_choose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
    _jspx_th_c_choose_4.setPageContext(_jspx_page_context);
    _jspx_th_c_choose_4.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_3);
    int _jspx_eval_c_choose_4 = _jspx_th_c_choose_4.doStartTag();
    if (_jspx_eval_c_choose_4 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                    ");
        if (_jspx_meth_c_when_5((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_4, _jspx_page_context, _jspx_push_body_count_c_forEach_3))
          return true;
        out.write("\r\n");
        out.write("                                                ");
        int evalDoAfterBody = _jspx_th_c_choose_4.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_choose_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_4);
      return true;
    }
    _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_4);
    return false;
  }

  private boolean _jspx_meth_c_when_5(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_4, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_3)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_when_5 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _jspx_tagPool_c_when_test.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    _jspx_th_c_when_5.setPageContext(_jspx_page_context);
    _jspx_th_c_when_5.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_4);
    _jspx_th_c_when_5.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${fn:length(month) == 1}", java.lang.Boolean.class, (PageContext)_jspx_page_context, _jspx_fnmap_2)).booleanValue());
    int _jspx_eval_c_when_5 = _jspx_th_c_when_5.doStartTag();
    if (_jspx_eval_c_when_5 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                        ");
        if (_jspx_meth_c_set_25((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_when_5, _jspx_page_context, _jspx_push_body_count_c_forEach_3))
          return true;
        out.write("\r\n");
        out.write("                                                    ");
        int evalDoAfterBody = _jspx_th_c_when_5.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_when_5.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_5);
      return true;
    }
    _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_5);
    return false;
  }

  private boolean _jspx_meth_c_set_25(javax.servlet.jsp.tagext.JspTag _jspx_th_c_when_5, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_3)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_25 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_25.setPageContext(_jspx_page_context);
    _jspx_th_c_set_25.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_when_5);
    _jspx_th_c_set_25.setVar("month");
    _jspx_th_c_set_25.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("0${month}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_25 = _jspx_th_c_set_25.doStartTag();
    if (_jspx_th_c_set_25.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_25);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_25);
    return false;
  }

  private boolean _jspx_meth_c_set_26(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_3, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_3)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_26 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_26.setPageContext(_jspx_page_context);
    _jspx_th_c_set_26.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_3);
    _jspx_th_c_set_26.setVar("day");
    _jspx_th_c_set_26.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${formattedDate[2]}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_26 = _jspx_th_c_set_26.doStartTag();
    if (_jspx_th_c_set_26.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_26);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_26);
    return false;
  }

  private boolean _jspx_meth_c_choose_5(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_3, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_3)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:choose
    org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_choose_5 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _jspx_tagPool_c_choose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
    _jspx_th_c_choose_5.setPageContext(_jspx_page_context);
    _jspx_th_c_choose_5.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_3);
    int _jspx_eval_c_choose_5 = _jspx_th_c_choose_5.doStartTag();
    if (_jspx_eval_c_choose_5 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                    ");
        if (_jspx_meth_c_when_6((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_5, _jspx_page_context, _jspx_push_body_count_c_forEach_3))
          return true;
        out.write("\r\n");
        out.write("                                                ");
        int evalDoAfterBody = _jspx_th_c_choose_5.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_choose_5.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_5);
      return true;
    }
    _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_5);
    return false;
  }

  private boolean _jspx_meth_c_when_6(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_5, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_3)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_when_6 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _jspx_tagPool_c_when_test.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    _jspx_th_c_when_6.setPageContext(_jspx_page_context);
    _jspx_th_c_when_6.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_5);
    _jspx_th_c_when_6.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${fn:length(day) == 1}", java.lang.Boolean.class, (PageContext)_jspx_page_context, _jspx_fnmap_2)).booleanValue());
    int _jspx_eval_c_when_6 = _jspx_th_c_when_6.doStartTag();
    if (_jspx_eval_c_when_6 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                        ");
        if (_jspx_meth_c_set_27((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_when_6, _jspx_page_context, _jspx_push_body_count_c_forEach_3))
          return true;
        out.write("\r\n");
        out.write("                                                    ");
        int evalDoAfterBody = _jspx_th_c_when_6.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_when_6.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_6);
      return true;
    }
    _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_6);
    return false;
  }

  private boolean _jspx_meth_c_set_27(javax.servlet.jsp.tagext.JspTag _jspx_th_c_when_6, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_3)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_27 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_27.setPageContext(_jspx_page_context);
    _jspx_th_c_set_27.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_when_6);
    _jspx_th_c_set_27.setVar("day");
    _jspx_th_c_set_27.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("0${day}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_27 = _jspx_th_c_set_27.doStartTag();
    if (_jspx_th_c_set_27.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_27);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_27);
    return false;
  }

  private boolean _jspx_meth_c_set_28(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_3, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_3)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_28 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_28.setPageContext(_jspx_page_context);
    _jspx_th_c_set_28.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_3);
    _jspx_th_c_set_28.setVar("formattedDateString");
    _jspx_th_c_set_28.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${month}-${day}-${formattedDate[0]}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_28 = _jspx_th_c_set_28.doStartTag();
    if (_jspx_th_c_set_28.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_28);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_28);
    return false;
  }

  private boolean _jspx_meth_c_forEach_6(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_6 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_6.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_6.setParent(null);
    _jspx_th_c_forEach_6.setVar("booking");
    _jspx_th_c_forEach_6.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ListB}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_6 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_6 = _jspx_th_c_forEach_6.doStartTag();
      if (_jspx_eval_c_forEach_6 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("            ");
          if (_jspx_meth_c_forEach_7((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_6, _jspx_page_context, _jspx_push_body_count_c_forEach_6))
            return true;
          out.write("\r\n");
          out.write("        ");
          int evalDoAfterBody = _jspx_th_c_forEach_6.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_6.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_6[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_6.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_6.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_6);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_7(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_6, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_6)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_7 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_7.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_7.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_6);
    _jspx_th_c_forEach_7.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${feedBackList}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_7.setVar("f");
    int[] _jspx_push_body_count_c_forEach_7 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_7 = _jspx_th_c_forEach_7.doStartTag();
      if (_jspx_eval_c_forEach_7 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                ");
          if (_jspx_meth_c_if_11((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_7, _jspx_page_context, _jspx_push_body_count_c_forEach_7))
            return true;
          out.write("\r\n");
          out.write("            ");
          int evalDoAfterBody = _jspx_th_c_forEach_7.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_7.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_7[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_7.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_7.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_7);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_11(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_7, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_7)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_11 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_11.setPageContext(_jspx_page_context);
    _jspx_th_c_if_11.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_7);
    _jspx_th_c_if_11.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${booking.bookingID eq f.bookingID}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_11 = _jspx_th_c_if_11.doStartTag();
    if (_jspx_eval_c_if_11 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("            $(\"#rateYo");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${booking.bookingID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\").rateYo({\r\n");
        out.write("                rating: ");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${f.rating}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write(",\r\n");
        out.write("                readOnly: true\r\n");
        out.write("            });\r\n");
        out.write("                ");
        int evalDoAfterBody = _jspx_th_c_if_11.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_11.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_11);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_11);
    return false;
  }
}
