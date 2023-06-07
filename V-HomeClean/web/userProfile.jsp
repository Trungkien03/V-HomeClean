<%-- 
    Document   : 404
    Created on : May 20, 2023, 9:49:33 PM
    Author     : Trung Kien
--%>

<%@page import="DTO.AccountDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>Apex - Home Repair Website Template</title>
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

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Libraries Stylesheet -->
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <!-- Template Stylesheet -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/ProfileStyle.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <!-- Bootstrap DataTable CSS -->
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">
        <style>
            .profile-image-label {
                display: block;
                width: 40px;
                height: 40px;
                border-radius: 50%;
                background-color: #f5f5f5;
                color: #999;
                font-size: 20px;
                text-align: center;
                line-height: 40px;
                cursor: pointer;
                position: absolute;
                bottom: 70px;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            }

            .profile-image-label:hover {
                background-color: #CCC;
            }

            .profile-image-label i {
                margin-top: 10px;
            }
            @media (max-width: 768px){
                .profile-image-label{
                    position: absolute;
                    bottom: 40px;

                }
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
                <h1 class="display-4 text-white animated slideInDown mb-4">Thông Tin Tài Khoản</h1>
            </div>
        </div>
        <style>
            .message_Noti{
                text-align: center;
                font-size: larger;
            }

        </style>
        <div class="message_Noti">
            <strong style="color: red" >${ERROR}</strong>
            <strong style="color: green;" >${message}</strong>
        </div>
        <section class="py-5 my-5">
            <div class="container">
                <div class="bg-white shadow rounded-lg d-block d-sm-flex">
                    <div class="profile-tab-nav border-right">
                        <div class="p-4">
                            <div class="img-circle text-center mb-3">
                                <img src="${acc.image}" alt="Image" class="shadow">
                            </div>
                            
                            <label for="profile-image" class="profile-image-label">
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
                                <input type="file" name="image" id="profile-image" accept="image/*" style="display: none;">
                                <h3 class="mb-4">Thông Tin Tài Khoản</h3>
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
                                    <input class="btn btn-primary" name="action" value="Cập Nhật" type="submit" >
                                </div>
                            </form>

                        </div>


                        <!--                        PASSWORD CHANGE -->


                        <%
                            AccountDTO account = (AccountDTO) session.getAttribute("acc");
                            if (account != null) {

                        %>


                        <div class="tab-pane fade" id="password" role="tabpanel" aria-labelledby="password-tab">
                            <h3 class="mb-4">Password Settings</h3>
                            <div>

                                <form action="ProfilePageController" method="POST">

                                    <div class="row">
                                        <div class="col-md-6">

                                            <div class="form-group">

                                                <label>Mật khẩu cũ</label>
                                                <input type="password" name="password" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Mật khẩu mới</label>
                                                <input type="password" name="newPassword" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Xác nhận mật khẩu mới</label>
                                                <input type="password" name="confirm" class="form-control">
                                            </div>
                                        </div>
                                    </div>

                                    <input class="btn btn-primary" type="submit" name="action" value="Thay Đổi Mật Khẩu"
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
                                <table id="example_table1" class="table">
                                    <thead>
                                        <tr>
                                            <th>id</th>
                                            <th>name</th>
                                            <th>number</th>
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
                                            <th>id</th>
                                            <th>name</th>
                                            <th>number</th>
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
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="notification" role="tabpanel" aria-labelledby="notification-tab">
                            <h3 class="mb-4">Thông Tin Thông Báo</h3>
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
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
    <script>
        $(document).ready(function () {
            $('#example_table1').DataTable();
        });
        $(document).ready(function () {
            $('#example_table2').DataTable();
        });
        $(document).ready(function () {
            $('#example_table3').DataTable();
        });
    </script>
    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>
