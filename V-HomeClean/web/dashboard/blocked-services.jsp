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

        <link rel="stylesheet" href="css/assets/css/bootstrap.min.css" />

        <link rel="stylesheet" href="css/assets/css/font-awesome.min.css" />

        <link rel="stylesheet" href="css/assets/css/feathericon.min.css" />

        <link rel="stylesheet" href="css/assets/plugins/morris/morris.css" />

        <link
            rel="stylesheet"
            href="css/assets/plugins/datatables/datatables.min.css"
            />

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
                                    <h3 class="page-title">Danh Sách Dịch Vụ Bị Khóa</h3>
                                    <ul class="breadcrumb">
                                        <li class="breadcrumb-item">
                                            <a href="dashboard/index.jsp">Quản lý dịch vụ</a>
                                        </li>
                                        <li class="breadcrumb-item active">Danh sách dịch vụ bị khóa</li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h4 class="card-title">Số lượng dịch vụ ngưng hoạt động: ${TotalActiveService}</h4>
                                    <p class="card-text">
                                        Đây là bảng thể hiện danh sách những dịch vụ bị ngưng hoạt động của công ty
                                    </p>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive custom-table-responsive">                                          
                                        <table id="example_table" class="table table-center tab-content table-hover table-bordered ">
                                            <thead>
                                                <tr>
                                                    <th class="text-center">ID</th>
                                                    <th class="text-center">Tên dịch vụ</th>
                                                    <th class="text-center">Thể loại</th>
                                                    <th class="text-center">Giá cả</th>
                                                    <th class="text-center">Chi tiết</th>
                                                    <th class="text-center">Mở Khóa</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${ServiceList}" var="o">
                                                    <tr>
                                                        <td class="text-center">${o.serviceID}</td>
                                                        <td class="text-center">${o.serviceName}</td>
                                                        <td class="text-center">${o.cateServiceName}</td>
                                                        <fmt:formatNumber var="formattedPrice" value="${o.price}" pattern="###,### VND" />
                                                        <td class="text-center">${formattedPrice}</td>

                                                        <td class="text-center">
                                                            <div class="actions">
                                                                <a
                                                                    href="ServiceGeneralController?serviceID=${o.serviceID}"
                                                                    class="btn btn-large bg-info-light "
                                                                    title="View Document"
                                                                    >
                                                                    <i class="fe fe-eye"></i>
                                                                </a>
                                                            </div>
                                                        </td>



                                                        <td class="text-center">
                                                            <div class="text-end text-center">
                                                                <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#${o.serviceID}">
                                                                    <i class="fe fe-unlock"></i>
                                                                </button>
                                                            </div>
                                                        </td>

                                                <div class="modal fade" id="${o.serviceID}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="exampleModalLabel">Mở khóa tài khoản</h5>
                                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body">
                                                                Bạn có chắc chắn là muốn mở khóa <strong>${o.serviceName}</strong> này không ?
                                                            </div>
                                                            <div class="modal-footer" style="display: flex; justify-content: space-between">
                                                                <button type="button" class="btn btn-outline-danger" data-bs-dismiss="modal"><a>Không</a></button>
                                                                <button type="button" class="btn btn-outline-primary"><a href="ServicesBlockPageController?action=Mở&serviceID=${o.serviceID}">
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
        <script src="css/assets/plugins/datatables/datatables.min.js"></script>

        <script src="css/assets/js/script.js"></script>
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

