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
                                    <h3 class="page-title">Quản lý lịch hẹn</h3>
                                    <ul class="breadcrumb">
                                        <li class="breadcrumb-item">
                                            <a href="dashboard/index.jsp">Bảng Điều Khiển</a>
                                        </li>
                                        <li class="breadcrumb-item active">Quản lý lịch hẹn</li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h4 class="card-title">Số lượng lịch hẹn: ${totalActiveBookings}</h4>
                                    <p class="card-text">
                                        Đây là bảng thể hiện danh sách những lịch hẹn gần nhất của khách hàng
                                    </p>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive custom-table-responsive">                                          
                                        <table id="example_table" class="table table-center tab-content table-hover table-bordered ">
                                            <thead>
                                                <tr>
                                                    <th class="text-center">Tên khách hàng</th>
                                                    <th class="text-center">Tên dịch vụ</th>
                                                    <th class="text-center">Thời gian</th>
                                                    <th class="text-center">Tên nhân viên phụ trách</th>
                                                    <th class="text-center">Trạng thái</th>
                                                    <th class="text-center">Chi tiết lịch hẹn</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${bookingsList}" var="o">
                                                    <tr>
                                                        <c:forEach items="${AccountsList}" var="user">
                                                            <c:if test="${user.accountID eq o.accountID}">
                                                                <c:set var="accountName" value="${user.fullName}" />
                                                                <c:set var="accountImage" value="${user.image}" />
                                                            </c:if>
                                                        </c:forEach>
                                                        <td class="text-center">
                                                            <h2 class="table-avatar">
                                                                <a 
                                                                    href="#"
                                                                    class="avatar avatar-sm me-2"
                                                                    ><img
                                                                        class="avatar-img rounded-circle"
                                                                        src="${accountImage}"
                                                                        alt="User Image"
                                                                        /></a>
                                                                <a href="#"
                                                                   >${accountName}</a
                                                                >
                                                            </h2>
                                                        </td>
                                                        <td class="text-center">${o.serviceName}</td>

                                                        <c:set var="staffName" value="Chưa có nhân viên" /> <!-- Mặc định là "Chưa có nhân viên" -->
                                                        <c:set var="staffImage" value="img/user.jpg" />
                                                        <c:forEach items="${StaffList}" var="staff">
                                                            <c:if test="${staff.accountID eq o.staffID}">
                                                                <c:set var="staffName" value="${staff.fullName}" />
                                                                <c:if test="${staffName ne 'Chưa có nhân viên'}">
                                                                    <c:set var="staffImage" value="${staff.image}" />
                                                                </c:if>

                                                            </c:if>
                                                        </c:forEach>
                                                        <td class="text-center">${o.bookingDate}</td>
                                                        <td class="text-center">
                                                            <h2 class="table-avatar">
                                                                <a 
                                                                    href="#"
                                                                    class="avatar avatar-sm me-2"
                                                                    ><img
                                                                        class="avatar-img rounded-circle"
                                                                        src="${staffImage}"
                                                                        alt="User Image"
                                                                        /></a>
                                                                <a href="#"
                                                                   >${staffName}</a
                                                                >
                                                            </h2>
                                                        </td>
                                                        <td class="text-center">${o.bookingStatus}</td>
                                                        <td class="text-center">
                                                            <div class="actions">
                                                                <a
                                                                    href="BookingGeneralController?bookingID=${o.bookingID}"
                                                                    class="btn btn-large bg-info-light "
                                                                    title="View Document"
                                                                    >
                                                                    <i class="fe fe-eye"></i>
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
                    },
                    columnDefs: [
                        {"orderable": false, "targets": 0} // Tắt tính năng tự động sắp xếp cho cột đầu tiên
                    ],
                    order: [] // Không sắp xếp ban đầu
                });
            });

        </script>
    </body>
</html>

