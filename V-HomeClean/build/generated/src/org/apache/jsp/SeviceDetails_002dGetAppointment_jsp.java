package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class SeviceDetails_002dGetAppointment_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_fmt_formatNumber_value_pattern_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_fmt_formatNumber_value_pattern_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_if_test.release();
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <title>V-HomeClean - Đặt Lịch</title>\r\n");
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
      out.write("        <!--        <link href=\"https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Poppins:wght@600;700&display=swap\" rel=\"stylesheet\"> -->\r\n");
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
      out.write("\r\n");
      out.write("            <!-- Page Header Start -->\r\n");
      out.write("            <div class=\"container-fluid page-header py-5 mb-5 wow fadeIn\" data-wow-delay=\"0.1s\">\r\n");
      out.write("                <div class=\"container text-center py-5\">\r\n");
      out.write("                    <h1 class=\"display-4 text-white animated slideInDown mb-4\">Đặt Lịch Dịch Vụ</h1>\r\n");
      out.write("                    <nav aria-label=\"breadcrumb animated slideInDown\">\r\n");
      out.write("                        <ol class=\"breadcrumb justify-content-center mb-0\">\r\n");
      out.write("                            <li class=\"breadcrumb-item\"><a class=\"text-white\" href=\"index.jsp\">Trang chủ</a></li>\r\n");
      out.write("                            <li class=\"breadcrumb-item text-primary active\" aria-current=\"page\">Đặt Lịch Dịch Vụ</li>\r\n");
      out.write("                        </ol>\r\n");
      out.write("                    </nav>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- Page Header End -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            <div class=\"container-xxl py-5\">\r\n");
      out.write("                <div class=\"container\">\r\n");
      out.write("                    <div class=\"row g-5\">\r\n");
      out.write("                        <div class=\"col-lg-6 wow fadeInUp\" data-wow-delay=\"0.1s\">\r\n");
      out.write("                            <div class=\"position-relative overflow-hidden ps-5 pt-5 h-100\" style=\"min-height: 400px;\">\r\n");
      out.write("                                <img class=\"position-absolute w-100 h-100\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ServiceDetail.image}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" alt=\"\" style=\"object-fit: cover;\">\r\n");
      out.write("                            <div class=\"position-absolute top-0 start-0 bg-white pe-3 pb-3\" style=\"width: 200px; height: 200px;\">\r\n");
      out.write("                                <div class=\"d-flex flex-column justify-content-center text-center bg-primary h-100 p-3\">\r\n");
      out.write("                                    <h1 class=\"text-white\">25</h1>\r\n");
      out.write("                                    <h2 class=\"text-white\">Years</h2>\r\n");
      out.write("                                    <h5 class=\"text-white mb-0\">Experience</h5>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-lg-6 wow fadeInUp\" data-wow-delay=\"0.5s\">\r\n");
      out.write("                        <div class=\"h-100\">\r\n");
      out.write("                            <div class=\"border-start border-5 border-primary ps-4 mb-5\">\r\n");
      out.write("                                <h6 class=\"text-body text-uppercase mb-2\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ServiceDetail.cateServiceName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h6>\r\n");
      out.write("                                <h1 class=\"display-6 mb-0\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ServiceDetail.serviceName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h1>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <p>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ServiceDetail.serviceDetail}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\r\n");
      out.write("                            <h6 class=\"mb-2\">Giá ước lượng chỉ từ ");
      if (_jspx_meth_fmt_formatNumber_0(_jspx_page_context))
        return;
      out.write("</h6>\r\n");
      out.write("                            <div class=\"border-top mt-4 pt-4\">\r\n");
      out.write("                                <div class=\"row g-4\">\r\n");
      out.write("                                    <div class=\"col-sm-4 d-flex wow fadeIn\" data-wow-delay=\"0.1s\">\r\n");
      out.write("                                        <i class=\"fa fa-check fa-2x text-primary flex-shrink-0 me-3\"></i>\r\n");
      out.write("                                        <h6 class=\"mb-0\">Luôn đúng giờ</h6>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-sm-4 d-flex wow fadeIn\" data-wow-delay=\"0.3s\">\r\n");
      out.write("                                        <i class=\"fa fa-check fa-2x text-primary flex-shrink-0 me-3\"></i>\r\n");
      out.write("                                        <h6 class=\"mb-0\">24/7 giờ làm việc</h6>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-sm-4 d-flex wow fadeIn\" data-wow-delay=\"0.5s\">\r\n");
      out.write("                                        <i class=\"fa fa-check fa-2x text-primary flex-shrink-0 me-3\"></i>\r\n");
      out.write("                                        <h6 class=\"mb-0\">Chuyên nghiệp</h6>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!-- Appointment Start -->\r\n");
      out.write("        <div class=\"container-xxl py-5\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <div class=\"row g-5\">\r\n");
      out.write("                    <div class=\"col-lg-5 col-md-6 wow fadeInUp\" data-wow-delay=\"0.1s\">\r\n");
      out.write("                        <div class=\"border-start border-5 border-primary ps-4 mb-5\">\r\n");
      out.write("                            <h6 class=\"text-body text-uppercase mb-2\">Dịch vụ</h6>\r\n");
      out.write("                            <h1 class=\"display-6 mb-0\">V-HomeClean: Căn hộ của bạn luôn sạch sẽ, gọn gàng và thật thoải mái!</h1>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <p class=\"mb-0\">V-HomeClean luôn cung cấp dịch vụ tốt dành cho bạn cũng như kinh nghiệm và sự hiệu quả của đội ngũ nhân viên. Sẵn sàng giúp bạn có một không gian sống đẹp!</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-lg-7 col-md-6 wow fadeInUp\" data-wow-delay=\"0.5s\">\r\n");
      out.write("                        \r\n");
      out.write("                        \r\n");
      out.write("                        <form action=\"MainController\" method=\"post\">\r\n");
      out.write("                            <input type=\"hidden\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.acc.accountID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" name=\"accountID\">\r\n");
      out.write("                            <div class=\"row g-3\">\r\n");
      out.write("                                <div class=\"col-sm-6\">\r\n");
      out.write("                                    <div class=\"form-floating\">\r\n");
      out.write("                                        <input value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.fullName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" type=\"text\" class=\"form-control bg-light border-0\" id=\"gname\" name=\"fullName\" placeholder=\"Gurdian Name\">\r\n");
      out.write("                                        <label for=\"fulName\">Họ và Tên</label>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                        <strong style=\"color: #e72734;\" >");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${fullNameError}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"col-sm-6\">\r\n");
      out.write("                                    <div class=\"form-floating\">\r\n");
      out.write("                                        <input value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.email}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" type=\"email\" class=\"form-control bg-light border-0\" id=\"gmail\" name=\"email\" placeholder=\"Gurdian Email\">\r\n");
      out.write("                                        <label for=\"gmail\">Email</label>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                        <strong style=\"color: #e72734;\" >");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${emailError}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"col-sm-6\">\r\n");
      out.write("                                    <div class=\"form-floating\">\r\n");
      out.write("                                        <input value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.phone}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" type=\"text\" class=\"form-control bg-light border-0\" id=\"cname\" name=\"phone\" placeholder=\"Child Name\">\r\n");
      out.write("                                        <label for=\"phone\">Số điện thoại</label>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                        <strong style=\"color: #e72734;\" >");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${phoneError}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"col-sm-6\">\r\n");
      out.write("                                    <div class=\"form-floating\">\r\n");
      out.write("                                        <select class=\"form-select bg-light border-0\" name=\"serviceID\" aria-label=\"Guardian Relationship\">\r\n");
      out.write("                                            ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                                        </select>\r\n");
      out.write("                                        <label for=\"relationship\">Chọn loại dịch vụ</label>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"col-sm-6\">\r\n");
      out.write("                                    <div class=\"form-floating\">\r\n");
      out.write("                                        <select class=\"form-select bg-light border-0\" id=\"vinhomesOptions\" name=\"area\" aria-label=\"Guardian Relationship\">\r\n");
      out.write("                                            <option value=\"\">-- Chọn Vinhomes --</option>\r\n");
      out.write("                                            <option value=\"Vinhomes Central Park - TP. Hồ Chí Minh\">Vinhomes Central Park - TP. Hồ Chí Minh</option>\r\n");
      out.write("                                            <option value=\"Vinhomes Golden River - TP. Hồ Chí Minh\">Vinhomes Golden River - TP. Hồ Chí Minh</option>\r\n");
      out.write("                                            <option value=\"Vinhomes Metropolis - Hà Nội\">Vinhomes Metropolis - Hà Nội</option>\r\n");
      out.write("\r\n");
      out.write("                                        </select>\r\n");
      out.write("                                        <label for=\"relationship\">Chọn khu vực VinHomes của bạn</label>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <strong style=\"color: #e72734;\" >");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${areaError}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"col-sm-6\">\r\n");
      out.write("                                    <div class=\"form-floating\">\r\n");
      out.write("                                        <select class=\"form-select bg-light border-0\" name=\"typeService\" aria-label=\"Guardian Relationship\">\r\n");
      out.write("                                            <option value=\"Dịch vụ 1 lần\" selected=\"\">Dịch vụ 1 lần</option>\r\n");
      out.write("                                            <option value=\"Định kì theo tuần\">Định kì theo tuần</option>\r\n");
      out.write("                                            <option value=\"Định kì theo tháng\">Định kì theo tháng</option>\r\n");
      out.write("                                        </select>\r\n");
      out.write("                                        <label for=\"relationship\">Dịch vụ Định kì</label>\r\n");
      out.write("                                        <strong style=\"color: #e72734;\" >");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${typeOfServiceError}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"col-sm-6\">\r\n");
      out.write("                                    <div class=\"form-floating\">\r\n");
      out.write("                                        <input type=\"date\" class=\"form-control bg-light border-0\" name=\"date\">\r\n");
      out.write("                                        <label for=\"date\">Ngày tháng năm:</label>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <strong style=\"color: #e72734;\" >");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${dateError}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"col-sm-6\">\r\n");
      out.write("                                    <div class=\"form-floating\">\r\n");
      out.write("                                        <input type=\"time\" class=\"form-control bg-light border-0\" name=\"time\">\r\n");
      out.write("                                        <label for=\"time\">Giờ cụ thể:</label>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <strong style=\"color: #e72734;\" >");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${timeError}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"col-sm-6\">\r\n");
      out.write("                                    <div class=\"form-floating\">\r\n");
      out.write("                                        <input type=\"text\" class=\"form-control bg-light border-0\" name=\"vinHomesID\" placeholder=\"Gurdian Email\">\r\n");
      out.write("                                        <label for=\"gmail\">Mã Phòng:</label>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <strong style=\"color: #e72734;\" >");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${vinHomeIDError}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"col-12\">\r\n");
      out.write("                                    <div class=\"form-floating\">\r\n");
      out.write("                                        <textarea class=\"form-control bg-light border-0\" placeholder=\"Leave a message here\" name=\"message\" style=\"height: 100px\"></textarea>\r\n");
      out.write("                                        <label for=\"message\">Ghi Chú:</label>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"col-12\">\r\n");
      out.write("                                    <button class=\"btn btn-primary w-100 py-3\" type=\"submit\" name=\"action\" value=\"Booking\">Booking Service</button>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </form>\r\n");
      out.write("                                        \r\n");
      out.write("                                        \r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- Appointment End -->\r\n");
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

  private boolean _jspx_meth_fmt_formatNumber_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:formatNumber
    org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag _jspx_th_fmt_formatNumber_0 = (org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag) _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag.class);
    _jspx_th_fmt_formatNumber_0.setPageContext(_jspx_page_context);
    _jspx_th_fmt_formatNumber_0.setParent(null);
    _jspx_th_fmt_formatNumber_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ServiceDetail.price}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_fmt_formatNumber_0.setPattern("###,### VND");
    int _jspx_eval_fmt_formatNumber_0 = _jspx_th_fmt_formatNumber_0.doStartTag();
    if (_jspx_th_fmt_formatNumber_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.reuse(_jspx_th_fmt_formatNumber_0);
      return true;
    }
    _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.reuse(_jspx_th_fmt_formatNumber_0);
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
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listS}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("s");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                                                <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${s.serviceID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write(' ');
          if (_jspx_meth_c_if_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${s.serviceName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\r\n");
          out.write("                                            ");
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

  private boolean _jspx_meth_c_if_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${s.serviceID eq ServiceDetail.serviceID}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("selected");
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
}
