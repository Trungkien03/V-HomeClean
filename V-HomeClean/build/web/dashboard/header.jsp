<%-- 
    Document   : header
    Created on : May 28, 2023, 11:49:29 PM
    Author     : Trung Kien
--%>

<%@page import="DTO.AccountDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<!DOCTYPE html>



<div id="header-content" class="header">
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
                <i class="fa fa-bell"></i>
                <c:if test="${totalUnreadNoti > 0}">
                    <span id="totalNotification" class="badge badge-pill" >${sessionScope.totalUnreadNoti}</span>
                </c:if>

            </a>
            <div class="dropdown-menu notifications">
                <div class="topnav-dropdown-header">
                    <span class="notification-title">Notifications</span>
                    <a href="javascript:void(0)" class="clear-noti"> Clear All </a>
                </div>
                <div class="noti-content">
                    <ul id="notificationList" class="notification-list">
                        <c:forEach items="${sessionScope.listNotifications}" var="o">
                            <li class="notification-message">
                                <a href="#">
                                    <div class="media d-flex">
                                        <span class="avatar avatar-sm flex-shrink-0">
                                            <c:forEach items="${listAllAccounts}" var="b">
                                                <c:if test="${b.accountID == o.accountID}">
                                                    <c:set var="image" value="${b.image}" />
                                                </c:if>
                                            </c:forEach>
                                            <img
                                                class="avatar-img rounded-circle"
                                                alt="User Image"
                                                src="${image}"
                                                />
                                        </span>
                                        <div class="media-body flex-grow-1">
                                            <p class="noti-details text-black">
                                                ${o.detail}
                                            </p>
                                            <c:set var="minutes" value="${o.calculateMinutesFromNow()}" />
                                            <p class="noti-time">
                                                <span class="notification-time">
                                                    <c:choose>
                                                        <c:when test="${minutes < 60}">
                                                            ${minutes} phút trước
                                                        </c:when>
                                                        <c:when test="${minutes < 1440}">
                                                            <c:set var="hours" value="${fn:substringBefore((minutes / 60), '.')}"/>
                                                            ${hours} giờ trước
                                                        </c:when>
                                                        <c:otherwise>
                                                            <c:set var="days" value="${fn:substringBefore((minutes / 1440), '.')}"/>
                                                            ${days} ngày trước
                                                        </c:otherwise>
                                                    </c:choose>
                                                </span>
                                            </p>


                                        </div>
                                    </div>
                                </a>
                            </li>
                        </c:forEach>

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






