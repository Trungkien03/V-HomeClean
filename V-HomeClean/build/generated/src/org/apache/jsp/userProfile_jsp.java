package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DTO.AccountDTO;

public final class userProfile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_choose;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_otherwise;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_when_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_choose = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_otherwise = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_when_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_choose.release();
    _jspx_tagPool_c_otherwise.release();
    _jspx_tagPool_c_when_test.release();
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <title>Apex - Home Repair Website Template</title>\r\n");
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
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@500&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Icon Font Stylesheet -->\r\n");
      out.write("        <link href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("        <!-- Libraries Stylesheet -->\r\n");
      out.write("        <link href=\"lib/animate/animate.min.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"lib/owlcarousel/assets/owl.carousel.min.css\" rel=\"stylesheet\">\r\n");
      out.write("        <!-- Template Stylesheet -->\r\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\">\r\n");
      out.write("        <meta content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\" name=\"viewport\">\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/ProfileStyle.css\">\r\n");
      out.write("        <style>\r\n");
      out.write("            .profile-image-label {\r\n");
      out.write("                display: block;\r\n");
      out.write("                width: 40px;\r\n");
      out.write("                height: 40px;\r\n");
      out.write("                border-radius: 50%;\r\n");
      out.write("                background-color: #f5f5f5;\r\n");
      out.write("                color: #999;\r\n");
      out.write("                font-size: 20px;\r\n");
      out.write("                text-align: center;\r\n");
      out.write("                line-height: 40px;\r\n");
      out.write("                cursor: pointer;\r\n");
      out.write("                position: absolute;\r\n");
      out.write("                bottom: 70px;\r\n");
      out.write("                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .profile-image-label:hover {\r\n");
      out.write("                background-color: #CCC;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .profile-image-label i {\r\n");
      out.write("                margin-top: 10px;\r\n");
      out.write("            }\r\n");
      out.write("            @media (max-width: 768px){\r\n");
      out.write("                .profile-image-label{\r\n");
      out.write("                    position: absolute;\r\n");
      out.write("                    bottom: 40px;\r\n");
      out.write("\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("        </style>\r\n");
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
      out.write("        <div class=\"container-fluid page-header py-5 mb-5 wow fadeIn\" data-wow-delay=\"0.1s\">\r\n");
      out.write("            <div class=\"container text-center py-5\">\r\n");
      out.write("                <h1 class=\"display-4 text-white animated slideInDown mb-4\">Thông Tin Tài Khoản</h1>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <style>\r\n");
      out.write("            .message_Noti{\r\n");
      out.write("                text-align: center;\r\n");
      out.write("                font-size: larger;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("        </style>\r\n");
      out.write("        <div class=\"message_Noti\">\r\n");
      out.write("            <strong style=\"color: red\" >");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ERROR}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong>\r\n");
      out.write("            <strong style=\"color: green;\" >");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${message}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong>\r\n");
      out.write("        </div>\r\n");
      out.write("        <section class=\"py-5 my-5\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <div class=\"bg-white shadow rounded-lg d-block d-sm-flex\">\r\n");
      out.write("                    <div class=\"profile-tab-nav border-right\">\r\n");
      out.write("                        <div class=\"p-4\">\r\n");
      out.write("                            <div class=\"img-circle text-center mb-3\">\r\n");
      out.write("                                <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.image}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" alt=\"Image\" class=\"shadow\">\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <input type=\"file\" name=\"image\" id=\"profile-image\" accept=\"image/*\" style=\"display: none;\">\r\n");
      out.write("                            <label for=\"profile-image\" class=\"profile-image-label\">\r\n");
      out.write("                                <i class=\"fas fa-camera\"></i>\r\n");
      out.write("                            </label>\r\n");
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
      out.write("                                <i class=\"fa fa-user text-center mr-1\"></i> \r\n");
      out.write("                                Đơn Dịch Vụ\r\n");
      out.write("                            </a>\r\n");
      out.write("                            <a class=\"nav-link\" id=\"application-tab\" data-toggle=\"pill\" href=\"#application\" role=\"tab\" aria-controls=\"application\" aria-selected=\"false\">\r\n");
      out.write("                                <i class=\"fa fa-tv text-center mr-1\"></i> \r\n");
      out.write("                                Application\r\n");
      out.write("                            </a>\r\n");
      out.write("                            <a class=\"nav-link\" id=\"notification-tab\" data-toggle=\"pill\" href=\"#notification\" role=\"tab\" aria-controls=\"notification\" aria-selected=\"false\">\r\n");
      out.write("                                <i class=\"fa fa-bell text-center mr-1\"></i> \r\n");
      out.write("                                Notification\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"tab-content p-4 p-md-5\" id=\"v-pills-tabContent\">\r\n");
      out.write("                        <div class=\"tab-pane fade show active\" id=\"account\" role=\"tabpanel\" aria-labelledby=\"account-tab\">\r\n");
      out.write("                            <form action=\"ProfilePageController\" method=\"post\">\r\n");
      out.write("                                <h3 class=\"mb-4\">Thông Tin Tài Khoản</h3>\r\n");
      out.write("                                <div class=\"row\">\r\n");
      out.write("                                    <div class=\"col-md-6\">\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <label>Họ và Tên</label>\r\n");
      out.write("                                            <input name=\"fullName\" type=\"text\" class=\"form-control\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.fullName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-md-6\">\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <label>Ngày Sinh</label>\r\n");
      out.write("                                            <input name=\"dateOfBirth\" type=\"date\" class=\"form-control\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.dateOfBirth}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-md-6\">\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <label>Email</label>\r\n");
      out.write("                                            <input name=\"email\" type=\"email\" class=\"form-control\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.email}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-md-6\">\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <label>Số Điện Thoại</label>\r\n");
      out.write("                                            <input name=\"phone\" type=\"text\" class=\"form-control\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.phone}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-md-6\">\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <label>Địa chỉ</label>\r\n");
      out.write("                                            <input name=\"address\" type=\"text\" class=\"form-control\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.address}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-md-6\">\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <label>Giới tính</label>\r\n");
      out.write("                                            <select name=\"gender\" class=\"form-control\">\r\n");
      out.write("                                                ");
      if (_jspx_meth_c_choose_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                                            </select>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                    <div class=\"col-md-12\">\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <label>Bio</label>\r\n");
      out.write("                                            <textarea class=\"form-control\" rows=\"4\"></textarea>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <h3 class=\"mb-4\"></h3>\r\n");
      out.write("\r\n");
      out.write("                                        <div>\r\n");
      out.write("                                            <input class=\"btn btn-primary\" name=\"action\" value=\"Cập Nhật\" type=\"submit\" >\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                            </form>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    <!--                        PASSWORD CHANGE -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    ");

                        AccountDTO account = (AccountDTO) session.getAttribute("acc");
                        if (account != null) {

                    
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"tab-pane fade\" id=\"password\" role=\"tabpanel\" aria-labelledby=\"password-tab\">\r\n");
      out.write("                        <h3 class=\"mb-4\">Password Settings</h3>\r\n");
      out.write("                        <div>\r\n");
      out.write("\r\n");
      out.write("                            <form action=\"ProfilePageController\" method=\"POST\">\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"row\">\r\n");
      out.write("                                    <div class=\"col-md-6\">\r\n");
      out.write("\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("\r\n");
      out.write("                                            <label>Old password</label>\r\n");
      out.write("                                            <input type=\"password\" name=\"password\" class=\"form-control\">\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"row\">\r\n");
      out.write("                                    <div class=\"col-md-6\">\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <label>New password</label>\r\n");
      out.write("                                            <input type=\"password\" name=\"newPassword\" class=\"form-control\">\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-md-6\">\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <label>Confirm new password</label>\r\n");
      out.write("                                            <input type=\"password\" name=\"confirm\" class=\"form-control\">\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <input class=\"btn btn-primary\" type=\"submit\" name=\"action\" value=\"Thay Đổi Mật Khẩu\"\r\n");
      out.write("                                       class=\"btn btn-block btn-info\">\r\n");
      out.write("                                <!--                            <div>\r\n");
      out.write("                                                                <button class=\"btn btn-primary\">Update</button>\r\n");
      out.write("                                                                <button class=\"btn btn-light\">Cancel</button>\r\n");
      out.write("                                                            </div>-->\r\n");
      out.write("                            </form>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    <!-- đay là tab thông tin đơn hàng   -->\r\n");
      out.write("                    <div class=\"tab-pane fade\" id=\"security\" role=\"tabpanel\" aria-labelledby=\"security-tab\">\r\n");
      out.write("                        <h3 class=\"mb-4\">Đơn của bạn</h3>\r\n");
      out.write("                        <div class=\"row\">\r\n");
      out.write("                            <div class=\"col-md-6\">\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <label>Login</label>\r\n");
      out.write("                                    <input type=\"text\" class=\"form-control\">\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-md-6\">\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <label>Two-factor auth</label>\r\n");
      out.write("                                    <input type=\"text\" class=\"form-control\">\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-md-6\">\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <div class=\"form-check\">\r\n");
      out.write("                                        <input class=\"form-check-input\" type=\"checkbox\" value=\"\" id=\"recovery\">\r\n");
      out.write("                                        <label class=\"form-check-label\" for=\"recovery\">\r\n");
      out.write("                                            Recovery\r\n");
      out.write("                                        </label>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div>\r\n");
      out.write("                            <button class=\"btn btn-primary\">Update</button>\r\n");
      out.write("                            <button class=\"btn btn-light\">Cancel</button>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"tab-pane fade\" id=\"application\" role=\"tabpanel\" aria-labelledby=\"application-tab\">\r\n");
      out.write("                        <h3 class=\"mb-4\">Application Settings</h3>\r\n");
      out.write("                        <div class=\"row\">\r\n");
      out.write("                            <div class=\"col-md-6\">\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <div class=\"form-check\">\r\n");
      out.write("                                        <input class=\"form-check-input\" type=\"checkbox\" value=\"\" id=\"app-check\">\r\n");
      out.write("                                        <label class=\"form-check-label\" for=\"app-check\">\r\n");
      out.write("                                            App check\r\n");
      out.write("                                        </label>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"form-check\">\r\n");
      out.write("                                        <input class=\"form-check-input\" type=\"checkbox\" value=\"\" id=\"defaultCheck2\" >\r\n");
      out.write("                                        <label class=\"form-check-label\" for=\"defaultCheck2\">\r\n");
      out.write("                                            Lorem ipsum dolor sit.\r\n");
      out.write("                                        </label>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div>\r\n");
      out.write("                            <button class=\"btn btn-primary\">Update</button>\r\n");
      out.write("                            <button class=\"btn btn-light\">Cancel</button>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"tab-pane fade\" id=\"notification\" role=\"tabpanel\" aria-labelledby=\"notification-tab\">\r\n");
      out.write("                        <h3 class=\"mb-4\">Notification Settings</h3>\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <div class=\"form-check\">\r\n");
      out.write("                                <input class=\"form-check-input\" type=\"checkbox\" value=\"\" id=\"notification1\">\r\n");
      out.write("                                <label class=\"form-check-label\" for=\"notification1\">\r\n");
      out.write("                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum accusantium accusamus, neque cupiditate quis\r\n");
      out.write("                                </label>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                           \r\n");
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
      out.write("    <!-- JavaScript Libraries -->\r\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.4.1.min.js\"></script>\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\"></script>\r\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\"></script>\r\n");
      out.write("    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\"></script>\r\n");
      out.write("    <script src=\"lib/wow/wow.min.js\"></script>\r\n");
      out.write("    <script src=\"lib/easing/easing.min.js\"></script>\r\n");
      out.write("    <script src=\"lib/waypoints/waypoints.min.js\"></script>\r\n");
      out.write("    <script src=\"lib/owlcarousel/owl.carousel.min.js\"></script>\r\n");
      out.write("    <script>\r\n");
      out.write("        \r\n");
      out.write("    </script>\r\n");
      out.write("    <!-- Template Javascript -->\r\n");
      out.write("    <script src=\"js/main.js\"></script>\r\n");
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
}