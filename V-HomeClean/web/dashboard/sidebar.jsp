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
                    <a href="DashboardController"
                       ><i class="fe fe-home"></i> <span>Dashboard</span></a
                    >
                </li>
                <li class="submenu">
                    <a href="#"
                       ><i class="fe fe-users"></i> <span> Tài Khoản </span>
                        <span class="menu-arrow"></span
                        ></a>
                    <ul style="display: none">
                        <li><a href="UsersManagementController">Quản Lý Khách Hàng</a></li>
                        <li><a href="dashboard/staffs.jsp">Quản Lý Nhân Viên</a></li>
                        <li><a href="UsersBlockPageController">Tài Khoản Bị Khóa</a></li>
                        <li><a href="dashboard/create-account.jsp">Tạo Tài Khoản Mới</a></li>
                    </ul>
                </li>
                <li class="submenu">
                    <a href="#"
                       ><i class="fe fe-file-zip"></i> <span> Orders </span>
                        <span class="menu-arrow"></span
                        ></a>
                    <ul style="display: none">
                        <li><a href="dashboard/orders-details.jsp"> Orders Details </a></li>
                        <li><a href="dashboard/orders-management.jsp"> Orders Management </a></li>
                    </ul>
                </li>
                <li class="submenu">
                    <a href="#"
                       ><i class="fe fe-globe"></i> <span> Blogs </span>
                        <span class="menu-arrow"></span
                        ></a>
                    <ul style="display: none">
                        <li><a href="dashboard/orders-details.jsp"> Blogs Details </a></li>
                        <li><a href="dashboard/orders-management.jsp"> Blogs Management </a></li>
                    </ul>
                </li>
                <li class="submenu">
                    <a href="#"
                       ><i class="fe fe-gear"></i> <span> Settings </span>
                        <span class="menu-arrow"></span
                        ></a>
                    <ul style="display: none">
                        <li><a href="dashboard/general.jsp">General</a></li>
                        <li><a href="dashboard/admob.jsp">Admob </a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
