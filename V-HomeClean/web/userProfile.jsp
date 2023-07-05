<%-- 
    Document   : 404
    Created on : May 20, 2023, 9:49:33 PM
    Author     : Trung Kien
--%>

<%@page import="java.util.List"%>
<%@page import="DTO.BookingDTO"%>
<%@page import="DTO.AccountDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>V-HomeClean - Thông Tin Tài Khoản</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@500&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">
        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <!--                <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">         -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

        <link rel="stylesheet" type="text/css" href="css/ProfileStyle.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">
        <style>
            .profile-image-label {
                display: block;
                width: 40px;
                height: 40px;
                border-radius: 50%;
                background-color: #f5f5f5;
                color: #009ce7;
                font-size: 20px;
                text-align: center;
                line-height: 40px;
                cursor: pointer;
                position: relative;
                bottom: 50px;
                left: 130px;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            }

            .profile-image-label:hover {
                background-color: #CCC;
            }


            .full-section {
                width: 100%;
                height: 100vh; /* vh stands for viewport height */
            }
            @media (max-width: 768px){
                .profile-image-label{
                    position: relative;
                    bottom: 50px;
                    left: 130px;
                }
            }

            .container-fluid.page-header {
                position: relative;
            }

            .container-fluid.page-header:before {
                content: "";
                background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.3)), url(https://wordpress.horje.com/s-custom-registration-form-builder-with-submission-manager/assets/banner-772x250.jpg?rev=2081490);
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                z-index: -1;
            }
            .avatar1 {
                width: 150px; /* Định dạng kích thước hình ảnh */
                height: 150px;
                border-radius: 50%; /* Định dạng góc cong tạo hiệu ứng tròn */
                overflow: hidden; /* Ẩn phần vượt ra khỏi hình tròn */
                margin-left: 30px;
            }

            .avatar1 img {
                width: 100%; /* Định dạng kích thước hình ảnh bên trong */
                height: 100%;
                object-fit: cover; /* Căn chỉnh hình ảnh để lấp đầy không gian */
            }

        </style>


    </head>

    <body>

        <jsp:include page="navigation.jsp"></jsp:include>

        <%
            AccountDTO user = (AccountDTO) session.getAttribute("acc");
            if (user == null) {
                response.sendRedirect("login.jsp");
            }
        %>




        <section class=" my-5">
            <div class="container-fluid">
                <div class="bg-white shadow rounded-lg d-block d-sm-flex w-full m-5">
                    <div class="profile-tab-nav border-right">
                        <div class="p-4">
                            <div class=" avatar1 img-circle">
                                <img id="profileImage" src="${acc.image}" alt="Image" class="shadow">
                            </div>
                            <label for="profile-image" class="profile-image-label">
                                <input type="file" id="profile-image" name="image" style="display: none;">
                                <i class="fas fa-camera"></i>
                            </label>

                            <h4 class="text-center">${acc.fullName}</h4>
                        </div>
                        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                            <a class="nav-link active" id="account-tab" data-toggle="pill" href="#account" role="tab" aria-controls="account" aria-selected="true">
                                <i class="fa fa-home text-center mr-1"></i> 
                                Tài Khoản
                            </a>
                            <a class="nav-link" id="password-tab" data-toggle="pill" href="#password" role="tab" aria-controls="password" aria-selected="false">
                                <i class="fa fa-key text-center mr-1"></i> 
                                Mật Khẩu
                            </a>
                            <a class="nav-link" id="security-tab" data-toggle="pill" href="#security" role="tab" aria-controls="security" aria-selected="false">
                                <i class="fa fa-tv text-center mr-1"></i> 
                                Tổng Đơn
                            </a>
                            <a class="nav-link" id="notification-tab" data-toggle="pill" href="#notification" role="tab" aria-controls="notification" aria-selected="false">
                                <i class="fa fa-bell text-center mr-1"></i> 
                                Thông Báo
                            </a>
                        </div>
                    </div>
                    <div class="tab-content p-4 p-md-5" id="v-pills-tabContent">
                        <div class="tab-pane fade show active" id="account" role="tabpanel" aria-labelledby="account-tab">
                            <form action="ProfilePageController" method="post">
                                <h3 class="mb-4">Thông Tin Tài Khoản</h3>
                                <p><strong style="font-family: sans-serif;color: #00d747;" >${message}</strong></p>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label style="color: black">Họ và Tên</label>
                                            <input name="fullName" type="text" class="text-info form-control" value="${acc.fullName}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label style="color: black">Ngày Sinh</label>
                                            <input name="dateOfBirth" type="date" class=" text-info form-control" value="${acc.dateOfBirth}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label style="color: black">Email</label>
                                            <input name="email" type="email" class="text-info form-control" value="${acc.email}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label style="color: black">Số Điện Thoại</label>
                                            <input name="phone" type="text" class="text-info form-control" value="${acc.phone}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label style="color: black">Địa chỉ</label>
                                            <input name="address" type="text" class="text-info form-control" value="${acc.address}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label style="color: black">Giới tính</label>
                                            <select name="gender" class="text-info form-control">
                                                <c:choose>
                                                    <c:when test="${acc.gender eq 'Male'}">
                                                        <option value="Male" selected>Nam</option>
                                                        <option value="Female">Nữ</option>
                                                        <option value="Other">Khác</option>
                                                    </c:when>
                                                    <c:when test="${acc.gender eq 'Female'}">
                                                        <option value="Male">Nam</option>
                                                        <option value="Female" selected>Nữ</option>
                                                        <option value="Other">Khác</option>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <option value="Male">Nam</option>
                                                        <option value="Female">Nữ</option>
                                                        <option value="Other" selected>Khác</option>
                                                    </c:otherwise>
                                                </c:choose>
                                            </select>
                                        </div>
                                    </div>
                                    <input class="btn btn-outline-primary" style="width: 40%" name="action" value="Cập Nhật" type="submit" >
                                </div>
                            </form>

                        </div>


                        <!--                        PASSWORD CHANGE -->


                        <%
                            AccountDTO account = (AccountDTO) session.getAttribute("acc");
                            if (account != null) {

                        %>


                        <div class="tab-pane fade" id="password" role="tabpanel" aria-labelledby="password-tab">
                            <h3 class="mb-4">Cài đặt mật khẩu</h3>
                            <div>
                                <p class="text-white animated slideInDown mb-4"><strong style="color: #00d747;" >${messagePass}</strong></p>
                                <p class="text-white animated slideInDown mb-4"><strong style="color: #f52626;"> ${ERRORPass}</strong></p>
                                <form action="ProfilePageController" method="POST">
                                    <div class="row">
                                        <div class="col-md-6">

                                            <div class="form-group">

                                                <label style="color: black" >Mật khẩu cũ</label>
                                                <input required="" type="password" name="password" class="form-control">
                                                <div class="old-pass"> <i class="fa-solid fa-warning"></i> Xác nhận mật khẩu cũ</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label style="color: black" >Mật khẩu mới</label>
                                                <input required="" type="password" name="newPassword" class="form-control">
                                                <div class="requirement mt-3">
                                                    <p>Mật khẩu mới phải chứa:</p>
                                                    <ul class="requirement-list" style="list-style-type: none;">
                                                        <li><i class="fa-solid fa-warning"></i><span>Ít nhất 8 ký tự</span></li>
                                                        <li><i class="fa-solid fa-warning"></i><span>Ít nhất 1 số tự nhiên (0...9)</span></li>
                                                        <li><i class="fa-solid fa-warning"></i><span>Ít nhất 1 ký tự thường (a...z)</span></li>
                                                        <li><i class="fa-solid fa-warning"></i><span>Ít nhất 1 ký tự đặc biệt (!...$) </span></li>
                                                        <li><i class="fa-solid fa-warning"></i><span>Ít nhất 1 ký tự in hoa (A...Z)</span></li>
                                                        <li><i class="fa-solid fa-warning"></i><span>Không được giống mật khẩu cũ</span></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label style="color: black">Xác nhận mật khẩu mới</label>
                                                <input required="" type="password" name="confirm" class="form-control">
                                                <p class="confirm-new-pass"> <i class="fa-solid fa-warning"></i>Xác nhận đúng mật khẩu mới!</p>
                                            </div>
                                        </div>
                                    </div>

                                    <input class="btn btn-outline-primary change-pass-button" type="submit" name="action" value="Thay Đổi Mật Khẩu"
                                           class="btn btn-block btn-info">
                                    <!--                            <div>
                                                                    <button class="btn btn-primary">Update</button>
                                                                    <button class="btn btn-light">Cancel</button>
                                                                </div>-->
                                </form>
                            </div>
                        </div>



                        <!-- đay là tab thông tin đơn hàng   -->
                        <div class="tab-pane fade" id="security" role="tabpanel" aria-labelledby="security-tab">
                            <h3 class="mb-4">Tình Trạng Đơn Dịch Vụ</h3>
                            <div class="row">
                                <table style="border: #004085 solid medium" id="example_table1" class="table table-hover text-center table-info">
                                    <thead>
                                        <tr>
                                            <th>Dịch vụ</th>
                                            <th>Định Kì</th>
                                            <th>Thời gian</th>
                                            <th>Tổng chi phí</th>
                                            <th>Chỉnh sửa</th>
                                            <th>Tình Trạng</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <c:forEach var="booking" items="${ListB}" varStatus="loop">
                                            <c:set var="addressParts" value="${fn:split(booking.bookingAddress, '||')}"/>
                                            <tr>
                                                <td>${booking.serviceName}</td>
                                                <td>${booking.typeOfService}</td>
                                                <td>${booking.bookingDate}</td>
                                                <td><fmt:formatNumber value="${booking.totalPrice}" pattern="###,### VND"/></td>
                                                <td>
                                                    <button type="button" class="btn btn-outline-info" data-toggle="modal" data-target="#b${booking.bookingID}">
                                                        Xem Thêm
                                                    </button>
                                                </td>
                                                <!-- Modal -->
                                        <div class="modal fade" id="b${booking.bookingID}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLongTitle">Chi tiết đơn của khách hàng</h5>


                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="container-fluid">
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    Thông tin nhân viên
                                                                    <c:set var="staffName" value=""/>
                                                                    <c:set var="staffAge" value="" />
                                                                    <c:set var="staffEmail" value="" />
                                                                    <c:set var="staffPhone" value="" />
                                                                    <c:set var="staffImage" value="" />
                                                                    <c:forEach items="${allAccounts}" var="o">
                                                                        <c:if test="${booking.staffID == o.accountID}">
                                                                            <c:set var="staffName" value="${o.fullName}" />
                                                                            <c:set var="staffAge" value="${o.age}" />
                                                                            <c:set var="staffEmail" value="${o.email}" />
                                                                            <c:set var="staffPhone" value="${o.phone}" />
                                                                            <c:set var="staffImage" value="${o.image}" />
                                                                        </c:if>
                                                                    </c:forEach>
                                                                    <c:choose>
                                                                        <c:when test="${empty staffName}">
                                                                            <div class="p-3 text-center">
                                                                                <h4 class="text-center text-danger">Hiện tại chưa có nhân viên phụ trách</h4>
                                                                            </div>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            <div class="p-3 text-center">
                                                                                <div style="margin-left: 80px;" class="avatar1 img-circle">
                                                                                    <img id="profileImage" src="${staffImage}" alt="Image" class="shadow">
                                                                                </div>
                                                                                <h4 class="text-center text-success">${staffName}</h4>
                                                                                <h5 class="text-center text-primary">${staffAge} tuổi</h5>
                                                                            </div>
                                                                            <div class="card">
                                                                                <div class="card-body">
                                                                                    Địa chỉ liên hệ
                                                                                    <form action="#">
                                                                                        <div class="form-group">
                                                                                            <label class="text-info">Số điện thoại</label>
                                                                                            <input style="color: #000;" readonly="" value="${staffPhone}" type="text" class="form-control text-center">
                                                                                        </div>
                                                                                        <div class="form-group">
                                                                                            <label class="text-info">Địa chỉ email</label>
                                                                                            <input style="color: #000;" readonly="" value="${staffEmail}" type="text" class="form-control text-center">
                                                                                        </div>
                                                                                    </form>
                                                                                </div>
                                                                            </div>
                                                                        </c:otherwise>
                                                                    </c:choose>


                                                                </div>
                                                                <div class="col-md-6">
                                                                    Thông tin đơn
                                                                    <div class="card">
                                                                        <div class="card-body">
                                                                            <form action="#">
                                                                                <div class="form-group">
                                                                                    <label class="text-info">Thời gian</label>
                                                                                    <input style="color: #000;" readonly="" value="${fn:substring(booking.bookingDate, 11, 16)}" type="text" class="form-control text-center">
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <label class="text-info">Ngày (yyyy-mm-dd)</label>
                                                                                    <input style="color: #000;" readonly="" value="${fn:substring(booking.bookingDate, 0, 10)}" type="text" class="form-control text-center">
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <c:set var="addressArray" value="${fn:split(booking.bookingAddress, '||')}" />
                                                                                    <label class="text-info">Số phòng</label>
                                                                                    <input style="color: #000;" readonly="" value="${fn:trim(addressArray[0])}" type="text" class="form-control text-center">
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <label class="text-info">Khu vực</label>
                                                                                    <input style="color: #000;" readonly="" value="${fn:trim(addressArray[1])}" type="text" class="form-control text-center">
                                                                                </div>

                                                                                <div class="form-group">
                                                                                    <label class="text-info">Định kì</label>
                                                                                    <input style="color: #000;" readonly="" value="${booking.typeOfService}" type="text" class="form-control text-center">
                                                                                </div>

                                                                                <div class="form-group">
                                                                                    <fmt:formatNumber var="formattedPrice" value="${booking.totalPrice}" pattern="###,###" />
                                                                                    <label class="text-info">Tổng chi phí</label>
                                                                                    <div style="display: flex" class=" text-center col-md-12">
                                                                                        <input style="color: #000;" readonly=""
                                                                                               required=""
                                                                                               name="bookingPrice"
                                                                                               type="text"
                                                                                               class="form-control text-center"
                                                                                               value="${formattedPrice}"
                                                                                               />
                                                                                        <span style="position: absolute;" class="btn btn-success">VND</span>     
                                                                                    </div>

                                                                                </div>
                                                                            </form>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <div class="card">
                                                                        <div class="card-body">
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
                                                                    </div>
                                                                </div>

                                                            </div>


                                                        </div>
                                                        <div style="display: flex; justify-content: space-between" class="modal-footer">
                                                            <c:if test="${booking.bookingStatus eq 'Chờ xác nhận'}">
                                                                <button type="button" class="btn btn-danger" data-dismiss="modal">Hủy đơn</button>
                                                            </c:if>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <td>
                                                <c:if test="${booking.bookingStatus eq 'Chờ xác nhận'}">
                                                    <button class="btn btn-info">Chờ xác nhận</button>
                                                </c:if>
                                                <c:if test="${booking.bookingStatus eq 'Xác nhận'}">
                                                    <button class="btn btn-info">Đã xác nhận</button>
                                                </c:if>
                                                <c:if test="${booking.bookingStatus eq 'Đang thực hiện'}">
                                                    <button class="btn btn-info">Đang hoạt động</button>
                                                </c:if>
                                                <c:if test="${booking.bookingStatus eq 'Xác nhận hoàn thành'}">
                                                    <button class="btn btn-info" data-toggle="modal" data-target="#a${loop.index}">Xác nhận đơn</button>
                                                    <!-- Modal -->
                                                    <div class="modal fade" id="a${loop.index}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                                        <div class="modal-dialog modal-dialog-centered" role="document">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title" id="exampleModalLongTitle">Phản hồi từ quý khách</h5>
                                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                        <span aria-hidden="true">&times;</span>
                                                                    </button>
                                                                </div>
                                                                <form action="ProfilePageController" method="POST">
                                                                    <div class="modal-body">
                                                                        Quý khách có hài lòng với dịch vụ của công ty chúng tôi không ạ ?
                                                                        <div class="col-lg-12 col-md-6 wow fadeInUp mt-3" data-wow-delay="0.3s">

                                                                            <input name="bookingID" type="hidden" value="${booking.bookingID}">
                                                                            <div class="row g-3">
                                                                                <div class="col-12">
                                                                                    <div class="form-floating">
                                                                                        <textarea name="feedbackDetail" class="form-control bg-light border-0" placeholder="Leave a message here" id="message" style="height: 100px"></textarea>
                                                                                        <label for="message">Hãy cho chúng tôi biết cảm nhận của quý khách</label>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-12">
                                                                                    <div>Mức độ hài lòng của quý khách:</div>
                                                                                    <div style="margin: auto" class="text-center" id="rateYo"></div>
                                                                                    <input type="hidden" id="ratingInput" name="rating" value="">
                                                                                </div>
                                                                            </div>


                                                                        </div>
                                                                    </div>
                                                                    <div style="display: flex; justify-content: space-between" class="modal-footer">
                                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                                                                        <button id="submitBtn" disabled name="action" value="Đánh giá" type="submit" class="btn btn-primary">Gửi đánh giá</button>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:if>
                                                <c:if test="${booking.bookingStatus eq 'Hoàn thành'}">
                                                    <button class="btn btn-success" >Hoàn tất</button>
                                                </c:if>
                                            </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="notification" role="tabpanel" aria-labelledby="notification-tab">
                            <h3 class="mb-4">Thông Tin Thông Báo</h3>
                            <div class="form-group">

                                <table style="border: #004085 solid medium" id="example_table3" class="table table-hover text-center table-info">
                                    <thead>
                                        <tr>
                                            <th></th>
                                            <th>Nội Dung</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Colt Adams</td>
                                            <td>16740326 5320</td>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Colt Adams</td>
                                            <td>16740326 5320</td>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Colt Adams</td>
                                            <td>16740326 5320</td>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Colt Adams</td>
                                            <td>16740326 5320</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
        <%            }
        %>
    </section>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <!-- Bootstrap js -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <!-- jQuery Datatable js -->
    <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
    <!-- Bootstrap Datatable js -->    
    <script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <!--    //----------------------------------------------------------------------------------
    //cập nhật hình ảnh Real Time-->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {
            // Bắt sự kiện khi người dùng thay đổi trường input file
            $('#profile-image').change(function () {
                var fileInput = $('#profile-image')[0].files[0];
                if (fileInput) {
                    var formData = new FormData();
                    formData.append('image', fileInput);

                    $.ajax({
                        url: 'UpdateImageProfileController',
                        type: 'POST',
                        data: formData,
                        processData: false,
                        contentType: false,
                        success: function (response) {
                            // Cập nhật hình ảnh mới trên trang web
                            $('#profileImage').attr('src', response);
                            $('#profile-image-2').attr('src', response);
                        },
                        error: function (xhr, status, error) {
                            // Xử lý lỗi (nếu có)
                            console.log(error);
                        }
                    });
                }

            });
        });
    </script>
    <!-- cho data table -->
    <!-- jQuery Datatable js -->
    <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
    <!-- Bootstrap Datatable js -->    
    <script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#example_table1').DataTable({
                language: {
                    "sProcessing": "Đang xử lý...",
                    "sLengthMenu": "Hiển thị _MENU_ dòng",
                    "sZeroRecords": "Không tìm thấy kết quả nào",
                    "sInfo": "Đang hiển thị _START_ đến _END_ trong tổng số _TOTAL_ mục",
                    "sInfoEmpty": "Đang hiển thị 0 đến 0 trong tổng số 0 mục",
                    "sInfoFiltered": "(được lọc từ _MAX_ mục)",
                    "sSearch": "Tìm kiếm:",
                    "oPaginate": {
                        "sFirst": "Đầu",
                        "sPrevious": "Trước",
                        "sNext": "Tiếp",
                        "sLast": "Cuối"
                    },
                    "sEmptyTable": "Không có dữ liệu",
                    "sLoadingRecords": "Đang tải...",
                    "oAria": {
                        "sSortAscending": ": Sắp xếp cột tăng dần",
                        "sSortDescending": ": Sắp xếp cột giảm dần"
                    }
                },
                order: [[2, 'des']]

            });
        });

        $(document).ready(function () {
            $('#example_table2').DataTable({
                language: {
                    "sProcessing": "Đang xử lý...",
                    "sLengthMenu": "Hiển thị _MENU_ dòng",
                    "sZeroRecords": "Không tìm thấy kết quả nào",
                    "sInfo": "Đang hiển thị _START_ đến _END_ trong tổng số _TOTAL_ mục",
                    "sInfoEmpty": "Đang hiển thị 0 đến 0 trong tổng số 0 mục",
                    "sInfoFiltered": "(được lọc từ _MAX_ mục)",
                    "sSearch": "Tìm kiếm:",
                    "oPaginate": {
                        "sFirst": "Đầu",
                        "sPrevious": "Trước",
                        "sNext": "Tiếp",
                        "sLast": "Cuối"
                    },
                    "sEmptyTable": "Không có dữ liệu",
                    "sLoadingRecords": "Đang tải...",
                    "oAria": {
                        "sSortAscending": ": Sắp xếp cột tăng dần",
                        "sSortDescending": ": Sắp xếp cột giảm dần"
                    }
                }
            });
        });

        $(document).ready(function () {
            $('#example_table3').DataTable({
                language: {
                    "sProcessing": "Đang xử lý...",
                    "sLengthMenu": "Hiển thị _MENU_ dòng",
                    "sZeroRecords": "Không tìm thấy kết quả nào",
                    "sInfo": "Đang hiển thị _START_ đến _END_ trong tổng số _TOTAL_ mục",
                    "sInfoEmpty": "Đang hiển thị 0 đến 0 trong tổng số 0 mục",
                    "sInfoFiltered": "(được lọc từ _MAX_ mục)",
                    "sSearch": "Tìm kiếm:",
                    "oPaginate": {
                        "sFirst": "Đầu",
                        "sPrevious": "Trước",
                        "sNext": "Tiếp",
                        "sLast": "Cuối"
                    },
                    "sEmptyTable": "Không có dữ liệu",
                    "sLoadingRecords": "Đang tải...",
                    "oAria": {
                        "sSortAscending": ": Sắp xếp cột tăng dần",
                        "sSortDescending": ": Sắp xếp cột giảm dần"
                    }
                }
            });
        });
    </script>
    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    <!--phan nay danh cho thay doi mat khau-->
    <script>
        var status = "${status}";

        // Auto-click vào tab "password" nếu giá trị của biến status là "change-password"
        if (status === "change-password") {
            window.addEventListener('DOMContentLoaded', function () {
                document.getElementById('password-tab').click();
                status = "";
            });
        }

        if (status === "feedBack") {
            window.addEventListener('DOMContentLoaded', function () {
                document.getElementById('security-tab').click();
                status = "";
            });
        }

        // Khởi tạo biến để lưu trạng thái của mỗi điều kiện
        let isOldPasswordValid = false;
        let isNewPasswordValid = false;
        let isConfirmationValid = false;

