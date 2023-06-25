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
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@500&display=swap" rel="stylesheet">
        <!--        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
                 Bootstrap DataTable CSS -->
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">
        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <!--        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

        <link rel="stylesheet" type="text/css" href="css/ProfileStyle.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
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
            .avatar {
                width: 150px; /* Định dạng kích thước hình ảnh */
                height: 150px;
                border-radius: 50%; /* Định dạng góc cong tạo hiệu ứng tròn */
                overflow: hidden; /* Ẩn phần vượt ra khỏi hình tròn */
                margin-left: 30px;
            }

            .avatar img {
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

        <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container text-center py-5">
<!--                <h1 class="display-4 text-white animated slideInDown mb-4"><strong style="color: #f52626;"> ${ERROR}</strong></h1>
                <h1 class="display-4 text-white animated slideInDown mb-4"><strong style="color: #00d747;" >${message}</strong></h1>-->
                <h1 class="display-4 text-white animated slideInDown mb-4">Thông Tin Tài Khoản</h1>
            </div>
        </div>




        <section class=" my-5">
            <div class="container-fluid">
                <div class="bg-white shadow rounded-lg d-block d-sm-flex w-full m-5">
                    <div class="profile-tab-nav border-right">
                        <div class="p-4">
                            <div class=" avatar img-circle">
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
                                <i class="fa fa-user text-center mr-1"></i> 
                                Tình Trạng Đơn
                            </a>
                            <a class="nav-link" id="application-tab" data-toggle="pill" href="#application" role="tab" aria-controls="application" aria-selected="false">
                                <i class="fa fa-tv text-center mr-1"></i> 
                                Tổng Số Đơn
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
                                <h6 class="text-white animated slideInDown mb-4"><strong style="color: #00d747;" >${message}</strong></h6>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Họ và Tên</label>
                                            <input name="fullName" type="text" class="form-control" value="${acc.fullName}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Ngày Sinh</label>
                                            <input name="dateOfBirth" type="date" class="form-control" value="${acc.dateOfBirth}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input name="email" type="email" class="form-control" value="${acc.email}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Số Điện Thoại</label>
                                            <input name="phone" type="text" class="form-control" value="${acc.phone}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Địa chỉ</label>
                                            <input name="address" type="text" class="form-control" value="${acc.address}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Giới tính</label>
                                            <select name="gender" class="form-control">
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
                                    <input class="btn btn-primary" style="width: 40%" name="action" value="Cập Nhật" type="submit" >
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

                                                <label>Mật khẩu cũ</label>
                                                <input required="" type="password" name="password" class="form-control">
                                                <div class="old-pass"> <i class="fa-solid fa-warning"></i> Xác nhận mật khẩu cũ</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Mật khẩu mới</label>
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
                                                <label>Xác nhận mật khẩu mới</label>
                                                <input required="" type="password" name="confirm" class="form-control">
                                                <p class="confirm-new-pass"> <i class="fa-solid fa-warning"></i>Xác nhận đúng mật khẩu mới!</p>
                                            </div>
                                        </div>
                                    </div>

                                    <input class="btn btn-primary change-pass-button" type="submit" name="action" value="Thay Đổi Mật Khẩu"
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
                                <table id="example_table1" class="table table-hover text-center table-info">
                                    <thead>
                                        <tr>
                                            <th>Dịch vụ</th>
                                            <th>Định Kì</th>
                                            <th>Mã phòng</th>
                                            <th>Khu vực</th>
                                            <th>Nhân viên</th>
                                            <th>Thời gian</th>
                                            <th>Tổng chi phí</th>
                                            <th>Tình Trạng</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="booking" items="${ListB}">
                                            <c:set var="addressParts" value="${fn:split(booking.bookingAddress, '||')}"/>
                                            <tr>
                                                <td>${booking.serviceName}</td>
                                                <td>${booking.typeOfService}</td>
                                                <td>${addressParts[0]}</td>
                                                <td>${addressParts[1]}</td>
                                                <td>${booking.staffID}</td>
                                                <td>${booking.bookingDate}</td>
                                                <td><fmt:formatNumber value="${booking.totalPrice}" pattern="###,### VND"/></td>
                                                <td>
                                                    <c:if test="${booking.bookingStatus eq 'Xác nhận'}">
                                                        <button class="btn btn-outline-primary">Xác nhận</button>
                                                    </c:if>
                                                    <c:if test="${booking.bookingStatus eq 'Đang hoạt động'}">
                                                        <button class="btn btn-primary">Đang làm</button>
                                                    </c:if>
                                                    <c:if test="${booking.bookingStatus eq 'Hoàn tất'}">
                                                        <button class="btn btn-success">Hoàn tất</button>
                                                    </c:if>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="application" role="tabpanel" aria-labelledby="application-tab">
                            <h3 class="mb-4">Số Đơn Của Bạn</h3>
                            <div class="row">
                                <table id="example_table2" class="table">
                                    <thead>
                                        <tr>
                                            <th>Mã đơn</th>
                                            <th>dịch vụ</th>
                                            <th>Mã phòng</th>
                                            <th>Khu vực</th>
                                            <th>Nhân viên</th>
                                            <th>Tổng chi phí</th>
                                            <th>Tình Trạng</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Mã đơn</td>
                                            <td>Dịch vụ</td>
                                            <td>Mã phòng</td>
                                            <td>Khu vực</td>
                                            <td>Nhân viên</td>
                                            <td>Tổng chi phí</td>
                                            <td>Tình trạng</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="notification" role="tabpanel" aria-labelledby="notification-tab">
                            <h3 class="mb-4">Thông Tin</h3>
                            <div class="form-group">

                                <table id="example_table3" class="table">
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
    
    <!-- cho data table -->
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
                }
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


</body>

</html>
