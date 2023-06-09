<%-- 
    Document   : index
    Created on : May 28, 2023, 11:25:35 PM
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
        <title>V-HomeClean - Dashboard</title>

        <link
            rel="shortcut icon"
            type="image/x-icon"
            href="css/assets/img/favicon.png"
            />
<!--        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
         Bootstrap DataTable CSS -->
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">
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
                        <div class="row">
                            <div class="col-xl-3 col-sm-3 col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="dash-widget-header">
                                            <span class="dash-widget-icon bg-success-light">
                                                <i class="fe fe-users"></i>
                                            </span>
                                            <div class="dash-count">
                                                <a href="#" class="count-title">Số Lượng Người Dùng</a>
                                                <a href="#" class="count">${TotalUsers}</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-3 col-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="dash-widget-header">
                                        <span class="dash-widget-icon bg-primary-light">
                                            <i class="fe fe-document"></i>
                                        </span>
                                        <div class="dash-count">
                                            <a href="#" class="count-title">Tổng số dịch vụ</a>
                                            <a href="#" class="count">${TotalServices}</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-3 col-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="dash-widget-header">
                                        <span class="dash-widget-icon bg-danger-light">
                                            <i class="fe fe-book"></i>
                                        </span>
                                        <div class="dash-count">
                                            <a href="#" class="count-title">Tổng số đơn đã đặt</a>
                                            <a href="#" class="count">0</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-3 col-sm-3 col-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="dash-widget-header">
                                        <span class="dash-widget-icon bg-warning-light">
                                            <i class="fe fe-artboard"></i>
                                        </span>
                                        <div class="dash-count">
                                            <a href="#" class="count-title">Tổng số Blog</a>
                                            <a href="#" class="count">0</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 d-flex">
                            <div class="card card-table flex-fill">
                                <div class="card-header">
                                    <h4 class="card-title float-start">Danh Sách Người Dùng</h4>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive p-3">
                                        <table id="example_table" class="table table-bordered text-center table-striped">
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Họ và Tên</th>
                                                    <th>Giới tính</th>
                                                    <th>Ngày sinh</th>
                                                    <th>Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${ListUsers}" var="o">
                                                    <tr>
                                                        <td>${o.accountID}</td>
                                                        <td>${o.fullName}</td>
                                                        <td>
                                                            <c:choose>
                                                                <c:when test="${o.gender eq 'Male'}">
                                                                    Nam
                                                                </c:when>
                                                                <c:when test="${o.gender eq 'Female'}">
                                                                    Nữ
                                                                </c:when>
                                                                <c:otherwise>
                                                                    Khác
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </td>
                                                        <td>
                                                            ${o.dateOfBirth}
                                                        </td>
                                                        <td> <c:choose>
                                                                <c:when test="${o.status == true}">
                                                                    <button type="button" class="btn btn-rounded btn-success">Active</button>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <button type="button" class="btn btn-rounded btn-danger">Blocked</button>
                                                                </c:otherwise>
                                                            </c:choose>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="col-md-6 d-flex">
                            <div class="card card-table flex-fill">
                                <div class="card-header">
                                    <h4 class="card-title float-start">Danh Sách Đơn</h4>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive p-3">
                                        <table id="example_table1" class="table table-bordered text-center table-striped">
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Họ và Tên</th>
                                                    <th>Giới tính</th>
                                                    <th>Ngày sinh</th>
                                                    <th>Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${ListUsers}" var="o">
                                                    <tr>
                                                        <td>${o.accountID}</td>
                                                        <td>${o.fullName}</td>
                                                        <td>
                                                            <c:choose>
                                                                <c:when test="${o.gender eq 'Male'}">
                                                                    Nam
                                                                </c:when>
                                                                <c:when test="${o.gender eq 'Female'}">
                                                                    Nữ
                                                                </c:when>
                                                                <c:otherwise>
                                                                    Khác
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </td>
                                                        <td>
                                                            ${o.dateOfBirth}
                                                        </td>
                                                        <td> <c:choose>
                                                                <c:when test="${o.status == true}">
                                                                    <button type="button" class="btn btn-rounded btn-success">Active</button>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <button type="button" class="btn btn-rounded btn-danger">Blocked</button>
                                                                </c:otherwise>
                                                            </c:choose>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
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

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <!-- Bootstrap js -->
        <!--        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
                 jQuery Datatable js -->
        <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
        <!-- Bootstrap Datatable js -->    
        <script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>
        <script>
            $(document).ready(function () {
                $('#example_table').DataTable({
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
                $('#example_table1').DataTable(
                        {
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
    </body>
</html>

