package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class forgotPassword_jsp extends org.apache.jasper.runtime.HttpJspBase
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

<<<<<<< HEAD
<<<<<<< HEAD
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!-- <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset='utf-8'>\n");
      out.write("        <meta name='viewport' content='width=device-width, initial-scale=1'>\n");
      out.write("        <title>V-HomeClean - Quên Mật Khẩu</title>\n");
      out.write("        <link\n");
      out.write("            href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'\n");
      out.write("            rel='stylesheet'>\n");
      out.write("        <link href='' rel='stylesheet'>\n");
      out.write("        <script type='text/javascript'\n");
      out.write("        src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>\n");
      out.write("        <style>\n");
      out.write("            body {\n");
      out.write("                background-position: center;\n");
      out.write("                background-color: #eee;\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: cover;\n");
      out.write("                color: #505050;\n");
      out.write("                font-family: \"Rubik\", Helvetica, Arial, sans-serif;\n");
      out.write("                font-size: 14px;\n");
      out.write("                font-weight: normal;\n");
      out.write("                line-height: 1.5;\n");
      out.write("                text-transform: none\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .forgot {\n");
      out.write("                background-color: #fff;\n");
      out.write("                padding: 12px;\n");
      out.write("                border: 1px solid #dfdfdf\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .padding-bottom-3x {\n");
      out.write("                padding-bottom: 72px !important\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .card-footer {\n");
      out.write("                background-color: #fff\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .btn {\n");
      out.write("                font-size: 13px\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .form-control:focus {\n");
      out.write("                color: #495057;\n");
      out.write("                background-color: #fff;\n");
      out.write("                border-color: #76b7e9;\n");
      out.write("                outline: 0;\n");
      out.write("                box-shadow: 0 0 0 0px #28a745\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body oncontextmenu='return false' class='snippet-body'>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navigation.jsp", out, false);
      out.write("\n");
      out.write("        <div class=\"container padding-bottom-3x mb-2 mt-5\">\n");
      out.write("            <div class=\"row justify-content-center\">\n");
      out.write("                <div class=\"col-lg-8 col-md-10\">\n");
      out.write("                    <div class=\"forgot\">\n");
      out.write("                        <h2>Bạn quên mật khẩu?</h2>\n");
      out.write("                        <p>Lấy lại và thay đổi mật khẩu theo 3 bước dưới đây!</p>\n");
      out.write("                        <ol class=\"list-unstyled\">\n");
      out.write("                            <li><span class=\"text-primary text-medium\">1. </span>Nhập địa chỉ email của bạn bên dưới.</li>\n");
      out.write("                            <li><span class=\"text-primary text-medium\">2. </span>Hệ thống của chúng tôi sẽ gửi mã OTP vào email của bạn.</li>\n");
      out.write("                            <li><span class=\"text-primary text-medium\">3. </span>Nhập OTP và bắt đầu thay đổi mật khẩu!</li>\n");
      out.write("                        </ol>\n");
      out.write("                    </div>\n");
      out.write("                    <form class=\"card mt-4\" action=\"MainController\" method=\"POST\">\n");
      out.write("                        <div class=\"card-body\">\n");
      out.write("                            <strong style=\"color: red\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${message}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label for=\"email-for-pass\">Nhập địa chỉ email của bạn: </label> <input\n");
      out.write("                                    class=\"form-control\" type=\"text\" name=\"email\" id=\"email-for-pass\" required=\"\"><small\n");
      out.write("                                    class=\"form-text text-muted\">Nhập địa chỉ email đã đăng ký. Sau đó, hệ thống của chúng tôi sẽ gửi email OTP đến địa chỉ này.</small>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"card-footer\">\n");
      out.write("<!--                            <button class=\"btn btn-success\" name=\"action\" type=\"submit\">Get New\n");
      out.write("                                Password</button>-->\n");
      out.write("                                <input  class=\"btn btn-primary\" name=\"action\" type=\"submit\" value=\"Reset Pasword\">\n");
      out.write("<!--                            <button  class=\"btn btn-danger\" type=\"submit\">Back to\n");
      out.write("                                Login</button>-->\n");
      out.write("                                \n");
      out.write("                                <a href=\"login.jsp\" class=\"btn btn-primary\">Quay về trang đăng nhập.</a>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("   \n");
      out.write("        <script type='text/javascript'\n");
      out.write("        src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>\n");
      out.write("        <script type='text/javascript' src=''></script>\n");
      out.write("        <script type='text/javascript' src=''></script>\n");
      out.write("        <script type='text/Javascript'></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
=======
=======
>>>>>>> acaa22b376c07f41166fdaf35fb878178ef2657c
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<!-- <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">-->\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
<<<<<<< HEAD
      out.write("        <meta charset='utf-8'>\r\n");
      out.write("        <meta name='viewport' content='width=device-width, initial-scale=1'>\r\n");
      out.write("        <title>Forgot Password Page</title>\r\n");
      out.write("        <link\r\n");
      out.write("            href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'\r\n");
      out.write("            rel='stylesheet'>\r\n");
      out.write("        <link href='' rel='stylesheet'>\r\n");
      out.write("        <script type='text/javascript'\r\n");
      out.write("        src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>\r\n");
=======
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <meta charset='utf-8'>\r\n");
      out.write("        <meta name='viewport' content='width=device-width, initial-scale=1'>\r\n");
      out.write("        <title>V-HomeClean - Quên Mật Khẩu</title>\r\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Poppins:wght@600;700&display=swap\" rel=\"stylesheet\"> \r\n");
      out.write("\r\n");
      out.write("        <!-- Icon Font Stylesheet -->\r\n");
      out.write("        <link href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Libraries Stylesheet -->\r\n");
      out.write("        <link href=\"lib/animate/animate.min.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"lib/owlcarousel/assets/owl.carousel.min.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Customized Bootstrap Stylesheet -->\r\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Template Stylesheet -->\r\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\">\r\n");
>>>>>>> acaa22b376c07f41166fdaf35fb878178ef2657c
      out.write("        <style>\r\n");
      out.write("            body {\r\n");
      out.write("                background-position: center;\r\n");
      out.write("                background-color: #eee;\r\n");
      out.write("                background-repeat: no-repeat;\r\n");
      out.write("                background-size: cover;\r\n");
      out.write("                color: #505050;\r\n");
      out.write("                font-family: \"Rubik\", Helvetica, Arial, sans-serif;\r\n");
      out.write("                font-size: 14px;\r\n");
      out.write("                font-weight: normal;\r\n");
      out.write("                line-height: 1.5;\r\n");
      out.write("                text-transform: none\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .forgot {\r\n");
      out.write("                background-color: #fff;\r\n");
      out.write("                padding: 12px;\r\n");
      out.write("                border: 1px solid #dfdfdf\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .padding-bottom-3x {\r\n");
      out.write("                padding-bottom: 72px !important\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .card-footer {\r\n");
      out.write("                background-color: #fff\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .btn {\r\n");
      out.write("                font-size: 13px\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .form-control:focus {\r\n");
      out.write("                color: #495057;\r\n");
      out.write("                background-color: #fff;\r\n");
      out.write("                border-color: #76b7e9;\r\n");
      out.write("                outline: 0;\r\n");
      out.write("                box-shadow: 0 0 0 0px #28a745\r\n");
      out.write("            }\r\n");
      out.write("        </style>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body oncontextmenu='return false' class='snippet-body'>\r\n");
<<<<<<< HEAD
=======
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navigation.jsp", out, false);
      out.write("\r\n");
>>>>>>> acaa22b376c07f41166fdaf35fb878178ef2657c
      out.write("        <div class=\"container padding-bottom-3x mb-2 mt-5\">\r\n");
      out.write("            <div class=\"row justify-content-center\">\r\n");
      out.write("                <div class=\"col-lg-8 col-md-10\">\r\n");
      out.write("                    <div class=\"forgot\">\r\n");
<<<<<<< HEAD
      out.write("                        <h2>Forgot your password?</h2>\r\n");
      out.write("                        <p>Change your password in three easy steps. This will help you\r\n");
      out.write("                            to secure your password!</p>\r\n");
      out.write("                        <ol class=\"list-unstyled\">\r\n");
      out.write("                            <li><span class=\"text-primary text-medium\">1. </span>Enter\r\n");
      out.write("                                your email address below.</li>\r\n");
      out.write("                            <li><span class=\"text-primary text-medium\">2. </span>Our\r\n");
      out.write("                                system will send you an OTP to your email</li>\r\n");
      out.write("                            <li><span class=\"text-primary text-medium\">3. </span>Enter the OTP on the \r\n");
      out.write("                                next page</li>\r\n");
=======
      out.write("                        <h2>Bạn quên mật khẩu?</h2>\r\n");
      out.write("                        <p>Lấy lại và thay đổi mật khẩu theo 3 bước dưới đây!</p>\r\n");
      out.write("                        <ol class=\"list-unstyled\">\r\n");
      out.write("                            <li><span class=\"text-primary text-medium\">1. </span>Nhập địa chỉ email của bạn bên dưới.</li>\r\n");
      out.write("                            <li><span class=\"text-primary text-medium\">2. </span>Hệ thống của chúng tôi sẽ gửi mã OTP vào email của bạn.</li>\r\n");
      out.write("                            <li><span class=\"text-primary text-medium\">3. </span>Nhập OTP và bắt đầu thay đổi mật khẩu!</li>\r\n");
>>>>>>> acaa22b376c07f41166fdaf35fb878178ef2657c
      out.write("                        </ol>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <form class=\"card mt-4\" action=\"MainController\" method=\"POST\">\r\n");
      out.write("                        <div class=\"card-body\">\r\n");
      out.write("                            <strong style=\"color: red\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${message}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong>\r\n");
      out.write("                            <div class=\"form-group\">\r\n");
<<<<<<< HEAD
      out.write("                                <label for=\"email-for-pass\">Enter your email address</label> <input\r\n");
      out.write("                                    class=\"form-control\" type=\"text\" name=\"email\" id=\"email-for-pass\" required=\"\"><small\r\n");
      out.write("                                    class=\"form-text text-muted\">Enter the registered email address . Then we'll\r\n");
      out.write("                                    email a OTP to this address.</small>\r\n");
=======
      out.write("                                <label for=\"email-for-pass\">Nhập địa chỉ email của bạn: </label> <input\r\n");
      out.write("                                    class=\"form-control\" type=\"text\" name=\"email\" id=\"email-for-pass\" required=\"\"><small\r\n");
      out.write("                                    class=\"form-text text-muted\">Nhập địa chỉ email đã đăng ký. Sau đó, hệ thống của chúng tôi sẽ gửi email OTP đến địa chỉ này.</small>\r\n");
>>>>>>> acaa22b376c07f41166fdaf35fb878178ef2657c
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"card-footer\">\r\n");
      out.write("                            <!--                            <button class=\"btn btn-success\" name=\"action\" type=\"submit\">Get New\r\n");
      out.write("                                                            Password</button>-->\r\n");
<<<<<<< HEAD
      out.write("                            <button type=\"submit\" name=\"action\">Get New Password</button>\r\n");
      out.write("                            <button class=\"btn btn-danger\" type=\"submit\">Back to\r\n");
      out.write("                                Login</button>\r\n");
=======
      out.write("                            <button class=\"btn btn-success\" type=\"submit\" name=\"action\">Lấy lại mật khẩu</button>\r\n");
      out.write("                            <a href=\"login.jsp\" class=\"btn btn-primary\">Quay về trang đăng nhập.</a>\r\n");
>>>>>>> acaa22b376c07f41166fdaf35fb878178ef2657c
      out.write("                        </div>\r\n");
      out.write("                    </form>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
<<<<<<< HEAD
=======
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("   \r\n");
>>>>>>> acaa22b376c07f41166fdaf35fb878178ef2657c
      out.write("        <script type='text/javascript'\r\n");
      out.write("        src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>\r\n");
      out.write("        <script type='text/javascript' src=''></script>\r\n");
      out.write("        <script type='text/javascript' src=''></script>\r\n");
      out.write("        <script type='text/Javascript'></script>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
<<<<<<< HEAD
>>>>>>> b37952c3e220949a97a87c46fddacfd797e99ac7
=======
>>>>>>> acaa22b376c07f41166fdaf35fb878178ef2657c
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
