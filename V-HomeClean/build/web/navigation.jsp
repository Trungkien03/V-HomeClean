<%-- 
    Document   : navigation
    Created on : May 20, 2023, 10:23:13 PM
    Author     : Trung Kien
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<style>
    .avatar-nav {
        width: 30px; /* Định dạng kích thước hình ảnh */
        height: 30px;
        border-radius: 50%; /* Định dạng góc cong tạo hiệu ứng tròn */
        overflow: hidden; /* Ẩn phần vượt ra khỏi hình tròn */
        object-fit: cover;
    }
</style>
<!-- Spinner Start -->
<div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
    <div class="spinner-grow text-primary" role="status"></div>
</div>
<!-- Spinner End -->


<!-- Topbar Start -->
<div class="container-fluid bg-light p-0">
    <div class="row gx-0 d-none d-lg-flex">
        <div class="col-lg-7 px-5 text-start">
            <div class="h-100 d-inline-flex align-items-center border-start border-end px-3">
                <small class="fa fa-phone-alt me-2"></small>
                <small>+012 345 6789</small>
            </div>
            <div class="h-100 d-inline-flex align-items-center border-end px-3">
                <small class="far fa-envelope-open me-2"></small>
                <small>info@example.com</small>
            </div>
            <div class="h-100 d-inline-flex align-items-center border-end px-3">
                <small class="far fa-clock me-2"></small>
                <small>Mon - Fri : 09 AM - 09 PM</small>
            </div>
        </div>
        <div class="col-lg-5 px-5 text-end">
            <div class="h-100 d-inline-flex align-items-center">
                <a class="btn btn-square border-end border-start" href=""><i class="fab fa-facebook-f"></i></a>
                <a class="btn btn-square border-end" href=""><i class="fab fa-twitter"></i></a>
                <a class="btn btn-square border-end" href=""><i class="fab fa-linkedin-in"></i></a>
                <a class="btn btn-square border-end" href=""><i class="fab fa-instagram"></i></a>
            </div>
        </div>
    </div>
</div>
<!-- Topbar End -->


