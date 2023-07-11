<%-- 
    Document   : general
    Created on : May 28, 2023, 11:32:17 PM
    Author     : Trung Kien
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">
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
                                    <h3 class="page-title">Thông Tin Đơn Hẹn</h3>
                                    <ul class="breadcrumb">
                                        <li class="breadcrumb-item">
                                            <a href="BookingsManagementController">Quản lý Đơn</a>
                                        </li>
                                        <li class="breadcrumb-item active">Thông Tin Đơn Hẹn</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="row settings-tab">


                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-header text-center">
                                        <h4 class="card-title text-primary">Thông Tin Chi Tiết</h4>
                                        <h6 class="text-success">${message}</h6>
                                </div>
                                <div class="card-body">
                                    <ul class="nav nav-tabs nav-tabs-top nav-justified">
                                        <li class="nav-item">
                                            <a
                                                class="nav-link active"
                                                href="#top-justified-tab1"
                                                data-bs-toggle="tab"
                                                >Đơn Hẹn</a
                                            >
                                            <p style="color: #00bf6f">${message}</p>
                                        </li>
                                        <li class="nav-item">
                                            <a
                                                class="nav-link"
                                                href="#top-justified-tab2"
                                                data-bs-toggle="tab"
                                                >Thông Tin Khách Hàng</a
                                            >
                                        </li>
                                        <li class="nav-item">
                                            <a
                                                class="nav-link"
                                                href="#top-justified-tab3"
                                                data-bs-toggle="tab"
                                                >Thông Tin Nhân Viên</a
                                            >
                                        </li>
                                    </ul>
                                    <div class="tab-content">
                                        <div
                                            class="tab-pane show active"
                                            id="top-justified-tab1"
                                            >
                                            <form action="BookingGeneralController" method="post">
                                                <c:if test="${booking.bookingStatus eq 'Hoàn thành'}">
                                                    <div class="card text-center">
                                                        <h1>Feedback từ khách hàng</h1>
                                                        <div style="margin: auto;margin-top: 10px;" class="text-center" id="rateYo${booking.bookingID}"></div>
                                                        <div class="text-center text-black" style="color: #000">
                                                            <c:forEach items="${feedBackList}" var="j">
                                                                <c:if test="${booking.bookingID eq j.bookingID}">
                                                                    <p>
                                                                        ${j.feedbackDetail}
                                                                    </p>
                                                                </c:if>
                                                            </c:forEach>
                                                        </div>
                                                    </div>
                                                </c:if>
                                                <input type="hidden" name="bookingID" value="${booking.bookingID}">
                                                <div class="form-group" style="display:flex; justify-content: center; align-items: center">
                                                    <label class="text-info font-weight-600 w-25">Tên dịch vụ:</label>
                                                    <input readonly=""
                                                           required=""
                                                           name="serviceName"
                                                           type="text"
                                                           class="form-control"
                                                           value="${service.serviceName}"
                                                           />
                                                </div>
                                                <div class="form-group" style="display:flex; justify-content: center; align-items: center">
                                                    <label class="text-info font-weight-600 w-25">Tên khách hàng:</label>
                                                    <input readonly=""
                                                           required=""
                                                           name="accountName"
                                                           type="text"
                                                           class="form-control"
                                                           value="${account.fullName}"
                                                           />
                                                </div>
                                                <div class="form-group" style="display:flex; justify-content: center; align-items: center">
                                                    <label class="text-info font-weight-600 w-25">Thời Gian:</label>
                                                    <input readonly=""
                                                           required=""
                                                           name="bookingTime"
                                                           type="text"
                                                           class="form-control"
                                                           value="<c:out value="${fn:substring(booking.bookingDate, 11, 16)}" />"
                                                           />
                                                </div>
                                                <div class="form-group" style="display:flex; justify-content: center; align-items: center">
                                                    <label class="text-info font-weight-600 w-25">Ngày:</label>
                                                    <input readonly=""
                                                           required=""
                                                           name="bookingDate"
                                                           type="text"
                                                           class="form-control"
                                                           value="<c:out value="${fn:substring(booking.bookingDate, 0, 10)}" />"
                                                           />
                                                </div>
                                                <div class="form-group" style="display:flex; justify-content: center; align-items: center">
                                                    <label class="text-info font-weight-600 w-25">Mã Phòng:</label>
                                                    <c:set var="addressArray" value="${fn:split(booking.bookingAddress, '||')}" />
                                                    <input readonly=""
                                                           required=""
                                                           name="bookingRoom"
                                                           type="text"
                                                           class="form-control"
                                                           value="<c:out value="${fn:trim(addressArray[0])}" />"
                                                           />
                                                </div>
                                                <div class="form-group" style="display:flex; justify-content: center; align-items: center">
                                                    <label class="text-info font-weight-600 w-25">Khu vực:</label>
                                                    <c:set var="addressArray" value="${fn:split(booking.bookingAddress, '||')}" />
                                                    <input readonly=""
                                                           required=""
                                                           name="serviceArea"
                                                           type="text"
                                                           class="form-control"
                                                           value="<c:out value="${fn:trim(addressArray[1])}" />"
                                                           />
                                                </div>                                                       

                                                <div class="form-group" style="display:flex; justify-content: center; align-items: center">
                                                    <label class="text-info font-weight-600 w-25">Tên Nhân viên phụ trách:</label>
                                                    <c:forEach items="${listAccounts}" var="o">
                                                        <c:if test="${o.accountID == booking.staffID}">
                                                            <c:set var="staffName" value="${o.fullName}" />
                                                        </c:if>
                                                    </c:forEach>
                                                    <input readonly=""
                                                           name="accountName"
                                                           type="text"
                                                           class="form-control"
                                                           value="${staffName}">
                                                </div>


                                                <div class="form-group" style="display:flex; align-items: center;">
                                                    <label class="text-info font-weight-600 w-25">Giá dịch vụ</label>
                                                    <div class="w-100" style="display: flex; justify-content: center; align-items: center;">
                                                        <fmt:formatNumber var="formattedPrice" value="${booking.totalPrice}" pattern="###,###" />

                                                        <input readonly=""
                                                               required=""
                                                               name="bookingPrice"
                                                               type="text"
                                                               class="form-control"
                                                               value="${formattedPrice}"
                                                               />
                                                        <span class="btn btn-success">VND</span>

                                                    </div>
                                                </div>
                                                <div class="form-group" style="display:flex; justify-content: center; align-items: center">
                                                    <label class="text-info font-weight-600 w-25">Trạng thái:</label>
                                                    <input readonly=""
                                                           required=""
                                                           name="serviceName"
                                                           type="text"
                                                           class="form-control"
                                                           value="${booking.bookingStatus}"
                                                           />
                                                </div>

                                                <div class="form-group" style="display:flex; justify-content: center; align-items: center">
                                                    <label class="text-info font-weight-600 w-25">Cập nhật nhân viên cho đơn:</label>
                                                    <select id="staffSelect" required name="staffID" class="form-control form-select">
                                                        <option selected="" disabled="">-- Chọn nhân viên --</option>
                                                        <c:choose>
                                                            <c:when test="${service.cateServiceName.equalsIgnoreCase('Dịch vụ vệ sinh')}">
                                                                <c:forEach items="${ListstaffsClean}" var="staff">
                                                                    <option value="${staff.accountID}">${staff.fullName}</option>
                                                                </c:forEach>
                                                            </c:when>
                                                            <c:when test="${service.cateServiceName.equalsIgnoreCase('Dịch vụ sửa chữa điện')}">
                                                                <c:forEach items="${ListStaffsFixEletric}" var="staff">
                                                                    <option value="${staff.accountID}">${staff.fullName}</option>
                                                                </c:forEach>
                                                            </c:when>
                                                            <c:when test="${service.cateServiceName.equalsIgnoreCase('Dịch vụ sửa chữa nước')}">
                                                                <c:forEach items="${ListStaffsFixWater}" var="staff">
                                                                    <option value="${staff.accountID}">${staff.fullName}</option>
                                                                </c:forEach>
                                                            </c:when>
                                                        </c:choose>
                                                    </select>
                                                </div>

                                                <div class="mt-5" style="display: flex; justify-content: space-between; align-content: center;">
                                                    <div class="text-end text-center">
                                                        <c:if test="${booking.bookingStatus eq 'Xác nhận' || booking.bookingStatus eq 'Chờ xác nhận'}">
                                                            <input id="update-button" name="action" type="submit" value="Cập nhật" class="btn btn-primary" />
                                                        </c:if>
                                                    </div>
                                                    <div class="text-end text-center">
                                                        <c:if test="${booking.bookingStatus eq 'Chờ xác nhận'}">
                                                            <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#myModal">
                                                                Hủy lịch hẹn
                                                            </button>
                                                        </c:if>
                                                    </div>

                                                    <div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title" id="exampleModalLabel">Hủy Lịch Hẹn</h5>
                                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    Bạn có chắc chắn là muốn hủy lịch hẹn này chứ ?
                                                                </div>
                                                                <div class="modal-footer">
                                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Không</button>
                                                                    <button type="button" class="btn btn-primary">Có</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>

                                            </form>
                                        </div>
                                        <div class="tab-pane" id="top-justified-tab2">
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
                                                                <a href="#"><i class="fe fe-activity"></i></a>
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
                                                        <div class="card-header">
                                                            <h4 class="card-title">Thông Tin Khách Hàng</h4>
                                                            <h6>${message}</h6>
                                                        </div>
                                                        <div class="card-body">
                                                            <ul class="nav nav-tabs nav-tabs-top nav-justified">
                                                                <li class="nav-item">
                                                                    <a
                                                                        class="nav-link active"
                                                                        href="#top-justified-tab4"
                                                                        data-bs-toggle="tab"
                                                                        >Thông Tin</a
                                                                    >
                                                                </li>
                                                            </ul>
                                                            <div class="tab-content">
                                                                <div
                                                                    class="tab-pane show active"
                                                                    id="top-justified-tab4"
                                                                    >
                                                                    <form action="UserGeneralPageController" method="post">
                                                                        <div class="form-group">
                                                                            <label>Họ và Tên</label>
                                                                            <input readonly=""
                                                                                   name="fullName"
                                                                                   type="text"
                                                                                   class="form-control"
                                                                                   value="${account.fullName}"
                                                                                   />
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label>Địa chỉ</label>
                                                                            <input readonly=""
                                                                                   name="address"
                                                                                   type="text"
                                                                                   class="form-control"
                                                                                   value="${account.address}"
                                                                                   />
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label>Email</label>
                                                                            <input readonly=""
                                                                                   name="email"
                                                                                   type="email" 
                                                                                   class="form-control" 
                                                                                   value="${account.email}" 
                                                                                   />
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label>Số Điện Thoại</label>
                                                                            <input readonly=""
                                                                                   name="phone"
                                                                                   type="text"
                                                                                   class="form-control"
                                                                                   value="${account.phone}"
                                                                                   />
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="top-justified-tab3">
                                            <c:choose>
                                                <c:when test="${not empty staff}">
                                                    <div class="row settings-tab">
                                                        <div class="col-md-4">
                                                            <div class="card">
                                                                <div class="card-header all-center">
                                                                    <a href="#" class="avatar avatar-sm me-2"
                                                                       ><img
                                                                            class="avatar-img rounded-circle"
                                                                            src="${staff.image}"
                                                                            alt="User Image"
                                                                            />
                                                                        <i class="fe fe-camera"></i>
                                                                    </a>
                                                                    <h6>${staff.fullName}</h6>
                                                                    <p>
                                                                        <c:choose>
                                                                            <c:when test="${staff.roleID == 1}">
                                                                                Admin
                                                                            </c:when>
                                                                            <c:when test="${staff.roleID == 2}">
                                                                                Nhân viên sửa chữa điện
                                                                            </c:when>
                                                                            <c:when test="${staff.roleID == 3}">
                                                                                Quản lý
                                                                            </c:when>
                                                                            <c:when test="${staff.roleID == 4}">
                                                                                Khách hàng
                                                                            </c:when>
                                                                            <c:when test="${staff.roleID == 5}">
                                                                                Nhân viên sửa chữa nước
                                                                            </c:when>
                                                                            <c:when test="${staff.roleID == 6}">
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
                                                                        <a href="#" class="float-end"><h5>${staff.age}</h5></a>
                                                                    </div>
                                                                    <div class="profile-list">
                                                                        <a href="#"><i class="fe fe-document"></i></a>
                                                                        <a href="#">Tổng Đơn</a>
                                                                        <a href="#" class="float-end"><h5>403</h5></a>
                                                                    </div>
                                                                    <div class="profile-list">
                                                                        <a href="#"><i class="fe fe-activity"></i></a>
                                                                        <a href="#">Tình Trạng</a>
                                                                        <c:choose>
                                                                            <c:when test="${staff.status eq true}">
                                                                                <a href="#" class="float-end"><h5 style="color: #00bf6f;">Hoạt động</h5></a>
                                                                            </c:when>
                                                                            <c:when test="${staff.status eq false}">
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
                                                                <div class="card-header">
                                                                    <h4 class="card-title">Thông Tin Nhân Viên</h4>
                                                                </div>
                                                                <div class="card-body">
                                                                    <ul class="nav nav-tabs nav-tabs-top nav-justified">
                                                                        <li class="nav-item">
                                                                            <a
                                                                                class="nav-link active"
                                                                                href="#top-justified-tab4"
                                                                                data-bs-toggle="tab"
                                                                                >Thông Tin</a
                                                                            >
                                                                        </li>
                                                                    </ul>
                                                                    <div class="tab-content">
                                                                        <div
                                                                            class="tab-pane show active"
                                                                            id="top-justified-tab4"
                                                                            >
                                                                            <form action="UserGeneralPageController" method="post">
                                                                                <div class="form-group">
                                                                                    <label>Họ và Tên</label>
                                                                                    <input readonly=""
                                                                                           name="fullName"
                                                                                           type="text"
                                                                                           class="form-control"
                                                                                           value="${staff.fullName}"
                                                                                           />
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <label>Địa chỉ</label>
                                                                                    <input readonly=""
                                                                                           name="address"
                                                                                           type="text"
                                                                                           class="form-control"
                                                                                           value="${staff.address}"
                                                                                           />
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <label>Email</label>
                                                                                    <input readonly=""
                                                                                           name="email"
                                                                                           type="email" 
                                                                                           class="form-control" 
                                                                                           value="${staff.email}" 
                                                                                           />
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <label>Số Điện Thoại</label>
                                                                                    <input readonly=""
                                                                                           name="phone"
                                                                                           type="text"
                                                                                           class="form-control"
                                                                                           value="${staff.phone}"
                                                                                           />
                                                                                </div>
                                                                            </form>
                                                                        </div>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:when>
                                                <c:otherwise>
                                                    <!-- Hiển thị thông báo "Hiện chưa có nhân viên phụ trách" -->
                                                    <div class="text-center text-primary text-lg">Hiện chưa có nhân viên phụ trách</div>
                                                </c:otherwise>
                                            </c:choose>


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
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
            $(document).ready(function () {
                // Kiểm tra khi người dùng nhập vào input
                $("input[name='price']").on("input", function () {
                    var value = $(this).val();

                    // Kiểm tra nếu giá trị không phải là số
                    if (!$.isNumeric(value)) {
                        // Hiển thị thông báo cảnh báo
                        $(this).next(".error-message").text("Vui lòng chỉ nhập số.");
                    } else {
                        // Xóa thông báo cảnh báo nếu giá trị hợp lệ
                        $(this).next(".error-message").text("");
                    }
                });
            });

        </script>
        <script>
            $(document).ready(function () {
                $('#myModal').on('shown.bs.modal', function () {
                    $('#myInput').trigger('focus');
                });
            });


            document.addEventListener("DOMContentLoaded", function () {
                var staffSelect = document.getElementById("staffSelect");
                var submitButton = document.getElementById("update-button");

                // Mặc định nút là bị vô hiệu hóa
                submitButton.disabled = true;

                // Kiểm tra lại giá trị khi tùy chọn thay đổi
                staffSelect.addEventListener("change", function () {
                    if (this.value === "") {
                        submitButton.disabled = true;
                    } else {
                        submitButton.disabled = false;
                    }
                });
            });
        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.js"></script>
        <script>
            $(document).ready(function () {
                // Khởi tạo plugin rateYo
                $("#rateYo").rateYo();

                // Gắn sự kiện cho plugin rateYo khi người dùng thay đổi đánh giá
                $("#rateYo").rateYo("option", "onSet", function (rating) {
                    if (rating > 0) {
                        $("#submitBtn").prop("disabled", false); // Enable button khi có đánh giá
                    } else {
                        $("#submitBtn").prop("disabled", true); // Disable button khi chưa có đánh giá
                    }
                    $("#ratingInput").val(rating); // Gán giá trị đánh giá vào trường ẩn (hidden input)
                });

            <c:forEach var="booking" items="${ListB}">
                <c:forEach items="${feedBackList}" var="f">
                    <c:if test="${booking.bookingID eq f.bookingID}">
                $("#rateYo${booking.bookingID}").rateYo({
                    rating: ${f.rating},
                    readOnly: true
                });
                    </c:if>
                </c:forEach>
            </c:forEach>
            });
        </script>
    </body>
</html>

