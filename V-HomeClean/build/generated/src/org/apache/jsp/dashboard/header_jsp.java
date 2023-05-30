package org.apache.jsp.dashboard;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<div class=\"header\">\n");
      out.write("    <div class=\"header-left\">\n");
      out.write("        <a href=\"index.jsp\" class=\"logo\">\n");
      out.write("            <img src=\"assets/img/logo.png\" alt=\"Logo\" />\n");
      out.write("        </a>\n");
      out.write("        <a href=\"index.jsp\" class=\"logo logo-small\">\n");
      out.write("            <img\n");
      out.write("                src=\"assets/img/logo-small.png\"\n");
      out.write("                alt=\"Logo\"\n");
      out.write("                width=\"30\"\n");
      out.write("                height=\"30\"\n");
      out.write("                />\n");
      out.write("        </a>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <a href=\"javascript:void(0);\" id=\"toggle_btn\">\n");
      out.write("        <i class=\"fe fe-text-align-left\"></i>\n");
      out.write("    </a>\n");
      out.write("    <div class=\"top-nav-search\">\n");
      out.write("        <form>\n");
      out.write("            <input type=\"text\" class=\"form-control\" placeholder=\"Search here\" />\n");
      out.write("            <button class=\"btn\" type=\"submit\">\n");
      out.write("                <i class=\"fa fa-search\"></i>\n");
      out.write("            </button>\n");
      out.write("        </form>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <a class=\"mobile_btn\" id=\"mobile_btn\">\n");
      out.write("        <i class=\"fa fa-bars\"></i>\n");
      out.write("    </a>\n");
      out.write("\n");
      out.write("    <ul class=\"nav user-menu\">\n");
      out.write("        <li class=\"nav-item dropdown noti-dropdown\">\n");
      out.write("            <a\n");
      out.write("                href=\"#\"\n");
      out.write("                class=\"dropdown-toggle nav-link\"\n");
      out.write("                data-bs-toggle=\"dropdown\"\n");
      out.write("                >\n");
      out.write("                <i class=\"fa fa-bell\"></i> <span class=\"badge badge-pill\">3</span>\n");
      out.write("            </a>\n");
      out.write("            <div class=\"dropdown-menu notifications\">\n");
      out.write("                <div class=\"topnav-dropdown-header\">\n");
      out.write("                    <span class=\"notification-title\">Notifications</span>\n");
      out.write("                    <a href=\"javascript:void(0)\" class=\"clear-noti\"> Clear All </a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"noti-content\">\n");
      out.write("                    <ul class=\"notification-list\">\n");
      out.write("                        <li class=\"notification-message\">\n");
      out.write("                            <a href=\"#\">\n");
      out.write("                                <div class=\"media d-flex\">\n");
      out.write("                                    <span class=\"avatar avatar-sm flex-shrink-0\">\n");
      out.write("                                        <img\n");
      out.write("                                            class=\"avatar-img rounded-circle\"\n");
      out.write("                                            alt=\"User Image\"\n");
      out.write("                                            src=\"assets/img/profiles/avatar-02.jpg\"\n");
      out.write("                                            />\n");
      out.write("                                    </span>\n");
      out.write("                                    <div class=\"media-body flex-grow-1\">\n");
      out.write("                                        <p class=\"noti-details\">\n");
      out.write("                                            <span class=\"noti-title\">Carlson Tech</span> has\n");
      out.write("                                            approved\n");
      out.write("                                            <span class=\"noti-title\">your estimate</span>\n");
      out.write("                                        </p>\n");
      out.write("                                        <p class=\"noti-time\">\n");
      out.write("                                            <span class=\"notification-time\">4 mins ago</span>\n");
      out.write("                                        </p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"notification-message\">\n");
      out.write("                            <a href=\"#\">\n");
      out.write("                                <div class=\"media d-flex\">\n");
      out.write("                                    <span class=\"avatar avatar-sm flex-shrink-0\">\n");
      out.write("                                        <img\n");
      out.write("                                            class=\"avatar-img rounded-circle\"\n");
      out.write("                                            alt=\"User Image\"\n");
      out.write("                                            src=\"assets/img/profiles/avatar-11.jpg\"\n");
      out.write("                                            />\n");
      out.write("                                    </span>\n");
      out.write("                                    <div class=\"media-body flex-grow-1\">\n");
      out.write("                                        <p class=\"noti-details\">\n");
      out.write("                                            <span class=\"noti-title\"\n");
      out.write("                                                  >International Software Inc</span\n");
      out.write("                                            >\n");
      out.write("                                            has sent you a invoice in the amount of\n");
      out.write("                                            <span class=\"noti-title\">$218</span>\n");
      out.write("                                        </p>\n");
      out.write("                                        <p class=\"noti-time\">\n");
      out.write("                                            <span class=\"notification-time\">6 mins ago</span>\n");
      out.write("                                        </p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"notification-message\">\n");
      out.write("                            <a href=\"#\">\n");
      out.write("                                <div class=\"media d-flex\">\n");
      out.write("                                    <span class=\"avatar avatar-sm flex-shrink-0\">\n");
      out.write("                                        <img\n");
      out.write("                                            class=\"avatar-img rounded-circle\"\n");
      out.write("                                            alt=\"User Image\"\n");
      out.write("                                            src=\"assets/img/profiles/avatar-17.jpg\"\n");
      out.write("                                            />\n");
      out.write("                                    </span>\n");
      out.write("                                    <div class=\"media-body flex-grow-1\">\n");
      out.write("                                        <p class=\"noti-details\">\n");
      out.write("                                            <span class=\"noti-title\">John Hendry</span> sent a\n");
      out.write("                                            cancellation request\n");
      out.write("                                            <span class=\"noti-title\">Apple iPhone XR</span>\n");
      out.write("                                        </p>\n");
      out.write("                                        <p class=\"noti-time\">\n");
      out.write("                                            <span class=\"notification-time\">8 mins ago</span>\n");
      out.write("                                        </p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"notification-message\">\n");
      out.write("                            <a href=\"#\">\n");
      out.write("                                <div class=\"media d-flex\">\n");
      out.write("                                    <span class=\"avatar avatar-sm flex-shrink-0\">\n");
      out.write("                                        <img\n");
      out.write("                                            class=\"avatar-img rounded-circle\"\n");
      out.write("                                            alt=\"User Image\"\n");
      out.write("                                            src=\"assets/img/profiles/avatar-13.jpg\"\n");
      out.write("                                            />\n");
      out.write("                                    </span>\n");
      out.write("                                    <div class=\"media-body flex-grow-1\">\n");
      out.write("                                        <p class=\"noti-details\">\n");
      out.write("                                            <span class=\"noti-title\">Mercury Software Inc</span>\n");
      out.write("                                            added a new product\n");
      out.write("                                            <span class=\"noti-title\">Apple MacBook Pro</span>\n");
      out.write("                                        </p>\n");
      out.write("                                        <p class=\"noti-time\">\n");
      out.write("                                            <span class=\"notification-time\">12 mins ago</span>\n");
      out.write("                                        </p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"topnav-dropdown-footer\">\n");
      out.write("                    <a href=\"#\">View all Notifications</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </li>\n");
      out.write("\n");
      out.write("        <li class=\"nav-item dropdown has-arrow\">\n");
      out.write("            <a\n");
      out.write("                href=\"#\"\n");
      out.write("                class=\"dropdown-toggle nav-link\"\n");
      out.write("                data-bs-toggle=\"dropdown\"\n");
      out.write("                >\n");
      out.write("                <span class=\"user-img\"\n");
      out.write("                      ><img\n");
      out.write("                        class=\"rounded-circle\"\n");
      out.write("                        src=\"assets/img/profiles/avatar-01.jpg\"\n");
      out.write("                        width=\"31\"\n");
      out.write("                        alt=\"Seema Sisty\"\n");
      out.write("                        /></span>\n");
      out.write("            </a>\n");
      out.write("            <div class=\"dropdown-menu\">\n");
      out.write("                <div class=\"user-header\">\n");
      out.write("                    <div class=\"avatar avatar-sm\">\n");
      out.write("                        <img\n");
      out.write("                            src=\"assets/img/profiles/avatar-01.jpg\"\n");
      out.write("                            alt=\"User Image\"\n");
      out.write("                            class=\"avatar-img rounded-circle\"\n");
      out.write("                            />\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"user-text\">\n");
      out.write("                        <h6>Seema Sisty</h6>\n");
      out.write("                        <p class=\"text-muted mb-0\">Administrator</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <a class=\"dropdown-item\" href=\"general.jsp\">My Profile</a>\n");
      out.write("                <a class=\"dropdown-item\" href=\"general.jsp\">Account Settings</a>\n");
      out.write("                <a class=\"dropdown-item\" href=\"login.jsp\">Logout</a>\n");
      out.write("                <a class=\"dropdown-item\" href=\"../index.jsp\">Back to V-HomeClean</a>\n");
      out.write("            </div>\n");
      out.write("        </li>\n");
      out.write("    </ul>\n");
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