<!-- Navbar Start -->
<nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top px-4 px-lg-5 py-lg-0">
    <a href="HomePageController" class="navbar-brand d-flex align-items-center">
        <h1 style="color: #f8e43c" class="m-0"><i class="fa fa-building text-primary me-3"></i>V-HomeClean</h1>
    </a>
    <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
        <div class="navbar-nav ms-auto py-3 py-lg-0">
            <a href="HomePageController" class="nav-item nav-link active"><strong>Trang Chủ</strong></a>
            <a href="AboutPageController" class="nav-item nav-link"><strong>Giới Thiệu</strong></a>
            <div class="nav-item dropdown">
                <a href="ServicePageController" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><strong>Dịch Vụ</strong></a>
                <div class="dropdown-menu bg-light m-0">
                    <a href="ServicePageController" class="dropdown-item">Tổng Hợp Dịch Vụ</a>
                    <a href="#" class="dropdown-item">Dịch Vụ Sửa Chữa</a>
                    <a href="#" class="dropdown-item">Dịch Vụ Dọn Dẹp</a>
                </div>
            </div>
            <div class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><strong>Bài Báo</strong></a>
                <div class="dropdown-menu bg-light m-0">
                    <a href="BlogPageController" class="dropdown-item">Blogs</a>
                    <a href="postBlog.jsp" class="dropdown-item">Post Blog</a>
                    <a href="appointment.jsp" class="dropdown-item">Appointment</a>
                    <a href="team.jsp" class="dropdown-item">Our Team</a>
                    <a href="testimonial.jsp" class="dropdown-item">Testimonial</a>
                    <a href="404.jsp" class="dropdown-item">404 Page</a>
                </div>
            </div>
            <a href="ContactPageController" class="nav-item nav-link"><strong>Liên Hệ</strong></a>
            <div class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                    <c:if test="${sessionScope.acc == null}"><strong>Tài Khoản</strong></c:if>
                    <c:if test="${sessionScope.acc != null}">
                        <img></img>
                        <img id="profile-image-2" class="avatar-nav"  src="${sessionScope.acc.image}" >
                        <strong>${sessionScope.acc.fullName}</strong>
                        </c:if>
                </a>
                <div class="dropdown-menu bg-light m-0">

                    <c:if test="${sessionScope.acc == null}">
                        <a href="login.jsp" class="dropdown-item">Đăng Nhập</a>
                    </c:if>
                    <c:if test="${sessionScope.acc == null}">
                        <a href="login.jsp" class="dropdown-item">Đăng Ký</a>
                    </c:if>
                    <c:if test="${sessionScope.acc != null}">
                        <c:if test="${sessionScope.acc.roleID == 1}">
                            <a href="DashboardController" class="dropdown-item">Bảng Điều Khiển</a>
                        </c:if>
                    </c:if>
                    <c:if test="${sessionScope.acc != null}">
                        <a href="ProfilePageController" class="dropdown-item">Thông Tin Tài Khoản</a>
                    </c:if>    
                    <c:if test="${sessionScope.acc != null}">
                        <c:if test="${acc.roleID != 1 && acc.roleID != 3 && acc.roleID != 4}">
                            <a href="StaffTaskPageController" class="dropdown-item">Công việc</a>
                        </c:if>  
                    </c:if>
                    <c:if test="${sessionScope.acc != null}">
                        <a href="LogoutController" class="dropdown-item">Đăng xuất</a>
                    </c:if>


                </div>
            </div>

            <c:if test="${sessionScope.acc != null}">


                <style>
                    .dropdown-menu.notifications {
                        width: 350px;
                        padding: 10px;
                        max-height: 400px;
                        overflow-y: auto;
                    }

                    .notification-title {
                        font-weight: bold;
                        margin-right: 10px;
                    }

                    .clear-noti {
                        font-size: 12px;
                        color: #999;
                        text-decoration: none;
                        float: right;
                        margin-top: 5px;
                    }

                    .notification-list {
                        list-style-type: none;
                        padding-left: 0;
                        margin-top: 10px;
                    }

                    .notification-message {
                        padding: 10px 0;
                        border-bottom: 1px solid #eee;
                    }

                    .notification-message:last-child {
                        border-bottom: none;
                    }

                    .avatar {
                        margin-right: 10px;
                    }

                    .avatar-img {
                        width: 40px;
                        height: 40px;
                    }

                    .noti-details {
                        margin-bottom: 5px;
                    }

                    .noti-time {
                        font-size: 12px;
                        color: #999;
                    }

                    .topnav-dropdown-footer a {
                        display: block;
                        padding: 8px 10px;
                        font-size: 12px;
                        text-align: center;
                        text-decoration: none;
                        color: #333;
                        background-color: #f9f9f9;
                    }

                    .topnav-dropdown-footer a:hover {
                        background-color: #e9e9e9;
                    }
                    .noti-details {
                        word-wrap: break-word;
                        max-width: 250px;
                    }

                </style>

                <div class="nav-item dropdown">
                    <a
                        href="#"
                        class="dropdown-toggle nav-link"
                        data-bs-toggle="dropdown"
                        >
                        <i class="fa fa-bell"></i>


                    </a>
                    <div class="dropdown-menu notifications">
                        <div class="topnav-dropdown-header">
                            <span class="notification-title">Thông báo</span>
                            <a href="javascript:void(0)" class="clear-noti"> Xóa tất cả </a>
                        </div>
                        <div class="noti-content">
                            <ul id="notificationList" class="notification-list">
                                <li class="notification-message">
                                    <a href="#">
                                        <div class="media d-flex">
                                            <span class="avatar avatar-sm flex-shrink-0">

                                                <img
                                                    class="avatar-img rounded-circle"
                                                    alt="User Image"
                                                    src="${acc.image}"
                                                    />
                                            </span>
                                            <div class="media-body ">
                                                <p class="noti-details" style="color: black">
                                                    zckzmxckzmxkcnzxkcnzxkcnzkcnzkcnkaenfiabgjdngdknfaknfa
                                                </p>
                                                <p class="noti-time">
                                                    <span class="notification-time">
                                                        25 phút trước
                                                    </span>
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </li>


                            </ul>
                        </div>
                        <div class="topnav-dropdown-footer">
                            <a href="#">View all Notifications</a>
                        </div>
                    </div>
                </div>
            </c:if>
        </div>
    </div>
</nav>
<!-- Navbar End -->