// Check nhập mật khẩu cũ
        const passwordConfirmation = document.querySelector('.old-pass');
        passwordConfirmation.style.display = 'none';
        const oldPasswordInput = document.querySelector('input[name="password"]');
        oldPasswordInput.addEventListener('input', checkOldPassword);

        function checkOldPassword(event) {
            const oldPassword = event.target.value;

            // Kiểm tra mật khẩu cũ có khớp với giá trị từ biến `acc.password` hay không
            if (oldPassword === '${acc.password}') {
                passwordConfirmation.innerHTML = '<i class="fas fa-check"></i> Xác nhận mật khẩu cũ';
                passwordConfirmation.style.color = '#00d747';
                isOldPasswordValid = true; // Đánh dấu mật khẩu cũ là hợp lệ
            } else {
                passwordConfirmation.innerHTML = '<i class="fa-solid fa-warning"></i> Xác nhận mật khẩu cũ';
                passwordConfirmation.style.color = 'red';
                isOldPasswordValid = false; // Đánh dấu mật khẩu cũ không hợp lệ
            }

            if (oldPassword !== '') {
                passwordConfirmation.style.display = 'block';
            } else {
                passwordConfirmation.style.display = 'none';
            }

            // Kiểm tra trạng thái tổng hợp và kích hoạt/disabled nút
            updateButtonState();
        }

