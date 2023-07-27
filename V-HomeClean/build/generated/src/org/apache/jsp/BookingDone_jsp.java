package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class BookingDone_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_fmt_formatNumber_value_pattern_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_fmt_formatNumber_value_pattern_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <title>V-HomeClean - Home Clean Website Services</title>\n");
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
      out.write("        <!--        <link href=\"https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Poppins:wght@600;700&display=swap\" rel=\"stylesheet\"> -->\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@500&display=swap\" rel=\"stylesheet\">\n");
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
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navigation.jsp", out, false);
      out.write("\n");
      out.write("            <!-- 404 Start -->\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"container-xxl py-5 wow fadeInUp\" data-wow-delay=\"0.1s\">\n");
      out.write("                <div class=\"container text-center\">\n");
      out.write("                    <div class=\"row justify-content-center\">\n");
      out.write("                        <div class=\"col-md-6\">\n");
      out.write("                            <i class=\"bi bi-check-circle-fill display-1 text-primary\"></i>\n");
      out.write("                            <h1 class=\"display-1\">Congratulations</h1>\n");
      out.write("                            <h3 class=\"\">Đơn của bạn đã được ghi nhận thành công</h3>\n");
      out.write("                            <img class=\"img-thumbnail\" style=\"width: 70%; height: 45%;\" src=\"img/thangQR.jpg\">\n");
      out.write("                            <p style=\"color: black;\">Bạn vui lòng thanh toán phí qua mã QR code\n");
      out.write("                                ở trên, chúng tôi sẽ xác nhận đơn hàng cho bạn sớm nhất có thể</p>\n");
      out.write("                            <p style=\"color: black;\">Chủ tài khoản: Le Quoc Thang</p>\n");
      out.write("                            <p style=\"color: black;\">Cú pháp: Thanh toan - [mã đơn hàng]</p>\n");
      out.write("                            <a class=\"btn btn-primary py-3 px-5\" href=\"HomePageController\">Về Lại Trang Chủ</a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-6\">\n");
      out.write("                            <section style=\"background-color: #eee;\">\n");
      out.write("                                <div class=\"container py-5\">\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col-md-12\">\n");
      out.write("                                            <h1>Thông tin đơn của bạn</h1>\n");
      out.write("                                            <p class=\"mb-4\">Kiểm tra lại thông tin đơn hàng thông qua Thông Tin Tài Khoản của bạn</p>\n");
      out.write("                                            <div style=\"color: black;\">Mã đơn hàng của bạn: 12");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${bookingIDNumber}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</div>\n");
      out.write("                                        <div style=\"color: black;\" class=\"card mb-4\">\n");
      out.write("                                            <div class=\"card-body\">\n");
      out.write("                                                <div class=\"row\">\n");
      out.write("                                                    <div class=\"col-md-3\">\n");
      out.write("                                                        <p class=\"mb-0\">Họ và Tên:</p>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <div class=\"col-md-9\">\n");
      out.write("                                                        <p style=\"color: black;\" class=\"text-muted mb-0\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.fullName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                                <hr>\n");
      out.write("                                                <div class=\"row\">\n");
      out.write("                                                    <div class=\"col-md-3\">\n");
      out.write("                                                        <p class=\"mb-0\">Tên dịch vụ:</p>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <div class=\"col-md-9\">\n");
      out.write("                                                        <p style=\"color: black;\" class=\"text-muted mb-0\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${serviceName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                                <hr>\n");
      out.write("                                                <div class=\"row\">\n");
      out.write("                                                    <div class=\"col-md-3\">\n");
      out.write("                                                        <p class=\"mb-0\">Địa chỉ email:</p>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <div class=\"col-md-9\">\n");
      out.write("                                                        <p style=\"color: black;\" class=\"text-muted mb-0\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.email}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                                <hr>\n");
      out.write("                                                <div class=\"row\">\n");
      out.write("                                                    <div class=\"col-md-3\">\n");
      out.write("                                                        <p style=\"color: black;\" class=\"mb-0\">Số điện thoại:</p>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <div class=\"col-md-9\">\n");
      out.write("                                                        <p style=\"color: black;\" class=\"text-muted mb-0\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acc.phone}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                                <hr>\n");
      out.write("                                                <div class=\"row\">\n");
      out.write("                                                    <div class=\"col-md-3\">\n");
      out.write("                                                        <p style=\"color: black;\" class=\"mb-0\">Mã phòng:</p>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <div class=\"col-md-9\">\n");
      out.write("                                                        <p style=\"color: black;\" class=\"text-muted mb-0\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${vinhomesID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                                <hr>\n");
      out.write("                                                <div class=\"row\">\n");
      out.write("                                                    <div class=\"col-md-3\">\n");
      out.write("                                                        <p style=\"color: black;\" class=\"mb-0\">Khu vực:</p>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <div class=\"col-md-9\">\n");
      out.write("                                                        <p style=\"color: black;\" class=\"text-muted mb-0\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${area}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                                <hr>\n");
      out.write("                                                <div class=\"row\">\n");
      out.write("                                                    <div class=\"col-md-3\">\n");
      out.write("                                                        <p style=\"color: black;\" class=\"mb-0\">Thời gian:</p>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <div class=\"col-md-9\">\n");
      out.write("                                                        <p style=\"color: black;\" class=\"text-muted mb-0\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${bookingDate}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                                <hr>\n");
      out.write("                                                <div class=\"row\">\n");
      out.write("                                                    <div class=\"col-md-3\">\n");
      out.write("                                                        <p style=\"color: black;\" class=\"mb-0\">Tổng chi phí:</p>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <div class=\"col-md-9\">\n");
      out.write("                                                        <p style=\"color: black;\" class=\"text-muted mb-0\">");
      if (_jspx_meth_fmt_formatNumber_0(_jspx_page_context))
        return;
      out.write("</p>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                        </div>\n");
      out.write("                                        <form action=\"ProfilePageController\" method=\"post\">\n");
      out.write("                                            <button class=\"btn btn-primary py-3 px-5\" name=\"action\" value=\"Kiểm tra\">Kiểm tra đơn hàng của bạn</button>\n");
      out.write("                                        </form>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </section>     \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- 404 End -->\n");
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

  private boolean _jspx_meth_fmt_formatNumber_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:formatNumber
    org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag _jspx_th_fmt_formatNumber_0 = (org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag) _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag.class);
    _jspx_th_fmt_formatNumber_0.setPageContext(_jspx_page_context);
    _jspx_th_fmt_formatNumber_0.setParent(null);
    _jspx_th_fmt_formatNumber_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${totalPrice}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_fmt_formatNumber_0.setPattern("###,### VND");
    int _jspx_eval_fmt_formatNumber_0 = _jspx_th_fmt_formatNumber_0.doStartTag();
    if (_jspx_th_fmt_formatNumber_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.reuse(_jspx_th_fmt_formatNumber_0);
      return true;
    }
    _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.reuse(_jspx_th_fmt_formatNumber_0);
    return false;
  }
}
