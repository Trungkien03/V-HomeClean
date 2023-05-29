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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!-- <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset='utf-8'>\n");
      out.write("        <meta name='viewport' content='width=device-width, initial-scale=1'>\n");
      out.write("        <title>Forgot Password Page</title>\n");
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
      out.write("        <div class=\"container padding-bottom-3x mb-2 mt-5\">\n");
      out.write("            <div class=\"row justify-content-center\">\n");
      out.write("                <div class=\"col-lg-8 col-md-10\">\n");
      out.write("                    <div class=\"forgot\">\n");
      out.write("                        <h2>Forgot your password?</h2>\n");
      out.write("                        <p>Change your password in three easy steps. This will help you\n");
      out.write("                            to secure your password!</p>\n");
      out.write("                        <ol class=\"list-unstyled\">\n");
      out.write("                            <li><span class=\"text-primary text-medium\">1. </span>Enter\n");
      out.write("                                your email address below.</li>\n");
      out.write("                            <li><span class=\"text-primary text-medium\">2. </span>Our\n");
      out.write("                                system will send you an OTP to your email</li>\n");
      out.write("                            <li><span class=\"text-primary text-medium\">3. </span>Enter the OTP on the \n");
      out.write("                                next page</li>\n");
      out.write("                        </ol>\n");
      out.write("                    </div>\n");
      out.write("                    <form class=\"card mt-4\" action=\"MainController\" method=\"POST\">\n");
      out.write("                        <div class=\"card-body\">\n");
      out.write("                            <strong style=\"color: red\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${message}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label for=\"email-for-pass\">Enter your email address</label> <input\n");
      out.write("                                    class=\"form-control\" type=\"text\" name=\"email\" id=\"email-for-pass\" required=\"\"><small\n");
      out.write("                                    class=\"form-text text-muted\">Enter the registered email address . Then we'll\n");
      out.write("                                    email a OTP to this address.</small>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"card-footer\">\n");
      out.write("<!--                            <button class=\"btn btn-success\" name=\"action\" type=\"submit\">Get New\n");
      out.write("                                Password</button>-->\n");
      out.write("                                <input style=\"color: white; background-color:  #309cf4; border: none;\" name=\"action\" type=\"submit\" value=\"Get New Password\">\n");
      out.write("                            <button class=\"btn btn-danger\" type=\"submit\">Back to\n");
      out.write("                                Login</button>\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script type='text/javascript'\n");
      out.write("        src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>\n");
      out.write("        <script type='text/javascript' src=''></script>\n");
      out.write("        <script type='text/javascript' src=''></script>\n");
      out.write("        <script type='text/Javascript'></script>\n");
      out.write("    </body>\n");
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
