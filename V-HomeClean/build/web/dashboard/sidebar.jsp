<%-- 
    Document   : sidebar
    Created on : May 28, 2023, 11:49:40 PM
    Author     : Trung Kien
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="sidebar" id="sidebar">
    <div class="sidebar-inner slimscroll">
        <div id="sidebar-menu" class="sidebar-menu">
            <ul>
                <li class="menu-title"></li>
                <li id="dashboard-link" class="active">
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
                        <li id="users-management-link"><a href="UsersManagementController">Quản Lý Khách Hàng</a></li>
                        <li id="staff-management-link"><a href="StaffManagementController">Quản Lý Nhân Viên</a></li>
                        <li id="users-block-link"><a href="UsersBlockPageController">Tài Khoản Bị Khóa</a></li>
                        <li id="account-create-link"><a href="AccountCreateController">Tạo Tài Khoản Mới</a></li>
                    </ul>
                </li>
                <c:if test="${sessionScope.acc.roleID == 3}">
                    <li class="submenu">
                        <a href="#"
                           ><i class="fe fe-file-zip"></i> <span> Dịch Vụ </span>
                            <span class="menu-arrow"></span
                            ></a>
                        <ul style="display: none">
                            <li id="orders-details-link"><a href="ServicesManagementController"> Quản Lý Dịch Vụ </a></li>
                            <li id="orders-details-link"><a href="ServicesBlockPageController"> Dịch Vụ Bị Khóa </a></li>
                            <li id="orders-management-link"><a href="ServiceCreateController"> Tạo Mới Dịch Vụ </a></li>
                        </ul>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc.roleID == 3}">
                    <li class="submenu">
                        <a href="#"
                           ><i class="fe fe-file-zip"></i> <span> Đơn Hẹn </span>
                            <span class="menu-arrow"></span
                            ></a>
                        <ul style="display: none">
                            <li id="appointment-details-link"><a href="BookingsManagementController"> Quản Lý Đơn </a></li>
                        </ul>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc.roleID == 3}">
                    <li class="submenu">
                        <a href="#"
                           ><i class="fe fe-globe"></i> <span> Blogs </span>
                            <span class="menu-arrow"></span
                            ></a>
                        <ul style="display: none">
                            <li id="blog-details-link"><a href="BlogsManagementController"> Quản Lý Blog </a></li>
                        </ul>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
</div>

<script>
    // Lấy danh sách tất cả các thẻ <li> trong submenu
    var submenuItems = document.querySelectorAll('.submenu li');

    // Lặp qua danh sách các thẻ <li> và gán sự kiện click cho mỗi thẻ
    submenuItems.forEach(function (item) {
        item.addEventListener('click', function () {
            // Bỏ lớp "active" khỏi tất cả các thẻ <li>
            submenuItems.forEach(function (submenuItem) {
                submenuItem.classList.remove('active');
            });

            // Thêm lớp "active" cho thẻ <li> được click
            this.classList.add('active');
        });
    });
</script>
