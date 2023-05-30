<%-- 
    Document   : navigation
    Created on : May 20, 2023, 10:23:13 PM
    Author     : Trung Kien
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
    <a href="index.jsp" class="navbar-brand d-flex align-items-center">
        <h1 class="m-0"><i class="fa fa-building text-primary me-3"></i>V-HomeClean</h1>
    </a>
    <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
        <div class="navbar-nav ms-auto py-3 py-lg-0">
            <a href="index.jsp" class="nav-item nav-link active">Home</a>
            <a href="about.jsp" class="nav-item nav-link">About Us</a>
            <a href="service.jsp" class="nav-item nav-link">Our Services</a>
            <div class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                <div class="dropdown-menu bg-light m-0">
                    <a href="feature.jsp" class="dropdown-item">Features</a>
                    <a href="appointment.jsp" class="dropdown-item">Appointment</a>
                    <a href="team.jsp" class="dropdown-item">Our Team</a>
                    <a href="testimonial.jsp" class="dropdown-item">Testimonial</a>
                    <a href="404.jsp" class="dropdown-item">404 Page</a>
                </div>
            </div>
            <a href="contact.jsp" class="nav-item nav-link">Contact Us</a>
            
            <div class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                    <c:if test="${sessionScope.acc == null}">Tài Khoản</c:if>
                    <c:if test="${sessionScope.acc != null}">
                        <img></img>
                        <img src="img/user.jpg" style="width: 20px; height: 20px;" >
                        ${sessionScope.acc.fullName}
                    </c:if>
                    </a>
                    <div class="dropdown-menu bg-light m-0">
                    <c:if test="${sessionScope.acc == null}">
                        <a href="login.jsp" class="dropdown-item">Đăng Nhập</a>
                    </c:if>
                    <c:if test="${sessionScope.acc != null}">
                        <a href="404.jsp" class="dropdown-item">Tải Khoản của bạn</a>
                    </c:if>    
                    <c:if test="${sessionScope.acc != null}">
                        <a href="LogoutController" class="dropdown-item">Đăng xuất</a>
                    </c:if>
                        
                        <a href="dashboard/index.jsp" class="dropdown-item">Dashboard</a>
                </div>
            </div>


        </div>
    </div>
</nav>
<!-- Navbar End -->
