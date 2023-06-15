<%-- 
    Document   : report-users
    Created on : May 28, 2023, 11:33:15 PM
    Author     : Trung Kien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, user-scalable=0"
            />
        <title>Dashboard - Tạo Tài Khoản</title>

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
                                <h3 class="page-title">Tạo Tài Khoản Mới</h3>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="dashboard/index.jsp">Dashboard</a>
                                    </li>
                                    <li class="breadcrumb-item active">Tạo Tài Khoản Mới</li>
                                </ul>
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title text-center text-primary  font-weight-600">Điền Thông Tin Tài Khoản</h4>
                                </div>
                                <div class="card-body">
                                    <form action="#">
                                        <div class="form-group row">
                                            <label class="col-form-label col-md-2 text-info">Họ và Tên</label>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" placeholder="Nhập đầy đủ họ và tên">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-form-label col-md-2 text-info">Email</label>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" placeholder="Nhập địa chỉ email">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-form-label col-md-2 text-info">Mật khẩu</label>
                                            <div class="col-md-10">
                                                <input type="password" class="form-control" placeholder="Nhập mật khẩu">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-form-label col-md-2 text-info">Xác nhận mật khẩu</label>
                                            <div class="col-md-10">
                                                <input type="password" class="form-control" placeholder="Xác nhận mật khẩu">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-form-label col-md-2 text-info">Số điện thoại</label>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" placeholder="Nhập số điện thoại">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-form-label col-md-2 text-info">Địa chỉ</label>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" placeholder="Nhập địa chỉ">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row">
                                            <label class="col-form-label col-md-2 text-info">Ngày sinh</label>
                                            <div class="col-md-10">
                                                <input type="date" class="form-control" placeholder="Nhập địa chỉ">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-form-label col-md-2 text-info">Hình ảnh</label>
                                            <div class="col-md-10">
                                                <input class="form-control" type="file">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-form-label col-md-2 text-info">Chức vụ</label>
                                            <div class="col-md-10">
                                                <select class="form-control form-select">
                                                    <option>-- Chọn --</option>
                                                    <option>Admin</option>
                                                    <option>Quản lý</option>
                                                    <option>Nhân viên</option>
                                                    <option>Người dùng</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-form-label col-md-2">Giới tính</label>
                                            <div class="col-md-10">
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="radio"> Nam
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="radio"> Nữ
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="radio"> Khác
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-form-label col-md-2">Textarea</label>
                                            <div class="col-md-10">
                                                <textarea rows="5" cols="5" class="form-control" placeholder="Enter text here"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group mb-0 row">
                                            <label class="col-form-label col-md-2">Input Addons</label>
                                            <div class="col-md-10">
                                                <div class="input-group">
                                                    <span class="input-group-text">$</span>
                                                    <input class="form-control" type="text">
                                                    <div class="input-group-append">
                                                        <button class="btn btn-primary" type="button">Button</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
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

