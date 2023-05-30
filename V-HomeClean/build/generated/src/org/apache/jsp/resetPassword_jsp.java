package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DTO.UserError;
import java.util.List;
import DTO.AccountDTO;
import DTO.AccountDTO;

public final class resetPassword_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset='utf-8'>\n");
      out.write("        <meta name='viewport' content='width=device-width, initial-scale=1'>\n");
      out.write("        <title>Reset Password Page</title>\n");
      out.write("        <link\n");
      out.write("            href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'\n");
      out.write("            rel='stylesheet'>\n");
      out.write("        <link\n");
      out.write("            href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css'\n");
      out.write("            rel='stylesheet'>\n");
      out.write("        <script type='text/javascript'\n");
      out.write("        src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>\n");
      out.write("        <style>\n");
      out.write("            .placeicon {\n");
      out.write("                font-family: fontawesome\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .custom-control-label::before {\n");
      out.write("                background-color: #dee2e6;\n");
      out.write("                border: #dee2e6\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    ");

        AccountDTO Acc = (AccountDTO) session.getAttribute("Account");
        if (Acc != null) {

    
      out.write("\n");
      out.write("\n");
      out.write("    <body oncontextmenu='return false' class='snippet-body bg-info'>\n");
      out.write("        <link rel=\"stylesheet\"\n");
      out.write("              href=\"https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/5.1.1/bootstrap-social.css\">\n");
      out.write("        \n");
      out.write("        <div>\n");
      out.write("            <!-- Container containing all contents -->\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row justify-content-center\">\n");
      out.write("                    <div class=\"col-12 col-md-9 col-lg-7 col-xl-6 mt-5\">\n");
      out.write("                        <!-- White Container -->\n");
      out.write("                        <div class=\"container bg-white rounded mt-2 mb-2 px-0\">\n");
      out.write("                            <!-- Main Heading -->\n");
      out.write("                            <div class=\"row justify-content-center align-items-center pt-3\">\n");
      out.write("                                <h1>\n");
      out.write("                                    <strong>V-HomeClean - Cập nhật lại mật khẩu</strong>\n");
      out.write("                                </h1>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"pt-3 pb-3\">\n");
      out.write("\n");
      out.write("                                <strong style=\"color: red\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ERROR}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong>\n");
      out.write("                                <form class=\"form-horizontal\" action=\"MainController\" method=\"POST\">\n");
      out.write("                                    <div class=\"form-group row justify-content-center px-3\">\n");
      out.write("                                        <div class=\"col-9 px-0\">\n");
      out.write("                                            <input type=\"password\" name=\"password\" placeholder=\"&#xf084; &nbsp; New Password\"\n");
      out.write("                                                   class=\"form-control border-info placeicon\" >\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group row justify-content-center px-3\">\n");
      out.write("                                        <div class=\"col-9 px-0\">\n");
      out.write("                                            <input type=\"password\" name=\"confirm\" \n");
      out.write("                                                   placeholder=\"&#xf084; &nbsp; Confirm New Password\"\n");
      out.write("                                                   class=\"form-control border-info placeicon\">\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    \n");
      out.write("                                    <div class=\"form-group row justify-content-center\">\n");
      out.write("                                        <div class=\"col-3 px-3 mt-3\">\n");
      out.write("                                            <input type=\"submit\" name=\"action\" value=\"Update\"\n");
      out.write("                                                   class=\"btn btn-block btn-info\">\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </form>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <!-- Alternative Login -->\n");
      out.write("                            <div class=\"mx-0 px-0 bg-light\">\n");
      out.write("\n");
      out.write("                                <!-- Horizontal Line -->\n");
      out.write("                                <div class=\"px-4 pt-5\">\n");
      out.write("                                    <hr>\n");
      out.write("                                </div>\n");
      out.write("                                <!-- Register Now -->\n");
      out.write("                                <div class=\"pt-2\">\n");
      out.write("                                    <div class=\"row justify-content-center\">\n");
      out.write("                                        <h5>\n");
      out.write("                                            Don't have an Account?<span><a href=\"#\"\n");
      out.write("                                                                           class=\"text-danger\"> Register Now!</a></span>\n");
      out.write("                                        </h5>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div\n");
      out.write("                                        class=\"row justify-content-center align-items-center pt-4 pb-5\">\n");
      out.write("                                        <div class=\"col-4\">\n");
      out.write("\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        ");
            }
        
      out.write("\n");
      out.write("\n");
      out.write("        <script type='text/javascript'\n");
      out.write("        src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>\n");
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
