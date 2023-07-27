package org.apache.jsp.dashboard;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import DAO.BookingDAO;
import com.google.gson.Gson;
import java.util.ArrayList;
import DTO.BookingDTO;

public final class calendar_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\" />\n");
      out.write("        <meta\n");
      out.write("            name=\"viewport\"\n");
      out.write("            content=\"width=device-width, initial-scale=1.0, user-scalable=0\"\n");
      out.write("            />\n");
      out.write("        <title>Dreamchat - Dashboard</title>\n");
      out.write("\n");
      out.write("        <link\n");
      out.write("            rel=\"shortcut icon\"\n");
      out.write("            type=\"image/x-icon\"\n");
      out.write("            href=\"assets/img/favicon.png\"\n");
      out.write("            />\n");
      out.write("        <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/evo-calendar@1.1.3/evo-calendar/css/evo-calendar.min.css'>\n");
      out.write("        <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/evo-calendar@1.1.3/evo-calendar/css/evo-calendar.midnight-blue.min.css'>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/assets/css/bootstrap.min.css\" />\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/assets/css/font-awesome.min.css\" />\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/assets/css/feathericon.min.css\" />\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/assets/plugins/morris/morris.css\" />\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/assets/css/style.css\" />\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        ");

    // Import thư viện Gson
            // Danh sách BookingDTO từ Java
            BookingDAO bDao = new BookingDAO();
            
            List<BookingDTO> bookingsList = (List<BookingDTO>) bDao.getAllLatestBookings();

            // Chuỗi JSON chứa thông tin về các sự kiện
            String calendarEventsJSON = "[]"; // Khởi tạo một mảng JSON rỗng

            // Kiểm tra nếu danh sách không rỗng thì chuyển đổi thành chuỗi JSON
            if (bookingsList != null && !bookingsList.isEmpty()) {
                Gson gson = new Gson();
                calendarEventsJSON = gson.toJson(bookingsList);
            }
        
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"main-wrapper\">\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "sidebar.jsp", out, false);
      out.write("\n");
      out.write("            <div class=\"page-wrapper\">\n");
      out.write("                <div class=\"content container-fluid\">\n");
      out.write("                    <div class=\"page-header\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-sm-12\">\n");
      out.write("                                <h3 class=\"page-title\">Lịch Hoạt Động</h3>\n");
      out.write("                                <ul class=\"breadcrumb\">\n");
      out.write("                                    <li class=\"breadcrumb-item\">\n");
      out.write("                                        <a href=\"dashboard/index.jsp\">Bảng Điều Khiển</a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li class=\"breadcrumb-item active\">Lịch Hoạt động</li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-sm-12\">\n");
      out.write("                            <div class=\"hero\">\n");
      out.write("                                <div id=\"calendar\"></div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <script src=\"css/assets/js/jquery-3.6.0.min.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"css/assets/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"css/assets/plugins/slimscroll/jquery.slimscroll.min.js\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/evo-calendar@1.1.3/evo-calendar/js/evo-calendar.min.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            // Initialize evo-calendar in your script file or an inline <script> tag\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                $('#calendar').evoCalendar({\n");
      out.write("                    settingName: \"hello\",\n");
      out.write("                    calendarEvents: [\n");
      out.write("                        {\n");
      out.write("                            id: 'mmnnn',\n");
      out.write("                            name: 'New Year',\n");
      out.write("                            date: 'January/1/2020',\n");
      out.write("                            type: 'holiday',\n");
      out.write("                            everyYear: true\n");
      out.write("                        },\n");
      out.write("                        {\n");
      out.write("                            id: '0908',\n");
      out.write("                            name: 'New Year',\n");
      out.write("                            date: 'January/1/2020',\n");
      out.write("                            type: 'holiday',\n");
      out.write("                            everyYear: true\n");
      out.write("                        }\n");
      out.write("                    ]\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("        <script src=\"css/assets/js/script.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
