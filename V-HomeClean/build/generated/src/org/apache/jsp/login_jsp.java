package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DTO.UserError;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <title>Apex - Home Repair Website Template</title>\n");
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
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Poppins:wght@600;700&display=swap\" rel=\"stylesheet\"> \n");
      out.write("\n");
      out.write("        <!-- Icon Font Stylesheet -->\n");
      out.write("        <link href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Libraries Stylesheet -->\n");
      out.write("        <link href=\"lib/animate/animate.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"lib/owlcarousel/assets/owl.carousel.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Customized Bootstrap Stylesheet -->\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Template Stylesheet -->\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/Loginstyle.css\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navigation.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("        ");

            String uname = "";
            String pass = "";
            Cookie[] cookies = request.getCookies();

            if (cookies != null) {
                for (Cookie cook : cookies) {
                    if (cook.getName().equals("email")) {
                        uname = cook.getValue();
                    } else if (cook.getName().equals("Pass")) {
                        pass = cook.getValue();
                    }
                }

            }
        
      out.write("\n");
      out.write("\n");
      out.write("        ");

            UserError userError = (UserError) request.getAttribute("USER_ERROR");
            if (userError == null) {
                userError = new UserError();
                request.setAttribute("USER_ERROR", userError);
            }
        
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"d-lg-flex half\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row align-items-center justify-content-center login-form\">\n");
      out.write("                    <div  class=\"col-md-7 form\">\n");
      out.write("                        <h3>Đăng nhập vào <strong style=\"color: #f8e43c\">V-HomeClean</strong></h3>\n");
      out.write("                        <strong style=\"color: red\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ERROR}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong>\n");
      out.write("                        <form action=\"MainController\" method=\"post\">\n");
      out.write("                            <div class=\"form-group first mb-3\">\n");
      out.write("                                <label for=\"username\">Tên Đăng Nhập</label>\n");
      out.write("                                <input name=\"email\" type=\"email\" class=\"form-control\" placeholder=\"Email của bạn\" id=\"username\" value=\"");
      out.print(uname);
      out.write("\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group last mb-3\">\n");
      out.write("                                <label for=\"password\">Mật Khẩu</label>\n");
      out.write("                                <input name=\"password\" type=\"password\" class=\"form-control\" placeholder=\"Mật Khẩu Của Bạn\" id=\"password\" value=\"");
      out.print(pass);
      out.write("\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group d-flex mb-5 align-items-center\">\n");
      out.write("                                <label for=\"remember-me\">Nhớ Mật Khẩu\n");
      out.write("                                    <input name=\"remember-me\" type=\"checkbox\" checked=\"\"/>\n");
      out.write("                                    <div class=\"control__indicator\"></div>\n");
      out.write("                                </label>\n");
      out.write("                                <label class=\"ml-auto\">\n");
      out.write("                                    <a style=\"color:black;\" href=\"#\" class=\"forgot-pass\">Quên Mật Khẩu</a>\n");
      out.write("                                </label>\n");
      out.write("                            </div>\n");
      out.write("                            <div style=\"text-align: center;\" class=\"form-group\">\n");
      out.write("                                <input name=\"action\" type=\"submit\" value=\"Đăng Nhập\" class=\"btn btn-block btn-primary\">\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row align-items-center justify-content-center\">\n");
      out.write("                    <div class=\"col-md-8 form\">\n");
      out.write("                        <h3>Đăng ký vào <strong style=\"color: #f8e43c\">V-HomeClean</strong></h3>\n");
      out.write("                        <form action=\"MainController\" method=\"post\">\n");
      out.write("                            <div class=\"form-group mb-3\">\n");
      out.write("                                <label for=\"username\">Tên Đăng Nhập</label>\n");
      out.write("                                <input type=\"email\" name=\"email\" class=\"form-control\" placeholder=\"Email của bạn\" id=\"username\">\n");
      out.write("                                ");
 if (userError.getEmail() != null) {
      out.write("\n");
      out.write("                                <strong style=\"color: #e72734;\" >");
      out.print(userError.getEmail());
      out.write("</strong>\n");
      out.write("                                ");
 } 
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group mb-3\">\n");
      out.write("                                <label for=\"password\">Mật Khẩu</label>\n");
      out.write("                                <input name=\"password\" type=\"password\" class=\"form-control\" placeholder=\"Mật Khẩu Của Bạn\" id=\"password\">\n");
      out.write("                                ");
 if (userError.getPassword() != null) {
      out.write("\n");
      out.write("                                <strong style=\"color: #e72734;\" >");
      out.print(userError.getPassword());
      out.write("</strong>\n");
      out.write("                                ");
 } 
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group mb-3\">\n");
      out.write("                                <label for=\"password\">Xác Nhận Mật Khẩu</label>\n");
      out.write("                                <input type=\"password\" name=\"confirmP\" class=\"form-control\" placeholder=\"Mật Khẩu Của Bạn\" id=\"password\">\n");
      out.write("                                ");
 if (userError.getConfirm() != null) {
      out.write("\n");
      out.write("                                <strong style=\"color: #e72734;\" >");
      out.print(userError.getConfirm());
      out.write("</strong>\n");
      out.write("                                ");
 } 
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group mb-3\">\n");
      out.write("                                <label for=\"password\">Họ Và Tên</label>\n");
      out.write("                                <input type=\"text\" name=\"fullName\" class=\"form-control\" placeholder=\"Họ Và Tên Của Bạn\" id=\"password\">\n");
      out.write("                                ");
 if (userError.getFullName() != null) {
      out.write("\n");
      out.write("                                <strong style=\"color: #e72734;\" >");
      out.print(userError.getFullName());
      out.write("</strong>\n");
      out.write("                                ");
 } 
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group mb-3\">\n");
      out.write("                                <label for=\"password\">Địa Chỉ</label>\n");
      out.write("                                <input type=\"text\" name=\"address\" class=\"form-control\" placeholder=\"Địa Chỉ Của Bạn\" id=\"password\">\n");
      out.write("                                ");
 if (userError.getAddress() != null) {
      out.write("\n");
      out.write("                                <strong style=\"color: #e72734;\" >");
      out.print(userError.getAddress());
      out.write("</strong>\n");
      out.write("                                ");
 } 
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group mb-3\">\n");
      out.write("                                <label for=\"password\">Số Điện Thoại</label>\n");
      out.write("                                <input type=\"text\" name=\"phone\" class=\"form-control\" placeholder=\"Số Điện Thoại Của Bạn\" id=\"password\">\n");
      out.write("                                ");
 if (userError.getPhone() != null) {
      out.write("\n");
      out.write("                                <strong style=\"color: #e72734;\" >");
      out.print(userError.getPhone());
      out.write("</strong>\n");
      out.write("                                ");
 } 
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group mb-3\">\n");
      out.write("                                <label for=\"password\">Giới Tính:</label>\n");
      out.write("                                <label>\n");
      out.write("                                    <input type=\"radio\" name=\"gender\" value=\"male\"> Nam\n");
      out.write("                                </label>\n");
      out.write("                                <label>\n");
      out.write("                                    <input type=\"radio\" name=\"gender\" value=\"female\"> Nữ\n");
      out.write("                                </label>\n");
      out.write("                                <label>\n");
      out.write("                                    <input type=\"radio\" name=\"gender\" value=\"other\"> Khác\n");
      out.write("                                </label>\n");
      out.write("                            </div>\n");
      out.write("                            ");
 if (userError.getGender() != null) {
      out.write("\n");
      out.write("                            <strong style=\"color: #e72734;\">");
      out.print( userError.getGender());
      out.write("</strong>\n");
      out.write("                            ");
 } 
      out.write("\n");
      out.write("                            <div class=\"form-group mb-3\">\n");
      out.write("                                <label for=\"DateOfBirth\">Ngày sinh</label>\n");
      out.write("                                <input type=\"date\" name=\"DateOfBirth\" class=\"form-control\" placeholder=\"Ngày sinh của bạn\" id=\"password\">\n");
      out.write("                                ");
 if (userError.getDateOfBirth() != null) {
      out.write("\n");
      out.write("                                <strong style=\"color: #e72734;\" >");
      out.print( userError.getDateOfBirth());
      out.write("</strong>\n");
      out.write("                                ");
 }
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <div style=\"text-align: center;\" class=\"form-group\">\n");
      out.write("                                <input name=\"action\" type=\"submit\" value=\"Đăng Ký\" class=\"btn btn-block btn-primary\">\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Footer Start -->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("        <!-- Footer End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Back to Top -->\n");
      out.write("        <a href=\"#\" class=\"btn btn-lg btn-primary btn-lg-square back-to-top\"><i class=\"bi bi-arrow-up\"></i></a>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- JavaScript Libraries -->\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.4.1.min.js\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("        <script src=\"lib/wow/wow.min.js\"></script>\n");
      out.write("        <script src=\"lib/easing/easing.min.js\"></script>\n");
      out.write("        <script src=\"lib/waypoints/waypoints.min.js\"></script>\n");
      out.write("        <script src=\"lib/owlcarousel/owl.carousel.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Template Javascript -->\n");
      out.write("        <script src=\"js/main.js\"></script>\n");
      out.write("    </body>\n");
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
}
