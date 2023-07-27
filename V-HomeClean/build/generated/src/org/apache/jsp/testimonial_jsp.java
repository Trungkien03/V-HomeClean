package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class testimonial_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!--        <link href=\"https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Poppins:wght@600;700&display=swap\" rel=\"stylesheet\"> -->\r\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@500&display=swap\" rel=\"stylesheet\">\r\n");
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
      out.write("    </head>\r\n");
      out.write("\r\n");
      out.write("    <body>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navigation.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!-- Page Header Start -->\r\n");
      out.write("        <div class=\"container-fluid page-header py-5 mb-5 wow fadeIn\" data-wow-delay=\"0.1s\">\r\n");
      out.write("            <div class=\"container text-center py-5\">\r\n");
      out.write("                <h1 class=\"display-4 text-white animated slideInDown mb-4\">Testimonial</h1>\r\n");
      out.write("                <nav aria-label=\"breadcrumb animated slideInDown\">\r\n");
      out.write("                    <ol class=\"breadcrumb justify-content-center mb-0\">\r\n");
      out.write("                        <li class=\"breadcrumb-item\"><a class=\"text-white\" href=\"#\">Home</a></li>\r\n");
      out.write("                        <li class=\"breadcrumb-item\"><a class=\"text-white\" href=\"#\">Pages</a></li>\r\n");
      out.write("                        <li class=\"breadcrumb-item text-primary active\" aria-current=\"page\">Testimonial</li>\r\n");
      out.write("                    </ol>\r\n");
      out.write("                </nav>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- Page Header End -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!-- Testimonial Start -->\r\n");
      out.write("        <div class=\"container-xxl py-5\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <div class=\"row g-5\">\r\n");
      out.write("                    <div class=\"col-lg-5 wow fadeInUp\" data-wow-delay=\"0.1s\">\r\n");
      out.write("                        <div class=\"border-start border-5 border-primary ps-4 mb-5\">\r\n");
      out.write("                            <h6 class=\"text-body text-uppercase mb-2\">Testimonial</h6>\r\n");
      out.write("                            <h1 class=\"display-6 mb-0\">What Our Happy Clients Say!</h1>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <p class=\"mb-4\">Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo justo magna dolore erat amet</p>\r\n");
      out.write("                        <div class=\"row g-4\">\r\n");
      out.write("                            <div class=\"col-sm-6\">\r\n");
      out.write("                                <div class=\"d-flex align-items-center mb-2\">\r\n");
      out.write("                                    <i class=\"fa fa-users fa-2x text-primary flex-shrink-0\"></i>\r\n");
      out.write("                                    <h1 class=\"ms-3 mb-0\">123+</h1>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <h5 class=\"mb-0\">Happy Clients</h5>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-sm-6\">\r\n");
      out.write("                                <div class=\"d-flex align-items-center mb-2\">\r\n");
      out.write("                                    <i class=\"fa fa-check fa-2x text-primary flex-shrink-0\"></i>\r\n");
      out.write("                                    <h1 class=\"ms-3 mb-0\">123+</h1>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <h5 class=\"mb-0\">Projects Done</h5>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-lg-7 wow fadeInUp\" data-wow-delay=\"0.5s\">\r\n");
      out.write("                        <div class=\"owl-carousel testimonial-carousel\">\r\n");
      out.write("                            <div class=\"testimonial-item\">\r\n");
      out.write("                                <img class=\"img-fluid mb-4\" src=\"img/testimonial-1.jpg\" alt=\"\">\r\n");
      out.write("                                <p class=\"fs-5\">Dolores sed duo clita tempor justo dolor et stet lorem kasd labore dolore lorem ipsum. At lorem lorem magna ut et, nonumy et labore et tempor diam tempor erat.</p>\r\n");
      out.write("                                <div class=\"bg-primary mb-3\" style=\"width: 60px; height: 5px\"></div>\r\n");
      out.write("                                <h5>Client Name</h5>\r\n");
      out.write("                                <span>Profession</span>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"testimonial-item\">\r\n");
      out.write("                                <img class=\"img-fluid mb-4\" src=\"img/testimonial-2.jpg\" alt=\"\">\r\n");
      out.write("                                <p class=\"fs-5\">Dolores sed duo clita tempor justo dolor et stet lorem kasd labore dolore lorem ipsum. At lorem lorem magna ut et, nonumy et labore et tempor diam tempor erat.</p>\r\n");
      out.write("                                <div class=\"bg-primary mb-3\" style=\"width: 60px; height: 5px\"></div>\r\n");
      out.write("                                <h5>Client Name</h5>\r\n");
      out.write("                                <span>Profession</span>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- Testimonial End -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!-- Footer Start -->\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("        <!-- Footer End -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!-- Back to Top -->\r\n");
      out.write("        <a href=\"#\" class=\"btn btn-lg btn-primary btn-lg-square back-to-top\"><i class=\"bi bi-arrow-up\"></i></a>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!-- JavaScript Libraries -->\r\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.4.1.min.js\"></script>\r\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("        <script src=\"lib/wow/wow.min.js\"></script>\r\n");
      out.write("        <script src=\"lib/easing/easing.min.js\"></script>\r\n");
      out.write("        <script src=\"lib/waypoints/waypoints.min.js\"></script>\r\n");
      out.write("        <script src=\"lib/owlcarousel/owl.carousel.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        <!-- Template Javascript -->\r\n");
      out.write("        <script src=\"js/main.js\"></script>\r\n");
      out.write("    </body>\r\n");
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
}
