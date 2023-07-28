<%-- Import the necessary taglibs --%>
<%@page import="DTO.AccountDTO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ page import="DAO.BlogDAO" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0" />
        <title>V-HomeClean - Quản lý Blog</title>

        <link
            rel="shortcut icon"
            type="image/x-icon"
            href="css/assets/img/icon.png"
            />

        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png" />

        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" href="css/assets/css/bootstrap.min.css" />

        <link rel="stylesheet" href="css/assets/css/font-awesome.min.css" />

        <link rel="stylesheet" href="css/assets/css/feathericon.min.css" />

        <link rel="stylesheet" href="css/assets/plugins/morris/morris.css" />

        <link rel="stylesheet" href="css/assets/css/style.css" />
    </head>
    <body>
        <%
            AccountDTO user = (AccountDTO) session.getAttribute("acc");
            if (user == null || user.getRoleID() != 3) {
                response.sendRedirect("login.jsp");
            }
        %>
        <div class="main-wrapper">
            <jsp:include page="header.jsp" />
            <jsp:include page="sidebar.jsp" />

            <div class="page-wrapper">
                <div class="content container-fluid">
                    <div class="page-header">
                        <div class="row">
                            <div class="col-sm-12">
                                <h3 class="page-title">Danh Sách Blog</h3>
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
                                    <h4 class="card-title">Số Lượng Bài Viết: ${totalBlogs}</h4>
                                    <p class="card-text">Đây là bảng thể hiện danh sách những bài viết của Website</p>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive custom-table-responsive">
                                        <table id="example_table" class="table table-center tab-content table-bordered">
                                            <thead>
                                                <tr>
                                                    <th class="text-center">Hình Ảnh</th>
                                                    <th class="text-center">Tên</th>
                                                    <th class="text-center">Thể loại</th>
                                                    <th class="text-center">Chi tiết</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${Bloglist}" var="blog" varStatus="status">
                                                    <tr>
                                                        <td>
                                                            <h2 class="table-avatar">
                                                                <a 
                                                                    href="#"
                                                                    class="avatar avatar-xxl me-2"
                                                                    ><img
                                                                        class="avatar rounded-circle"
                                                                        src="${blog.image}"
                                                                        alt="User Image"
                                                                        /></a>
                                                                <a href="#"
                                                                   ></a
                                                                >
                                                            </h2>
                                                        </td>
                                                        <td class="text-center">${blog.title}</td>
                                                        <td class="text-center">${blog.subTitle}</td>
                                                        <td class="text-center">
                                                            <div style="display: flex; justify-content: space-around; align-content: center;">
                                                                <div class="actions">
                                                                    <button type="button" class="btn btn-outline-info" data-bs-toggle="modal" data-bs-target="#a${blog.blogID}">
                                                                        <i class="fe fe-eye"></i>
                                                                    </button>
                                                                </div>
<!--                                                                <div class="text-end text-center">
                                                                    <button type="button" class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#b${blog.blogID}">
                                                                        <i class="fe fe-lock"></i>
                                                                    </button>
                                                                </div>-->

                                                                <div class="modal fade" id="b${blog.blogID}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                                    <div class="modal-dialog">
                                                                        <div class="modal-content">
                                                                            <div class="modal-header">
                                                                                <h6 class="modal-title" id="exampleModalLabel">Ngưng xuất hiện bài viết <strong>${blog.title}</strong></h6>
                                                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                            </div>
                                                                            <div class="modal-body">
                                                                                Bạn có chắc chắn là muốn khóa bài viết này chứ ?
                                                                            </div>
                                                                            <div class="modal-footer" style="display: flex; justify-content: space-between">
                                                                                <button type="button" class="btn btn-outline-danger" data-bs-dismiss="modal"><a>Không</a></button>
                                                                                <button type="button" class="btn btn-outline-primary"><a href="ServicesManagementController?action=Khóa&serviceID=${o.serviceID}">
                                                                                        Có
                                                                                    </a></button>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div id="a${blog.blogID}" class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                                    <div class="modal-dialog modal-lg">
                                                                        <div class="modal-content">
                                                                            <div class="p-3">
                                                                                <h2 class="mt-3 mb-4"><a style="color: rgb(37, 150, 190); font-size: 40px; font-weight: bold;" href="#">${blog.title}</a></h2>
                                                                                <img style="margin-left: 43px; width: 80%; height: auto; max-height: 650px; border-radius: 10px; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); text-align: center" class="img-single-blog" src="${blog.image}" alt="" >
                                                                                <p class="lead mb-4 font-weight-normal text-black">${blog.content}</p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
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
        <script src="css/assets/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="css/assets/plugins/datatables/datatables.min.js"></script>
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