// Check nhập mật khẩu mới
        const newPasswordInput = document.querySelector('input[name="newPassword"]');
        const requirementList = document.querySelector('.requirement-list');
        const requirementItems = requirementList.querySelectorAll('li');
        requirementList.style.display = 'none';
        newPasswordInput.addEventListener('input', checkNewPassword);
        newPasswordInput.addEventListener('focus', showRequirementList);

        function checkNewPassword(event) {
            const newPassword = event.target.value;

            // Kiểm tra các yêu cầu cho mật khẩu mới
            const lengthRequirement = newPassword.length >= 8;
            const numberRequirement = /\d/.test(newPassword);
            const lowercaseRequirement = /[a-z]/.test(newPassword);
            const specialCharRequirement = /[!@#$%^&*]/.test(newPassword);
            const uppercaseRequirement = /[A-Z]/.test(newPassword);
            const notEqualRequirement = newPassword !== '${acc.password}';

            // Hiển thị requirementList cho các yêu cầu thỏa mãn
            requirementItems.forEach((item, index) => {
                const icon = item.querySelector('i');

                if (index === 0 && lengthRequirement) {
                    icon.classList.remove('fa-warning');
                    icon.classList.add('fa-check');
                    item.style.color = '#00d747';
                } else if (index === 1 && numberRequirement) {
                    icon.classList.remove('fa-warning');
                    icon.classList.add('fa-check');
                    item.style.color = '#00d747';
                } else if (index === 2 && lowercaseRequirement) {
                    icon.classList.remove('fa-warning');
                    icon.classList.add('fa-check');
                    item.style.color = '#00d747';
                } else if (index === 3 && specialCharRequirement) {
                    icon.classList.remove('fa-warning');
                    icon.classList.add('fa-check');
                    item.style.color = '#00d747';
                } else if (index === 4 && uppercaseRequirement) {
                    icon.classList.remove('fa-warning');
                    icon.classList.add('fa-check');
                    item.style.color = '#00d747';
                } else if (index === 5 && notEqualRequirement) {
                    icon.classList.remove('fa-warning');
                    icon.classList.add('fa-check');
                    item.style.color = '#00d747';
                } else {
                    icon.classList.remove('fa-check');
                    icon.classList.add('fa-warning');
                    item.style.color = 'red';
                }
            });

            if (newPassword !== '') {
                requirementList.style.display = 'block';
                isNewPasswordValid = lengthRequirement && numberRequirement && lowercaseRequirement && specialCharRequirement && uppercaseRequirement && notEqualRequirement;
            } else {
                requirementList.style.display = 'none';
                isNewPasswordValid = false;
            }

            // Kiểm tra trạng thái tổng hợp và kích hoạt/disabled nút
            updateButtonState();
        }

        function showRequirementList() {
            if (newPasswordInput.value !== '') {
                requirementList.style.display = 'block';
            } else {
                requirementList.style.display = 'none';
            }
        }

// Confirm pass
        const confirmInput = document.querySelector('input[name="confirm"]');
        const confirmMessage = document.querySelector('.confirm-new-pass');

        confirmMessage.style.display = 'none';

        confirmInput.addEventListener('input', checkConfirmation);

        function checkConfirmation(event) {
            const newPassword = document.querySelector('input[name="newPassword"]').value;
            const confirmation = event.target.value;

            if (confirmation === newPassword) {
                confirmMessage.innerHTML = '<i class="fa-solid fa-check"></i> Xác nhận đúng mật khẩu mới!';
                confirmMessage.style.color = '#00d747';
                isConfirmationValid = true; // Đánh dấu xác nhận mật khẩu mới là hợp lệ
            } else {
                confirmMessage.innerHTML = '<i class="fa-solid fa-warning"></i> Xác nhận đúng mật khẩu mới!';
                confirmMessage.style.color = 'red';
                isConfirmationValid = false; // Đánh dấu xác nhận mật khẩu mới không hợp lệ
            }

            if (confirmation !== '') {
                confirmMessage.style.display = 'block';
            } else {
                confirmMessage.style.display = 'none';
            }

            // Kiểm tra trạng thái tổng hợp và kích hoạt/disabled nút
            updateButtonState();
        }

// Cập nhật trạng thái của nút dựa trên kết quả kiểm tra
        function updateButtonState() {
            const button = document.querySelector('.change-pass-button');
            const isButtonDisabled = !(isOldPasswordValid && isNewPasswordValid && isConfirmationValid);

            button.disabled = isButtonDisabled;
        }
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
