<%-- 
    Document   : header
    Created on : May 28, 2023, 11:49:29 PM
    Author     : Trung Kien
--%>

<%@page import="DTO.AccountDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    AccountDTO user = (AccountDTO) session.getAttribute("acc");
    if (user == null) {
        response.sendRedirect("login.jsp");
    }
%>
<div class="header">
    <div class="header-left">
        <a href="HomePageController" class="navbar-brand d-flex align-items-center">
            <h3 style="color: #f8e43c" class="logo"><i class="fa fa-building text-primary me-3"></i><strong>V-HomeClean</strong></h3>
        </a>
    </div>

    <a href="javascript:void(0);" id="toggle_btn">
        <i class="fe fe-text-align-left"></i>
    </a>
    <div class="top-nav-search">
        <form>
            <input type="text" class="form-control" placeholder="Search here" />
            <button class="btn" type="submit">
                <i class="fa fa-search"></i>
            </button>
        </form>
    </div>

    <a class="mobile_btn" id="mobile_btn">
        <i class="fa fa-bars"></i>
    </a>

    <ul class="nav user-menu">
        <li class="nav-item dropdown noti-dropdown">
            <a
                href="#"
                class="dropdown-toggle nav-link"
                data-bs-toggle="dropdown"
                >
                <i class="fa fa-bell"></i> <span class="badge badge-pill">3</span>
            </a>
            <div class="dropdown-menu notifications">
                <div class="topnav-dropdown-header">
                    <span class="notification-title">Notifications</span>
                    <a href="javascript:void(0)" class="clear-noti"> Clear All </a>
                </div>
                <div class="noti-content">
                    <ul class="notification-list">
                        <li class="notification-message">
                            <a href="#">
                                <div class="media d-flex">
                                    <span class="avatar avatar-sm flex-shrink-0">
                                        <img
                                            class="avatar-img rounded-circle"
                                            alt="User Image"
                                            src="css/assets/img/profiles/avatar-02.jpg"
                                            />
                                    </span>
                                    <div class="media-body flex-grow-1">
                                        <p class="noti-details">
                                            <span class="noti-title">Carlson Tech</span> has
                                            approved
                                            <span class="noti-title">your estimate</span>
                                        </p>
                                        <p class="noti-time">
                                            <span class="notification-time">4 mins ago</span>
                                        </p>
                                    </div>
                                </div>
                            </a>
                        </li>

                        <li class="notification-message">
                            <a href="#">
                                <div class="media d-flex">
                                    <span class="avatar avatar-sm flex-shrink-0">
                                        <img
                                            class="avatar-img rounded-circle"
                                            alt="User Image"
                                            src="css/assets/img/profiles/avatar-13.jpg"
                                            />
                                    </span>
                                    <div class="media-body flex-grow-1">
                                        <p class="noti-details">
                                            <span class="noti-title">Mercury Software Inc</span>
                                            added a new product
                                            <span class="noti-title">Apple MacBook Pro</span>
                                        </p>
                                        <p class="noti-time">
                                            <span class="notification-time">12 mins ago</span>
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
        </li>

        <li class="nav-item dropdown has-arrow">
            <a
                href="#"
                class="dropdown-toggle nav-link"
                data-bs-toggle="dropdown"
                >
                <span class="user-img"
                      ><img
                        class="rounded-circle"
                        src="${acc.image}"
                        width="31"
                        alt="${acc.fullName}"
                        /></span>
            </a>
            <div class="dropdown-menu">
                <div class="user-header">
                    <div class="avatar avatar-sm">
                        <img
                            src="${acc.image}"
                            alt="User Image"
                            class="avatar-img rounded-circle"
                            />
                    </div>
                    <div class="user-text">
                        <h6>${acc.fullName}</h6>
                        <p class="text-muted mb-0">Administrator</p>
                    </div>
                </div>
                <a class="dropdown-item" href="UserGeneralPageController?accountID=${acc.accountID}">Cài Đặt Tài Khoản</a>
                <a class="dropdown-item" href="LogoutController">Đăng Xuất</a>
                <a class="dropdown-item" href="HomePageController">Back to V-HomeClean</a>
            </div>
        </li>
    </ul>
</div>
