<%-- 
    Document   : general
    Created on : May 28, 2023, 11:32:17 PM
    Author     : Trung Kien
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, user-scalable=0"
            />
        <title>Dreamchat - Dashboard</title>

        <link
            rel="shortcut icon"
            type="image/x-icon"
            href="css/assets/img/favicon.png"
            />

        <link rel="stylesheet" href="css/assets/css/bootstrap.min.css" />

        <link rel="stylesheet" href="css/assets/css/font-awesome.min.css" />

        <link rel="stylesheet" href="css/assets/css/feathericon.min.css" />

        <link rel="stylesheet" href="css/assets/plugins/morris/morris.css" />

        <link rel="stylesheet" href="css/assets/css/style.css" />
    </head>
    <body>
        <div class="main-wrapper">
            <jsp:include page="header.jsp"></jsp:include>
            <jsp:include page="sidebar.jsp"></jsp:include>
                <div class="page-wrapper">
                    <div class="content container-fluid">
                        <div class="page-header">
                            <div class="row align-items-center">
                                <div class="col">
                                    <h3 class="page-title">Thông Tin Nhân Viên</h3>
                                    <ul class="breadcrumb">
                                        <li class="breadcrumb-item">
                                            <a href="StaffManagementController">Quản lý Nhân Viên</a>
                                        </li>
                                        <li class="breadcrumb-item active">Thông Tin Nhân Viên</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="row settings-tab">
                            <div class="col-md-4">
                                <div class="card">
                                    <div class="card-header all-center">
                                        <a href="#" class="avatar avatar-sm me-2"
                                           ><img
                                                class="avatar-img rounded-circle"
                                                src="${account.image}"
                                            alt="User Image"
                                            />
                                        <i class="fe fe-camera"></i>
                                    </a>
                                    <h6>${account.fullName}</h6>
                                    <p>
                                        <c:choose>
                                            <c:when test="${account.roleID == 1}">
                                                Admin
                                            </c:when>
                                            <c:when test="${account.roleID == 2}">
                                                Nhân viên sửa chữa điện
                                            </c:when>
                                            <c:when test="${account.roleID == 3}">
                                                Quản lý
                                            </c:when>
                                            <c:when test="${account.roleID == 4}">
                                                Khách hàng
                                            </c:when>
                                            <c:when test="${account.roleID == 5}">
                                                Nhân viên sửa chữa nước
                                            </c:when>
                                            <c:when test="${account.roleID == 6}">
                                                Nhân viên vệ sinh
                                            </c:when>
                                            <c:otherwise>
                                                Vai trò không xác định
                                            </c:otherwise>
                                        </c:choose>
                                    </p>
                                </div>
                                <div class="card-body p-0">
                                    <div class="profile-list">
                                        <a href="#"><i class="fe fe-user"></i></a>
                                        <a href="#">Tuổi</a>
                                        <a href="#" class="float-end"><h5>${account.age}</h5></a>
                                    </div>
                                    <div class="profile-list">
                                        <a href="#"><i class="fe fe-document"></i></a>
                                        <a href="#">Tổng Đơn</a>
                                        <a href="#" class="float-end"><h5>403</h5></a>
                                    </div>
                                    <div class="profile-list">
                                        <a href="#"><i class="fe fe-disabled"></i></a>
                                        <a href="#">Tình Trạng</a>
                                        <c:choose>
                                            <c:when test="${account.status eq true}">
                                                <a href="#" class="float-end"><h5 style="color: #00bf6f;">Hoạt động</h5></a>
                                            </c:when>
                                            <c:when test="${account.status eq false}">
                                                <a href="#" class="float-end"><h5 style="color: #b21f2d;">Bị khóa</h5></a>
                                            </c:when>
                                        </c:choose>
                                    </div>
                                    <div class="profile-list">
                                        <a href="group-history.jsp"
                                           ><button
                                                type="button"
                                                class="btn btn-block btn-outline-light"
                                                >
                                                Xem ....
                                            </button></a
                                        >
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="card">
                                <div class="card-header text-center">
                                    <h4 class="card-title text-primary">Thông Tin</h4>
                                    <h6 class="text-success">${message}</h6>
                                </div>
                                <div class="card-body">
                                    <ul class="nav nav-tabs nav-tabs-top nav-justified">
                                        <li class="nav-item">
                                            <a
                                                class="nav-link active"
                                                href="#top-justified-tab1"
                                                data-bs-toggle="tab"
                                                >Thông Tin</a
                                            >
                                        </li>
                                        <li class="nav-item">
                                            <a
                                                class="nav-link"
                                                href="#top-justified-tab2"
                                                data-bs-toggle="tab"
                                                >Tổng số dịch vụ</a
                                            >
                                        </li>
                                        <li class="nav-item">
                                            <a
                                                class="nav-link"
                                                href="#top-justified-tab3"
                                                data-bs-toggle="tab"
                                                >Thông Báo</a
                                            >
                                        </li>
                                    </ul>
                                    <div class="tab-content">
                                        <div
                                            class="tab-pane show active"
                                            id="top-justified-tab1"
                                            >
                                            <form action="StaffGeneralPageController" method="post">
                                                <div class="form-group" style="display:flex; justify-content: center; align-items: center">
                                                    <label class="text-info font-weight-600 w-25">Họ và Tên:</label>
                                                    <input
                                                        name="fullName"
                                                        type="text"
                                                        class="form-control"
                                                        value="${account.fullName}"
                                                        />
                                                </div>
                                                <div class="form-group" style="display:flex; justify-content: center; align-items: center">
                                                    <label class="text-info font-weight-600 w-25">Địa chỉ:</label>
                                                    <input
                                                        name="address"
                                                        type="text"
                                                        class="form-control"
                                                        value="${account.address}"
                                                        />
                                                </div>
                                                <div class="form-group" style="display:flex; justify-content: center; align-items: center">
                                                    <label class="text-info font-weight-600 w-25">Email</label>
                                                    <input 
                                                        name="email"
                                                        type="email" 
                                                        class="form-control" 
                                                        value="${account.email}" 
                                                        />
                                                </div>
                                                <div class="form-group" style="display:flex; justify-content: center; align-items: center">
                                                    <label class="text-info font-weight-600 w-25">Số Điện Thoại</label>
                                                    <input
                                                        name="phone"
                                                        type="text"
                                                        class="form-control"
                                                        value="${account.phone}"
                                                        />
                                                </div>
                                                <c:if test="${acc.roleID == 1}">
                                                    <div class="form-group" style="display:flex; justify-content: center; align-items: center">
                                                        <label class="text-info font-weight-600 w-25">Chức vụ</label>
                                                        <select name="roleID" class="form-control">
                                                            <option value="1" <c:if test="${account.roleID == 1}">selected</c:if>>Admin</option>
                                                            <option value="2" <c:if test="${account.roleID == 2}">selected</c:if>>Nhân viên sửa chữa điện</option>
                                                            <option value="3" <c:if test="${account.roleID == 3}">selected</c:if>>Quản lý</option>
                                                            <option value="4" <c:if test="${account.roleID == 4}">selected</c:if>>Khách hàng</option>
                                                            <option value="5" <c:if test="${account.roleID == 5}">selected</c:if>>Nhân viên sửa chữa nước</option>
                                                            <option value="6" <c:if test="${account.roleID == 6}">selected</c:if>>Nhân viên vệ sinh</option>
                                                            </select>
                                                        </div>
                                                </c:if>
                                                <div class="form-group" style="display:flex; align-items: center;">
                                                    <label class="text-info font-weight-600 w-25">Tổng Lương</label>
                                                    <div class="w-100" style="display: flex; justify-content: center; align-items: center;">
                                                        <fmt:formatNumber var="formattedSalary" value="${account.salary}" pattern="###,###" />

                                                        <input
                                                            name="salary"
                                                            type="text"
                                                            class="form-control"
                                                            value="${formattedSalary}"
                                                            />
                                                        <span class="btn btn-success">VND</span>
                                                    </div>
                                                </div>
                                                <div class="text-end text-center">
                                                    <input name="action" type="submit" value="Chỉnh Sửa" class="btn btn-primary" />
                                                </div>
                                            </form>
                                        </div>
                                        <div class="tab-pane" id="top-justified-tab2">
                                            Tab content 2
                                        </div>
                                        <div class="tab-pane" id="top-justified-tab3">
                                            Tab content 3
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="css/assets/js/jquery-3.6.0.min.js"></script>

        <script src="css/assets/js/bootstrap.bundle.min.js"></script>

        <script src="css/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

        <script src="css/assets/js/script.js"></script>
    </body>
</html>

