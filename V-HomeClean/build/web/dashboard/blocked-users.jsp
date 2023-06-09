<%-- 
    Document   : blocked-users
    Created on : May 28, 2023, 11:27:50 PM
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
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" href="css/assets/css/bootstrap.min.css" />

        <link rel="stylesheet" href="css/assets/css/font-awesome.min.css" />

        <link rel="stylesheet" href="css/assets/css/feathericon.min.css" />

        <link rel="stylesheet" href="css/assets/plugins/morris/morris.css" />

        <link rel="stylesheet" href="css/assets/css/style.css" />
        <style>
            .btn-sm {
                width: 40%;
                heigt:40%
            }
        </style>
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
                                    <h3 class="page-title">Tài Khoản Bị Chặn</h3>
                                    <ul class="breadcrumb">
                                        <li class="breadcrumb-item">
                                            <a href="DashboardController">Dashboard</a>
                                        </li>
                                        <li class="breadcrumb-item active">Tài Khoản Bị Chặn</li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12 d-flex">
                                <div class="card card-table flex-fill">
                                    <div class="card-header">
                                        <h4 class="card-title">Tài Khoản Bị Khóa: ${totalBlockAccounts}</h4>
                                    </div>
                                    <div class="card-body">
                                        <div class="table-responsive custom-table-responsive p-3">                                          
                                            <table id="example_table" class="table table-center tab-content table-striped">
                                                <thead>
                                                    <tr>
                                                        <th>Tên</th>
                                                        <th>Vai trò</th>
                                                        <th>Số điện thoại</th>
                                                        <th>Tuổi</th>
                                                        <th>Thông tin</th>
                                                        <th>Mở Khóa</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach items="${ListUsers}" var="o">
                                                    <tr>
                                                        <td>
                                                            <h2 class="table-avatar">
                                                                <a 
                                                                    href="#"
                                                                    class="avatar avatar-sm me-2"
                                                                    ><img
                                                                        class="avatar-img rounded-circle"
                                                                        src="${o.image}"
                                                                        alt="User Image"
                                                                        /></a>
                                                                <a href="#"
                                                                   >${o.fullName} <span>#${o.accountID}</span></a
                                                                >
                                                            </h2>
                                                        </td>
                                                        <td>
                                                            <c:choose>
                                                                <c:when test="${o.roleID == 4}">
                                                                    Khách Hàng
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <!-- Hiển thị giá trị khác nếu roleID không bằng 4 -->
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </td>
                                                        <td>${o.phone}</td>
                                                        <td>${o.age}</td>
                                                        <td> 
                                                            <div class="actions">
                                                                <a
                                                                    href="UserGeneralPageController?accountID=${o.accountID}"
                                                                    class="btn btn-sm bg-success-light "
                                                                    title="View Document"
                                                                    >
                                                                    <i class="fe fe-eye"></i>
                                                                </a>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="actions">
                                                                <a href="UsersBlockPageController?action=Mở&accountID=${o.accountID}" class="btn btn-sm bg-danger-light">
                                                                    <i class="fe fe-unlock"></i>
                                                                </a>
                                                            </div>
                                                        </td>
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
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>  
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
            });
        </script>
    </body>
</html>

