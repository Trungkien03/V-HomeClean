package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!doctype html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("    <head>\r\n");
      out.write("\r\n");
      out.write("        <!-- Required meta tags -->\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"fonts/icomoon/style.css\">\r\n");
      out.write("\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/owl.carousel.min.css\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Bootstrap CSS -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Style -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/Loginstyle.css\">\r\n");
      out.write("\r\n");
      out.write("        <title>Login Page</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <div class=\"d-lg-flex half\">\r\n");
      out.write("\r\n");
      out.write("            <!--    <div class=\"bg order-1 order-md-2\" style=\"background-image: url('https://blog.photoadking.com/wp-content/uploads/2023/03/Residential-Cleaning-Service-Flyer.jpg'); max-width: 650px\"></div>-->\r\n");
      out.write("            <!--    <div class=\"bg order-1 order-md-2\" style=\"background-image: url('https://marketplace.canva.com/EAE6dLlxEkM/2/0/1131w/canva-cleaning-service-flyer-hNPp3Hxz4fQ.jpg'); margin: 0.5% 0.5% 0.5% 0.5% \"></div>-->\r\n");
      out.write("            <!--            <div class=\"bg order-1 order-md-2\">-->\r\n");
      out.write("\r\n");
      out.write("                 <div class=\"container\">\r\n");
      out.write("                <div class=\"row align-items-center justify-content-center\">\r\n");
      out.write("                    <div class=\"col-md-6\">\r\n");
      out.write("                        <h3>Đăng nhập vào     <strong style=\"color: #f8e43c\">V-HomeClean</strong></h3>\r\n");
      out.write("                        <!--            <p class=\"mb-4\">Lorem ipsum dolor sit amet elit. Sapiente sit aut eos consectetur adipisicing.</p>-->\r\n");
      out.write("                        <form action=\"MainController\" method=\"post\">\r\n");
      out.write("                            <div class=\"form-group first\">\r\n");
      out.write("                                <label for=\"username\">Tên Đăng Nhập</label>\r\n");
      out.write("                                <input name=\"email\" type=\"text\" class=\"form-control\" placeholder=\"Email của bạn\" id=\"username\">\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"form-group last mb-3\">\r\n");
      out.write("                                <label for=\"password\">Mật Khẩu</label>\r\n");
      out.write("                                <input  name=\"password\" type=\"password\" class=\"form-control\" placeholder=\"Mật Khẩu Của Bạn\" id=\"password\">\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"d-flex mb-5 align-items-center\">\r\n");
      out.write("                                <label class=\"control control--checkbox mb-0\"><span class=\"caption\">Nhớ Mật Khẩu</span>\r\n");
      out.write("                                    <input type=\"checkbox\" checked=\"checked\"/>\r\n");
      out.write("                                    <div class=\"control__indicator\"></div>\r\n");
      out.write("                                </label>\r\n");
      out.write("                                <span class=\"ml-auto\"><a href=\"#\" class=\"forgot-pass\">Quên Mật Khẩu</a></span> \r\n");
      out.write("                            </div>\r\n");
      out.write("                            <strong style=\"color: red\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ERROR}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                            <input style=\"color: white; background-color:  #309cf4; border: none;\" name=\"action\" type=\"submit\" value=\"Login\" class=\"btn btn-block btn-primary\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                        </form>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                <!--                </div>-->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("            <!--            </div>-->\r\n");
      out.write("            <!--            <div class=\"contents  order-2 order-md-1\">-->\r\n");
      out.write("\r\n");
      out.write("       \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <div class=\"row align-items-center justify-content-center\">\r\n");
      out.write("                    <div class=\"col-md-6\">\r\n");
      out.write("                        <h3>Đăng ký vào     <strong style=\"color: #f8e43c\">V-HomeClean</strong></h3>\r\n");
      out.write("                        <!--            <p class=\"mb-4\">Lorem ipsum dolor sit amet elit. Sapiente sit aut eos consectetur adipisicing.</p>-->\r\n");
      out.write("                        <form action=\"#\" method=\"post\">\r\n");
      out.write("                            <div class=\"form-group first\">\r\n");
      out.write("                                <label for=\"username\">Tên Đăng Nhập</label>\r\n");
      out.write("                                <input type=\"text\" class=\"form-control\" placeholder=\"Email của bạn\" id=\"username\">\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"form-group last mb-3\">\r\n");
      out.write("                                <label for=\"password\">Mật Khẩu</label>\r\n");
      out.write("                                <input type=\"password\" class=\"form-control\" placeholder=\"Mật Khẩu Của Bạn\" id=\"password\">\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("                            <!--              <div class=\"d-flex mb-5 align-items-center\">\r\n");
      out.write("                                            <label class=\"control control--checkbox mb-0\"><span class=\"caption\">Nhớ Mật Khẩu</span>\r\n");
      out.write("                                              <input type=\"checkbox\" checked=\"checked\"/>\r\n");
      out.write("                                              <div class=\"control__indicator\"></div>\r\n");
      out.write("                                            </label>\r\n");
      out.write("                                            <span class=\"ml-auto\"><a href=\"#\" class=\"forgot-pass\">Quên Mật Khẩu</a></span> \r\n");
      out.write("                                          </div>-->\r\n");
      out.write("                            <div class=\"form-group last mb-3\">\r\n");
      out.write("                                <label for=\"password\">Mật Khẩu</label>\r\n");
      out.write("                                <input type=\"password\" class=\"form-control\" placeholder=\"Mật Khẩu Của Bạn\" id=\"password\">\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"form-group last mb-3\">\r\n");
      out.write("                                <label for=\"password\">Mật Khẩu</label>\r\n");
      out.write("                                <input type=\"password\" class=\"form-control\" placeholder=\"Mật Khẩu Của Bạn\" id=\"password\">\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"form-group last mb-3\">\r\n");
      out.write("                                <label for=\"password\">Mật Khẩu</label>\r\n");
      out.write("                                <input type=\"password\" class=\"form-control\" placeholder=\"Mật Khẩu Của Bạn\" id=\"password\">\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"form-group last mb-3\">\r\n");
      out.write("                                <label for=\"password\">Mật Khẩu</label>\r\n");
      out.write("                                <input type=\"password\" class=\"form-control\" placeholder=\"Mật Khẩu Của Bạn\" id=\"password\">\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                            <input style=\"color: white; background-color:  #309cf4; border: none;\" name=\"action\" type=\"submit\" value=\"Đăng Ký\" class=\"btn btn-block btn-primary\">\r\n");
      out.write("\r\n");
      out.write("                        </form>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <script src=\"js/jquery-3.3.1.min.js\"></script>\r\n");
      out.write("        <script src=\"js/popper.min.js\"></script>\r\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("        <script src=\"js/main.js\"></script>\r\n");
      out.write("    </body>\r\n");
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
}
