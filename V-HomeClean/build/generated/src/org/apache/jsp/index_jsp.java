package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items_end_begin;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_fmt_formatNumber_value_pattern_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_forEach_var_items_end_begin = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_fmt_formatNumber_value_pattern_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_forEach_var_items_end_begin.release();
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
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
      out.write("            <!-- Carousel Start -->\r\n");
      out.write("            <div class=\"container-fluid p-0 mb-5 wow fadeIn\" data-wow-delay=\"0.1s\">\r\n");
      out.write("                <div id=\"header-carousel\" class=\"carousel slide\" data-bs-ride=\"carousel\">\r\n");
      out.write("                    <div class=\"carousel-inner\">\r\n");
      out.write("                        <div class=\"carousel-item active\">\r\n");
      out.write("                            <img class=\"w-100\" src=\"img/banner1.jpg\" alt=\"Image\">\r\n");
      out.write("                            <div class=\"carousel-caption\">\r\n");
      out.write("                                <div class=\"container\">\r\n");
      out.write("                                    <div class=\"row justify-content-center\">\r\n");
      out.write("                                        <div class=\"col-12 col-lg-10\">\r\n");
      out.write("                                            <h5 class=\"text-light text-uppercase mb-3 animated slideInDown\">Chào mừng đến với <span style=\"color: #f8e43c\">V-HomeClean</span></h5>\r\n");
      out.write("                                            <h1 class=\"display-2 text-light mb-3 animated slideInDown\">Công ty dịch vụ chuyên vệ sinh và sửa chữa khu dân cư VinHomes</h1>\r\n");
      out.write("                                            <ol class=\"breadcrumb mb-4 pb-2\">\r\n");
      out.write("                                                <li class=\"breadcrumb-item fs-5 text-light\">Commercial</li>\r\n");
      out.write("                                                <li class=\"breadcrumb-item fs-5 text-light\">Residential</li>\r\n");
      out.write("                                                <li class=\"breadcrumb-item fs-5 text-light\">Industrial</li>\r\n");
      out.write("                                            </ol>\r\n");
      out.write("                                            <a href=\"\" class=\"btn btn-primary py-3 px-5\">More Details</a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"carousel-item\">\r\n");
      out.write("                            <img class=\"w-100\" src=\"img/banner2.jpg\" alt=\"Image\">\r\n");
      out.write("                            <div class=\"carousel-caption\">\r\n");
      out.write("                                <div class=\"container\">\r\n");
      out.write("                                    <div class=\"row justify-content-center\">\r\n");
      out.write("                                        <div class=\"col-12 col-lg-10\">\r\n");
      out.write("                                            <h5 class=\"text-light text-uppercase mb-3 animated slideInDown\">Chào mừng đến với <span style=\"color: #f8e43c\">V-HomeClean</span></h5>\r\n");
      out.write("                                            <h1 class=\"display-2 text-light mb-3 animated slideInDown\">Dịch vụ Vệ sinh & Sửa chữa Chuyên nghiệp</h1>\r\n");
      out.write("                                            <ol class=\"breadcrumb mb-4 pb-2\">\r\n");
      out.write("                                                <li class=\"breadcrumb-item fs-5 text-light\">Commercial</li>\r\n");
      out.write("                                                <li class=\"breadcrumb-item fs-5 text-light\">Residential</li>\r\n");
      out.write("                                                <li class=\"breadcrumb-item fs-5 text-light\">Industrial</li>\r\n");
      out.write("                                            </ol>\r\n");
      out.write("                                            <a href=\"\" class=\"btn btn-primary py-3 px-5\">More Details</a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <button class=\"carousel-control-prev\" type=\"button\" data-bs-target=\"#header-carousel\"\r\n");
      out.write("                            data-bs-slide=\"prev\">\r\n");
      out.write("                        <span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>\r\n");
      out.write("                        <span class=\"visually-hidden\">Previous</span>\r\n");
      out.write("                    </button>\r\n");
      out.write("                    <button class=\"carousel-control-next\" type=\"button\" data-bs-target=\"#header-carousel\"\r\n");
      out.write("                            data-bs-slide=\"next\">\r\n");
      out.write("                        <span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>\r\n");
      out.write("                        <span class=\"visually-hidden\">Next</span>\r\n");
      out.write("                    </button>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- Carousel End -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            <!-- About Start -->\r\n");
      out.write("            <div class=\"container-xxl py-5\">\r\n");
      out.write("                <div class=\"container\">\r\n");
      out.write("                    <div class=\"row g-5\">\r\n");
      out.write("                        <div class=\"col-lg-6 wow fadeInUp\" data-wow-delay=\"0.1s\">\r\n");
      out.write("                            <div class=\"position-relative overflow-hidden ps-5 pt-5 h-100\" style=\"min-height: 400px;\">\r\n");
      out.write("                                <img class=\"position-absolute w-100 h-100\" src=\"img/about.jpg\" alt=\"\" style=\"object-fit: cover;\">\r\n");
      out.write("                                <div class=\"position-absolute top-0 start-0 bg-white pe-3 pb-3\" style=\"width: 200px; height: 200px;\">\r\n");
      out.write("                                    <div class=\"d-flex flex-column justify-content-center text-center bg-primary h-100 p-3\">\r\n");
      out.write("                                        <h1 class=\"text-white\">25</h1>\r\n");
      out.write("                                        <h2 class=\"text-white\">Years</h2>\r\n");
      out.write("                                        <h5 class=\"text-white mb-0\">Experience</h5>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-lg-6 wow fadeInUp\" data-wow-delay=\"0.5s\">\r\n");
      out.write("                            <div class=\"h-100\">\r\n");
      out.write("                                <div class=\"border-start border-5 border-primary ps-4 mb-5\">\r\n");
      out.write("                                    <h6 class=\"text-body text-uppercase mb-2\">About Us</h6>\r\n");
      out.write("                                    <h1 class=\"display-6 mb-0\">Dịch vụ chuyên về dọn dẹp và vệ sinh căn hộ!</h1>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <p> là đơn vị dịch vụ dọn dẹp và vệ sinh căn hộ chuyên nghiệp. Chúng tôi sẽ đảm bảo rằng căn hộ của bạn luôn sạch sẽ, gọn gàng và thoải mái. Đội ngũ nhân viên giàu kinh nghiệm và tận tâm của chúng tôi sẽ làm sạch từ trần nhà, lau kính, vệ sinh lỗ thông hơi, gầm tủ và các góc khuất khác. Hãy để V-HomeClean mang đến cho bạn không gian sống tươi mới và thoáng đãng trong căn hộ của mình.</p>\r\n");
      out.write("                                <p class=\"mb-4\">Một công ty đặc biệt cung cấp các dịch vụ dọn dẹp và vệ sinh chuyên nghiệp cho các không gian dân cư.</p>\r\n");
      out.write("                                <div class=\"border-top mt-4 pt-4\">\r\n");
      out.write("                                    <div class=\"row g-4\">\r\n");
      out.write("                                        <div class=\"col-sm-4 d-flex wow fadeIn\" data-wow-delay=\"0.1s\">\r\n");
      out.write("                                            <i class=\"fa fa-check fa-2x text-primary flex-shrink-0 me-3\"></i>\r\n");
      out.write("                                            <h6 class=\"mb-0\">Luôn sẵn sàng</h6>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"col-sm-4 d-flex wow fadeIn\" data-wow-delay=\"0.3s\">\r\n");
      out.write("                                            <i class=\"fa fa-check fa-2x text-primary flex-shrink-0 me-3\"></i>\r\n");
      out.write("                                            <h6 class=\"mb-0\">Dịch vụ 24/7</h6>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"col-sm-4 d-flex wow fadeIn\" data-wow-delay=\"0.5s\">\r\n");
      out.write("                                            <i class=\"fa fa-check fa-2x text-primary flex-shrink-0 me-3\"></i>\r\n");
      out.write("                                            <h6 class=\"mb-0\">Chuyên nghiệp</h6>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- About End -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            <!-- Facts Start -->\r\n");
      out.write("            <div class=\"container-fluid my-5 p-0\">\r\n");
      out.write("                <div class=\"row g-0\">\r\n");
      out.write("                    <div class=\"col-xl-3 col-sm-6 wow fadeIn\" data-wow-delay=\"0.1s\">\r\n");
      out.write("                        <div class=\"position-relative\">\r\n");
      out.write("                            <img class=\"img-fluid w-100\" src=\"img/fact-1.jpg\" alt=\"\">\r\n");
      out.write("                            <div class=\"facts-overlay\">\r\n");
      out.write("                                <h1 class=\"display-1\">01</h1>\r\n");
      out.write("                                <h4 class=\"text-white mb-3\">Construction</h4>\r\n");
      out.write("                                <p class=\"text-white\">Aliqu diam amet diam et eos erat ipsum lorem stet lorem sit clita duo justo erat amet</p>\r\n");
      out.write("                                <a class=\"text-white small\" href=\"\">READ MORE<i class=\"fa fa-arrow-right ms-3\"></i></a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-xl-3 col-sm-6 wow fadeIn\" data-wow-delay=\"0.3s\">\r\n");
      out.write("                        <div class=\"position-relative\">\r\n");
      out.write("                            <img class=\"img-fluid w-100\" src=\"img/fact-2.jpg\" alt=\"\">\r\n");
      out.write("                            <div class=\"facts-overlay\">\r\n");
      out.write("                                <h1 class=\"display-1\">02</h1>\r\n");
      out.write("                                <h4 class=\"text-white mb-3\">Mechanical</h4>\r\n");
      out.write("                                <p class=\"text-white\">Aliqu diam amet diam et eos erat ipsum lorem stet lorem sit clita duo justo erat amet</p>\r\n");
      out.write("                                <a class=\"text-white small\" href=\"\">READ MORE<i class=\"fa fa-arrow-right ms-3\"></i></a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-xl-3 col-sm-6 wow fadeIn\" data-wow-delay=\"0.5s\">\r\n");
      out.write("                        <div class=\"position-relative\">\r\n");
      out.write("                            <img class=\"img-fluid w-100\" src=\"img/fact-3.jpg\" alt=\"\">\r\n");
      out.write("                            <div class=\"facts-overlay\">\r\n");
      out.write("                                <h1 class=\"display-1\">03</h1>\r\n");
      out.write("                                <h4 class=\"text-white mb-3\">Architecture</h4>\r\n");
      out.write("                                <p class=\"text-white\">Aliqu diam amet diam et eos erat ipsum lorem stet lorem sit clita duo justo erat amet</p>\r\n");
      out.write("                                <a class=\"text-white small\" href=\"\">READ MORE<i class=\"fa fa-arrow-right ms-3\"></i></a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-xl-3 col-sm-6 wow fadeIn\" data-wow-delay=\"0.7s\">\r\n");
      out.write("                        <div class=\"position-relative\">\r\n");
      out.write("                            <img class=\"img-fluid w-100\" src=\"img/fact-4.jpg\" alt=\"\">\r\n");
      out.write("                            <div class=\"facts-overlay\">\r\n");
      out.write("                                <h1 class=\"display-1\">04</h1>\r\n");
      out.write("                                <h4 class=\"text-white mb-3\">Interior Design</h4>\r\n");
      out.write("                                <p class=\"text-white\">Aliqu diam amet diam et eos erat ipsum lorem stet lorem sit clita duo justo erat amet</p>\r\n");
      out.write("                                <a class=\"text-white small\" href=\"\">READ MORE<i class=\"fa fa-arrow-right ms-3\"></i></a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- Facts End -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            <!-- Features Start -->\r\n");
      out.write("            <div class=\"container-xxl py-5\">\r\n");
      out.write("                <div class=\"container\">\r\n");
      out.write("                    <div class=\"row g-5\">\r\n");
      out.write("                        <div class=\"col-lg-6 wow fadeInUp\" data-wow-delay=\"0.1s\">\r\n");
      out.write("                            <div class=\"border-start border-5 border-primary ps-4 mb-5\">\r\n");
      out.write("                                <h6 class=\"text-body text-uppercase mb-2\">Why Choose Us!</h6>\r\n");
      out.write("                                <h1 class=\"display-6 mb-0\">Chuyên môn hóa và các tính năng của công ty chúng tôi</h1>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <p class=\"mb-5\">là một công ty chuyên môn hóa trong lĩnh vực dọn dẹp và vệ sinh. Chúng tôi tự hào cung cấp các tính năng và dịch vụ sau:</p>\r\n");
      out.write("                            <div class=\"row gy-5 gx-4\">\r\n");
      out.write("                                <div class=\"col-sm-6 wow fadeIn\" data-wow-delay=\"0.1s\">\r\n");
      out.write("                                    <div class=\"d-flex align-items-center mb-3\">\r\n");
      out.write("                                        <i class=\"fa fa-check fa-2x text-primary flex-shrink-0 me-3\"></i>\r\n");
      out.write("                                        <h6 class=\"mb-0\">Dịch vụ đa dạng</h6>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <span>chúng tôi cung cấp một loạt các dịch vụ như dọn dẹp căn hộ, lau chùi vệ sinh, vệ sinh kính, vệ sinh nệm và sofa, sửa chữa đồ điện và nhiều hơn nữa.</span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"col-sm-6 wow fadeIn\" data-wow-delay=\"0.2s\">\r\n");
      out.write("                                    <div class=\"d-flex align-items-center mb-3\">\r\n");
      out.write("                                        <i class=\"fa fa-check fa-2x text-primary flex-shrink-0 me-3\"></i>\r\n");
      out.write("                                        <h6 class=\"mb-0\">Chất lượng cao</h6>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <span>Đội ngũ của chúng tôi luôn làm việc chuyên nghiệp, tỉ mỉ và tận tâm để đảm bảo rằng mọi khía cạnh của công việc được thực hiện đạt hiệu quả cao.</span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"col-sm-6 wow fadeIn\" data-wow-delay=\"0.3s\">\r\n");
      out.write("                                    <div class=\"d-flex align-items-center mb-3\">\r\n");
      out.write("                                        <i class=\"fa fa-check fa-2x text-primary flex-shrink-0 me-3\"></i>\r\n");
      out.write("                                        <h6 class=\"mb-0\">Đội ngũ nhân viên đáng tin cậy</h6>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <span>Chúng tôi chỉ tuyển dụng những nhân viên có kỹ năng và kinh nghiệm, và đảm bảo rằng họ được đào tạo để cung cấp dịch vụ chất lượng và đáng tin cậy cho khách hàng.</span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"col-sm-6 wow fadeIn\" data-wow-delay=\"0.4s\">\r\n");
      out.write("                                    <div class=\"d-flex align-items-center mb-3\">\r\n");
      out.write("                                        <i class=\"fa fa-check fa-2x text-primary flex-shrink-0 me-3\"></i>\r\n");
      out.write("                                        <h6 class=\"mb-0\">Giá cả hợp lý</h6>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <span>Chúng tôi cung cấp dịch vụ với mức giá cạnh tranh và công bằng. Chúng tôi cam kết mang lại giá trị tốt nhất cho khách hàng, đồng thời duy trì sự hài lòng và tin tưởng của họ.</span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-lg-6 wow fadeInUp\" data-wow-delay=\"0.5s\">\r\n");
      out.write("                            <div class=\"position-relative overflow-hidden ps-5 pt-5 h-100\" style=\"min-height: 400px;\">\r\n");
      out.write("                                <img class=\"position-absolute w-100 h-100\" src=\"img/feature.jpg\" alt=\"\" style=\"object-fit: cover;\">\r\n");
      out.write("                                <div class=\"position-absolute top-0 start-0 bg-white pe-3 pb-3\" style=\"width: 200px; height: 200px;\">\r\n");
      out.write("                                    <div class=\"d-flex flex-column justify-content-center text-center bg-primary h-100 p-3\">\r\n");
      out.write("                                        <h1 class=\"text-white\">25</h1>\r\n");
      out.write("                                        <h2 class=\"text-white\">Years</h2>\r\n");
      out.write("                                        <h5 class=\"text-white mb-0\">Experience</h5>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- Features End -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            <!-- Service Start -->\r\n");
      out.write("            <div class=\"container-xxl py-5\">\r\n");
      out.write("                <div class=\"container\">\r\n");
      out.write("                    <div class=\"row g-5 align-items-end mb-5\">\r\n");
      out.write("                        <div class=\"col-lg-6 wow fadeInUp\" data-wow-delay=\"0.1s\">\r\n");
      out.write("                            <div class=\"border-start border-5 border-primary ps-4\">\r\n");
      out.write("                                <h6 class=\"text-body text-uppercase mb-2\">Our Services</h6>\r\n");
      out.write("                                <h1 class=\"display-6 mb-0\">Construction And Renovation Solutions</h1>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-lg-6 text-lg-end wow fadeInUp\" data-wow-delay=\"0.3s\">\r\n");
      out.write("                            <a class=\"btn btn-primary py-3 px-5\" href=\"ServicePageController\">More Services</a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"row g-4 justify-content-center\">\r\n");
      out.write("            <!--Thẻ service ở đây-->\r\n");
      out.write("            \r\n");
      out.write("                    ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("            \r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- Service End -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            <!-- Appointment Start -->\r\n");
      out.write("            <div class=\"container-fluid appointment my-5 py-5 wow fadeIn\" data-wow-delay=\"0.1s\">\r\n");
      out.write("                <div class=\"container py-5\">\r\n");
      out.write("                    <div class=\"row g-5\">\r\n");
      out.write("                        <div class=\"col-lg-5 col-md-6 wow fadeIn\" data-wow-delay=\"0.3s\">\r\n");
      out.write("                            <div class=\"border-start border-5 border-primary ps-4 mb-5\">\r\n");
      out.write("                                <h6 class=\"text-white text-uppercase mb-2\">Appointment</h6>\r\n");
      out.write("                                <h1 class=\"display-6 text-white mb-0\">A Company Involved In Service And Maintenance</h1>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <p class=\"text-white mb-0\">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo justo magna dolore erat amet</p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-lg-7 col-md-6 wow fadeIn\" data-wow-delay=\"0.5s\">\r\n");
      out.write("                            <form>\r\n");
      out.write("                                <div class=\"row g-3\">\r\n");
      out.write("                                    <div class=\"col-sm-6\">\r\n");
      out.write("                                        <div class=\"form-floating\">\r\n");
      out.write("                                            <input type=\"text\" class=\"form-control bg-dark border-0\" id=\"gname\" placeholder=\"Gurdian Name\">\r\n");
      out.write("                                            <label for=\"gname\">Your Name</label>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-sm-6\">\r\n");
      out.write("                                        <div class=\"form-floating\">\r\n");
      out.write("                                            <input type=\"email\" class=\"form-control bg-dark border-0\" id=\"gmail\" placeholder=\"Gurdian Email\">\r\n");
      out.write("                                            <label for=\"gmail\">Your Email</label>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-sm-6\">\r\n");
      out.write("                                        <div class=\"form-floating\">\r\n");
      out.write("                                            <input type=\"text\" class=\"form-control bg-dark border-0\" id=\"cname\" placeholder=\"Child Name\">\r\n");
      out.write("                                            <label for=\"cname\">Your Mobile</label>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-sm-6\">\r\n");
      out.write("                                        <div class=\"form-floating\">\r\n");
      out.write("                                            <input type=\"text\" class=\"form-control bg-dark border-0\" id=\"cage\" placeholder=\"Child Age\">\r\n");
      out.write("                                            <label for=\"cage\">Service Type</label>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-12\">\r\n");
      out.write("                                        <div class=\"form-floating\">\r\n");
      out.write("                                            <textarea class=\"form-control bg-dark border-0\" placeholder=\"Leave a message here\" id=\"message\" style=\"height: 100px\"></textarea>\r\n");
      out.write("                                            <label for=\"message\">Message</label>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-12\">\r\n");
      out.write("                                        <button class=\"btn btn-primary w-100 py-3\" type=\"submit\">Get Appointment</button>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </form>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- Appointment End -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            <!-- Team Start -->\r\n");
      out.write("            <div class=\"container-xxl py-5\">\r\n");
      out.write("                <div class=\"container\">\r\n");
      out.write("                    <div class=\"row g-5 align-items-end mb-5\">\r\n");
      out.write("                        <div class=\"col-lg-6 wow fadeInUp\" data-wow-delay=\"0.1s\">\r\n");
      out.write("                            <div class=\"border-start border-5 border-primary ps-4\">\r\n");
      out.write("                                <h6 class=\"text-body text-uppercase mb-2\">Our Team</h6>\r\n");
      out.write("                                <h1 class=\"display-6 mb-0\">Our Expert Worker</h1>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-lg-6 wow fadeInUp\" data-wow-delay=\"0.3s\">\r\n");
      out.write("                            <p class=\"mb-0\">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo justo magna dolore erat amet</p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"row g-4\">\r\n");
      out.write("                    ");
      if (_jspx_meth_c_forEach_1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                        \r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- Team End -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            <!-- Testimonial Start -->\r\n");
      out.write("            <div class=\"container-xxl py-5\">\r\n");
      out.write("                <div class=\"container\">\r\n");
      out.write("                    <div class=\"row g-5\">\r\n");
      out.write("                        <div class=\"col-lg-5 wow fadeInUp\" data-wow-delay=\"0.1s\">\r\n");
      out.write("                            <div class=\"border-start border-5 border-primary ps-4 mb-5\">\r\n");
      out.write("                                <h6 class=\"text-body text-uppercase mb-2\">Testimonial</h6>\r\n");
      out.write("                                <h1 class=\"display-6 mb-0\">What Our Happy Clients Say!</h1>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <p class=\"mb-4\">Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo justo magna dolore erat amet</p>\r\n");
      out.write("                            <div class=\"row g-4\">\r\n");
      out.write("                                <div class=\"col-sm-6\">\r\n");
      out.write("                                    <div class=\"d-flex align-items-center mb-2\">\r\n");
      out.write("                                        <i class=\"fa fa-users fa-2x text-primary flex-shrink-0\"></i>\r\n");
      out.write("                                        <h1 class=\"ms-3 mb-0\">123+</h1>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <h5 class=\"mb-0\">Happy Clients</h5>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"col-sm-6\">\r\n");
      out.write("                                    <div class=\"d-flex align-items-center mb-2\">\r\n");
      out.write("                                        <i class=\"fa fa-check fa-2x text-primary flex-shrink-0\"></i>\r\n");
      out.write("                                        <h1 class=\"ms-3 mb-0\">123+</h1>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <h5 class=\"mb-0\">Projects Done</h5>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-lg-7 wow fadeInUp\" data-wow-delay=\"0.5s\">\r\n");
      out.write("                            <div class=\"owl-carousel testimonial-carousel\">\r\n");
      out.write("                                <div class=\"testimonial-item\">\r\n");
      out.write("                                    <img class=\"img-fluid mb-4\" src=\"img/testimonial-1.jpg\" alt=\"\">\r\n");
      out.write("                                    <p class=\"fs-5\">Dolores sed duo clita tempor justo dolor et stet lorem kasd labore dolore lorem ipsum. At lorem lorem magna ut et, nonumy et labore et tempor diam tempor erat.</p>\r\n");
      out.write("                                    <div class=\"bg-primary mb-3\" style=\"width: 60px; height: 5px\"></div>\r\n");
      out.write("                                    <h5>Client Name</h5>\r\n");
      out.write("                                    <span>Profession</span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"testimonial-item\">\r\n");
      out.write("                                    <img class=\"img-fluid mb-4\" src=\"img/testimonial-2.jpg\" alt=\"\">\r\n");
      out.write("                                    <p class=\"fs-5\">Dolores sed duo clita tempor justo dolor et stet lorem kasd labore dolore lorem ipsum. At lorem lorem magna ut et, nonumy et labore et tempor diam tempor erat.</p>\r\n");
      out.write("                                    <div class=\"bg-primary mb-3\" style=\"width: 60px; height: 5px\"></div>\r\n");
      out.write("                                    <h5>Client Name</h5>\r\n");
      out.write("                                    <span>Profession</span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- Testimonial End -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            <!-- Footer Start -->\r\n");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items_end_begin.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listS}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setBegin(1);
    _jspx_th_c_forEach_0.setEnd(6);
    _jspx_th_c_forEach_0.setVar("o");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                        <input value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.serviceID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" type=\"hidden\">\r\n");
          out.write("                        <div class=\"col-lg-4 col-md-6 wow fadeInUp\" data-wow-delay=\"0.5s\">\r\n");
          out.write("                            <div class=\"service-item bg-light overflow-hidden h-100\">\r\n");
          out.write("                                <img class=\"img-fluid\" src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.image}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"\">\r\n");
          out.write("                                <div class=\"service-text position-relative text-center h-100 p-4\">\r\n");
          out.write("                                    <h5 class=\"mb-3\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.serviceName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</h5>\r\n");
          out.write("                                    <p>Giá ước lượng chỉ từ ");
          if (_jspx_meth_fmt_formatNumber_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("</p>\r\n");
          out.write("                                    <a class=\"small\" href=\"GetAppointmentController?serviceID=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.serviceID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">Đặt Lịch Ngay<i class=\"fa fa-arrow-right ms-3\"></i></a>\r\n");
          out.write("                                </div>\r\n");
          out.write("                            </div>\r\n");
          out.write("                        </div>\r\n");
          out.write("                    ");
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
      _jspx_tagPool_c_forEach_var_items_end_begin.reuse(_jspx_th_c_forEach_0);
    }
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
    _jspx_th_fmt_formatNumber_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.price}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_fmt_formatNumber_0.setPattern("###,### VND");
    int _jspx_eval_fmt_formatNumber_0 = _jspx_th_fmt_formatNumber_0.doStartTag();
    if (_jspx_th_fmt_formatNumber_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.reuse(_jspx_th_fmt_formatNumber_0);
      return true;
    }
    _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.reuse(_jspx_th_fmt_formatNumber_0);
    return false;
  }

  private boolean _jspx_meth_c_forEach_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent(null);
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ListA}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_1.setVar("o");
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                        <div class=\"col-lg-4 col-md-6 wow fadeInUp\" data-wow-delay=\"0.1s\">\r\n");
          out.write("                            <div class=\"team-item position-relative\">\r\n");
          out.write("                                <img class=\"img-fluid\" src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.image}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"\">\r\n");
          out.write("                                <div class=\"team-text bg-white p-4\">\r\n");
          out.write("                                    <h5>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.fullName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</h5>\r\n");
          out.write("                                    <span>Staff</span>\r\n");
          out.write("                                </div>\r\n");
          out.write("                            </div>\r\n");
          out.write("                        </div>\r\n");
          out.write("                       ");
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
}
