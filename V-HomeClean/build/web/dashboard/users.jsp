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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <!-- Bootstrap DataTable CSS -->
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
                                        <h4 class="card-title">Tổng Số Lượng Người Dùng</h4>
                                    </div>
                                    <div class="card-body">
                                        <div class="table-responsive custom-table-responsive">                                          
                                            <table id="example_table" class="table table-center tab-content table-striped">
                                                <thead>
                                                    <tr>
                                                        <th>Tên</th>
                                                        <th>Vai trò</th>
                                                        <th>Số điện thoại</th>
                                                        <th>Tuổi</th>
                                                        <th>Thông tin</th>
                                                        <th>Chỉnh sửa</th>
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
                                                                    Customer
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <!--                                                                    Hiển thị giá trị khác nếu roleID không bằng 4 -->
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </td>
                                                        <td>${o.phone}</td>
                                                        <td>${o.age}</td>
                                                        <td> 
                                                            <div class="actions">
                                                                <a
                                                                    href="UserGeneralPageController?accountID=${o.accountID}"
                                                                    class="btn btn-sm bg-success-light me-2"
                                                                    title="View Document"
                                                                    >
                                                                    <i class="fe fe-eye"></i>
                                                                </a>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="actions">
                                                                <a href="#" class="btn btn-sm bg-success-light me-2">
                                                                    <i class="fe fe-pencil"></i>
                                                                </a>
                                                                <a href="#" class="btn btn-sm bg-danger-light">
                                                                    <i class="fe fe-trash"></i>
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

        <script src="css/assets/plugins/datatables/jquery.dataTables.min.js"></script>

        <script src="css/assets/js/script.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
        <!-- Bootstrap Datatable js -->    
        <script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>
        <script>
            $(document).ready(function () {
                $('#example_table').DataTable();
            });
        </script>
    </body>
</html>

