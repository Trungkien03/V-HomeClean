<%-- 
    Document   : sidebar
    Created on : May 28, 2023, 11:49:40 PM
    Author     : Trung Kien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="sidebar" id="sidebar">
    <div class="sidebar-inner slimscroll">
        <div id="sidebar-menu" class="sidebar-menu">
            <ul>
                <li class="menu-title"></li>
                <li class="active">
                    <a href="index.jsp"
                       ><i class="fe fe-home"></i> <span>Dashboard</span></a
                    >
                </li>
                <li class="submenu">
                    <a href="#"
                       ><i class="fe fe-users"></i> <span> Accounts </span>
                        <span class="menu-arrow"></span
                        ></a>
                    <ul style="display: none">
                        <li><a href="users.jsp">Users Management</a></li>
                        <li><a href="staffs.jsp">Staff Management</a></li>
                        <li><a href="blocked-users.jsp">Blocked Accounts</a></li>
                        <li><a href="report-users.jsp">Report Accounts</a></li>
                    </ul>
                </li>
                <li class="submenu">
                    <a href="#"
                       ><i class="fe fe-file-zip"></i> <span> Orders </span>
                        <span class="menu-arrow"></span
                        ></a>
                    <ul style="display: none">
                        <li><a href="orders-details.jsp"> Orders Details </a></li>
                        <li><a href="orders-management.jsp"> Orders Management </a></li>
                    </ul>
                </li>
                <li class="submenu">
                    <a href="#"
                       ><i class="fe fe-globe"></i> <span> Blogs </span>
                        <span class="menu-arrow"></span
                        ></a>
                    <ul style="display: none">
                        <li><a href="orders-details.jsp"> Blogs Details </a></li>
                        <li><a href="orders-management.jsp"> Blogs Management </a></li>
                    </ul>
                </li>
                <li class="submenu">
                    <a href="#"
                       ><i class="fe fe-gear"></i> <span> Settings </span>
                        <span class="menu-arrow"></span
                        ></a>
                    <ul style="display: none">
                        <li><a href="general.jsp">General</a></li>
                        <li><a href="admob.jsp">Admob </a></li>
                    </ul>
                </li>
                <li>
                    <a href="blank-page.jsp"
                       ><i class="fe fe-file"></i> <span>Blank Page</span></a
                    >
                </li>
                <li>
                    <a href="components.jsp"
                       ><i class="fe fe-vector"></i> <span>Components</span></a
                    >
                </li>
                <li class="submenu">
                    <a href="#"
                       ><i class="fe fe-layout"></i>
                        <span> Forms <span class="menu-arrow"></span></span
                        ></a>
                    <ul style="display: none">
                        <li><a href="form-input-groups.jsp">Input Groups</a></li>
                        <li><a href="form-vertical.jsp">Vertical Form </a></li>
                        <li><a href="form-validation.jsp">Form Validation </a></li>
                    </ul>
                </li>
                <li class="submenu">
                    <a href="#"
                       ><i class="fe fe-table"></i>
                        <span> Tables <span class="menu-arrow"></span></span
                        ></a>
                    <ul style="display: none">
                        <li><a href="tables-basic.jsp">Basic Tables </a></li>
                        <li><a href="data-tables.jsp">Data Table </a></li>
                    </ul>
                </li>
                <li class="submenu">
                    <a href="javascript:void(0);"
                       ><i class="fe fe-code"></i> <span>Multi Level</span>
                        <span class="menu-arrow"></span
                        ></a>
                    <ul style="display: none">
                        <li class="submenu">
                            <a href="javascript:void(0);">
                                <span>Level 1</span> <span class="menu-arrow"></span
                                ></a>
                            <ul style="display: none">
                                <li>
                                    <a href="javascript:void(0);"><span>Level 2</span></a>
                                </li>
                                <li class="submenu">
                                    <a href="javascript:void(0);">
                                        <span> Level 2</span> <span class="menu-arrow"></span
                                        ></a>
                                    <ul style="display: none">
                                        <li><a href="javascript:void(0);">Level 3</a></li>
                                        <li><a href="javascript:void(0);">Level 3</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="javascript:void(0);"> <span>Level 2</span></a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:void(0);"> <span>Level 1</span></a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
