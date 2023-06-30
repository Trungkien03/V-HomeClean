package org.apache.jsp.dashboard;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class sidebar_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<div class=\"sidebar\" id=\"sidebar\">\n");
      out.write("    <div class=\"sidebar-inner slimscroll\">\n");
      out.write("        <div id=\"sidebar-menu\" class=\"sidebar-menu\">\n");
      out.write("            <ul>\n");
      out.write("                <li class=\"menu-title\"></li>\n");
      out.write("                <li class=\"active\">\n");
      out.write("                    <a href=\"index.jsp\"\n");
      out.write("                       ><i class=\"fe fe-home\"></i> <span>Dashboard</span></a\n");
      out.write("                    >\n");
      out.write("                </li>\n");
      out.write("                <li class=\"submenu\">\n");
      out.write("                    <a href=\"#\"\n");
      out.write("                       ><i class=\"fe fe-users\"></i> <span> Accounts </span>\n");
      out.write("                        <span class=\"menu-arrow\"></span\n");
      out.write("                        ></a>\n");
      out.write("                    <ul style=\"display: none\">\n");
      out.write("                        <li><a href=\"users.jsp\">Users Management</a></li>\n");
      out.write("                        <li><a href=\"staffs.jsp\">Staff Management</a></li>\n");
      out.write("                        <li><a href=\"blocked-users.jsp\">Blocked Accounts</a></li>\n");
      out.write("                        <li><a href=\"report-users.jsp\">Report Accounts</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"submenu\">\n");
      out.write("                    <a href=\"#\"\n");
      out.write("                       ><i class=\"fe fe-sync\"></i> <span> Orders </span>\n");
      out.write("                        <span class=\"menu-arrow\"></span\n");
      out.write("                        ></a>\n");
      out.write("                    <ul style=\"display: none\">\n");
      out.write("                        <li><a href=\"orders-details.jsp\"> Orders detail </a></li>\n");
      out.write("                        <li><a href=\"group-history.jsp\"> Group History </a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"submenu\">\n");
      out.write("                    <a href=\"#\"\n");
      out.write("                       ><i class=\"fe fe-gear\"></i> <span> Settings </span>\n");
      out.write("                        <span class=\"menu-arrow\"></span\n");
      out.write("                        ></a>\n");
      out.write("                    <ul style=\"display: none\">\n");
      out.write("                        <li><a href=\"general.jsp\">General</a></li>\n");
      out.write("                        <li><a href=\"admob.jsp\">Admob </a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"blank-page.jsp\"\n");
      out.write("                       ><i class=\"fe fe-file\"></i> <span>Blank Page</span></a\n");
      out.write("                    >\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"components.jsp\"\n");
      out.write("                       ><i class=\"fe fe-vector\"></i> <span>Components</span></a\n");
      out.write("                    >\n");
      out.write("                </li>\n");
      out.write("                <li class=\"submenu\">\n");
      out.write("                    <a href=\"#\"\n");
      out.write("                       ><i class=\"fe fe-layout\"></i>\n");
      out.write("                        <span> Forms <span class=\"menu-arrow\"></span></span\n");
      out.write("                        ></a>\n");
      out.write("                    <ul style=\"display: none\">\n");
      out.write("                        <li><a href=\"form-input-groups.jsp\">Input Groups</a></li>\n");
      out.write("                        <li><a href=\"form-vertical.jsp\">Vertical Form </a></li>\n");
      out.write("                        <li><a href=\"form-validation.jsp\">Form Validation </a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"submenu\">\n");
      out.write("                    <a href=\"#\"\n");
      out.write("                       ><i class=\"fe fe-table\"></i>\n");
      out.write("                        <span> Tables <span class=\"menu-arrow\"></span></span\n");
      out.write("                        ></a>\n");
      out.write("                    <ul style=\"display: none\">\n");
      out.write("                        <li><a href=\"tables-basic.jsp\">Basic Tables </a></li>\n");
      out.write("                        <li><a href=\"data-tables.jsp\">Data Table </a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"submenu\">\n");
      out.write("                    <a href=\"javascript:void(0);\"\n");
      out.write("                       ><i class=\"fe fe-code\"></i> <span>Multi Level</span>\n");
      out.write("                        <span class=\"menu-arrow\"></span\n");
      out.write("                        ></a>\n");
      out.write("                    <ul style=\"display: none\">\n");
      out.write("                        <li class=\"submenu\">\n");
      out.write("                            <a href=\"javascript:void(0);\">\n");
      out.write("                                <span>Level 1</span> <span class=\"menu-arrow\"></span\n");
      out.write("                                ></a>\n");
      out.write("                            <ul style=\"display: none\">\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"javascript:void(0);\"><span>Level 2</span></a>\n");
      out.write("                                </li>\n");
      out.write("                                <li class=\"submenu\">\n");
      out.write("                                    <a href=\"javascript:void(0);\">\n");
      out.write("                                        <span> Level 2</span> <span class=\"menu-arrow\"></span\n");
      out.write("                                        ></a>\n");
      out.write("                                    <ul style=\"display: none\">\n");
      out.write("                                        <li><a href=\"javascript:void(0);\">Level 3</a></li>\n");
      out.write("                                        <li><a href=\"javascript:void(0);\">Level 3</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"javascript:void(0);\"> <span>Level 2</span></a>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"javascript:void(0);\"> <span>Level 1</span></a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
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
