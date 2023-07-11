<%-- 
    Document   : blogs
    Created on : Jul 10, 2023, 4:40:12 PM
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
            href="assets/img/favicon.png"
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
                                    <h3 class="page-title">Danh Sách Blog </h3>
                                    <ul class="breadcrumb">
                                        <li class="breadcrumb-item">
                                            <a href="dashboard/index.jsp">Bảng Điều Khiển</a>
                                        </li>
                                        <li class="breadcrumb-item active">Danh Sách Blog</li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="container">
                            <div class="row">
                                <div class="card">
                                    <div class="card-header">
                                        <h4 class="card-title">Số Lượng Bài Viết</h4>
                                    <p class="card-text">
                                        Đây là bảng thể hiện danh sách những dịch vụ của công ty
                                    </p>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive custom-table-responsive">                                          
                                        <table id="example_table" class="table table-center tab-content">
                                            <thead>
                                                <tr>
                                                    <th class="text-center"></th>
                                                    <th class="text-center"></th>
                                                    <th class="text-center"></th>
                                                    <th class="text-center"></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="text-center">
                                                        <div class="card" style="width: 15rem;">
                                                            <img class="card-img-top" src="..." alt="Card image cap">
                                                            <div class="card-body">
                                                                <h5 class="card-title">Card title</h5>
                                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                                <a href="#" class="btn btn-primary">Go somewhere</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="text-center">
                                                        <div class="card" style="width: 15rem;">
                                                            <img class="card-img-top" src="..." alt="Card image cap">
                                                            <div class="card-body">
                                                                <h5 class="card-title">Card title</h5>
                                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                                <a href="#" class="btn btn-primary">Go somewhere</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="text-center">
                                                        <div class="card" style="width: 15rem;">
                                                            <img class="card-img-top" src="..." alt="Card image cap">
                                                            <div class="card-body">
                                                                <h5 class="card-title">Card title</h5>
                                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                                <a href="#" class="btn btn-primary">Go somewhere</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="text-center">
                                                        <div class="card" style="width: 15rem;">
                                                            <img class="card-img-top" src="..." alt="Card image cap">
                                                            <div class="card-body">
                                                                <h5 class="card-title">Card title</h5>
                                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                                <a href="#" class="btn btn-primary">Go somewhere</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

<!--                                                            <div class="modal fade" id="${o.serviceID}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ngưng dịch vụ ${o.serviceName}</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    Bạn có chắc chắn là muốn khóa dịch vụ này chứ ?
                </div>
                <div class="modal-footer" style="display: flex; justify-content: space-between">
                    <button type="button" class="btn btn-outline-danger" data-bs-dismiss="modal"><a>Không</a></button>
                    <button type="button" class="btn btn-outline-primary"><a href="ServicesManagementController?action=Khóa&serviceID=${o.serviceID}">
                            Có
                        </a></button>
                </div>
            </div>
        </div>
    </div>-->



                </div>
            </div>
        </div>

        <script src="css/assets/js/jquery-3.6.0.min.js"></script>

        <script src="css/assets/js/bootstrap.bundle.min.js"></script>

        <script src="css/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

        <script src="css/assets/js/script.js"></script>

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