<%-- 
    Document   : data-tables
    Created on : May 28, 2023, 11:29:43 PM
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
        <!--        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
                 Bootstrap DataTable CSS -->
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
                            <div class="row">
                                <div class="col-sm-12">
                                    <h3 class="page-title">Quản Lý Tài Khoản</h3>
                                    <ul class="breadcrumb">
                                        <li class="breadcrumb-item">
                                            <a href="dashboard/index.jsp">Dashboard</a>
                                        </li>
                                        <li class="breadcrumb-item active">Quản Lý Tài Khoản</li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h4 class="card-title">Số lượng người dùng: ${TotalAccountActive}</h4>
                                    <p class="card-text">
                                        Đây là bảng danh sách số người dùng còn hoạt động
                                    </p>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive custom-table-responsive">                                          
                                        <table style="border: #00b4d8 solid medium" id="example_table" class="table table-center tab-content table-hover">
                                            <thead style="border:  #00b4d8 solid medium">
                                                <tr>
                                                    <th class="text-center">Họ và Tên</th>
                                                    <th class="text-center">Vai trò</th>
                                                    <th class="text-center">Số điện thoại</th>
                                                    <th class="text-center">Tuổi</th>
                                                    <th class="text-center">Thông tin</th>
                                                    <th class="text-center">Khóa tài khoản</th>
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
                                                        <td class="text-center">
                                                            <c:choose>
                                                                <c:when test="${o.roleID == 4}">
                                                                    Khách Hàng
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <!-- Hiển thị giá trị khác nếu roleID không bằng 4 -->
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </td>
                                                        <td class="text-center">${o.phone}</td>
                                                        <td class="text-center">${o.age}</td>
                                                        <td class="text-center"> 
                                                            <div class="actions">
                                                                <a
                                                                    href="UserGeneralPageController?accountID=${o.accountID}"
                                                                    class="btn btn-large bg-info-light "
                                                                    title="View Document"
                                                                    >
                                                                    <i class="fe fe-eye"></i>
                                                                </a>
                                                            </div>
                                                        </td>
                                                        <td class="text-center">
                                                            <div class="text-end text-center">
                                                                <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#${o.accountID}">
                                                                    <i class="fe fe-lock"></i>
                                                                </button>
                                                            </div>
                                                        </td>

                                                <div class="modal fade" id="${o.accountID}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="exampleModalLabel">Khóa người dùng</h5>
                                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body">
                                                                Bạn có chắc chắn là muốn khóa <strong>${o.fullName}</strong> này chứ ?
                                                            </div>
                                                                <div class="modal-footer" style="display: flex; justify-content: space-between">
                                                                <button type="button" class="btn btn-outline-danger" data-bs-dismiss="modal"><a>Không</a></button>
                                                                <button type="button" class="btn btn-outline-primary"><a href="UsersManagementController?action=Khóa&accountID=${o.accountID}">
                                                                        Có
                                                                    </a></button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
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

        <script src="css/assets/plugins/datatables/jquery.dataTables.min.js"></script>

        <script src="css/assets/js/script.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
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
            });
        </script>
    </body>
</html>

