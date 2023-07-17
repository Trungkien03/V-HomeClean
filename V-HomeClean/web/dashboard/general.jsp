<%-- 
    Document   : general
    Created on : May 28, 2023, 11:32:17 PM
    Author     : Trung Kien
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

        <link rel="stylesheet" href="css/assets/css/style.css" />
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">
        <!--        <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">-->

        <!-- Liên kết đến thư viện jQuery -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

        <!-- Liên kết đến tệp JavaScript của DataTables -->
        <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
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
                                    <h3 class="page-title">Thông Tin Tài Khoản</h3>
                                    <ul class="breadcrumb">
                                        <li class="breadcrumb-item">
                                            <a href="UsersManagementController">Quản lý Tài Khoản</a>
                                        </li>
                                        <li class="breadcrumb-item active">Thông Tin Tài Khoản</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="row settings-tab">
                            <div class="col-md-4">
                                <div class="card">
                                    <div class="card-header all-center">
                                        <a href="#" class="avatar avatar-sm me-2"
                                           ><img
                                                class="avatar-img rounded-circle"
                                                src="${account.image}"
                                            alt="User Image"
                                            />
                                        <i class="fe fe-camera"></i>
                                    </a>
                                    <h6>${account.fullName}</h6>
                                    <p>
                                        <c:choose>
                                            <c:when test="${account.roleID == 1}">
                                                Admin
                                            </c:when>
                                            <c:when test="${account.roleID == 2}">
                                                Nhân viên sửa chữa điện
                                            </c:when>
                                            <c:when test="${account.roleID == 3}">
                                                Quản lý
                                            </c:when>
                                            <c:when test="${account.roleID == 4}">
                                                Khách hàng
                                            </c:when>
                                            <c:when test="${account.roleID == 5}">
                                                Nhân viên sửa chữa nước
                                            </c:when>
                                            <c:when test="${account.roleID == 6}">
                                                Nhân viên vệ sinh
                                            </c:when>
                                            <c:otherwise>
                                                Vai trò không xác định
                                            </c:otherwise>
                                        </c:choose>
                                    </p>
                                </div>
                                <div class="card-body p-0">
                                    <div class="profile-list">
                                        <a href="#"><i class="fe fe-user"></i></a>
                                        <a href="#">Tuổi</a>
                                        <a href="#" class="float-end"><h5>${account.age}</h5></a>
                                    </div>
                                    <div class="profile-list">
                                        <a href="#"><i class="fe fe-document"></i></a>
                                        <a href="#">Tổng Đơn</a>
                                        <a href="#" class="float-end"><h5>${totalUserBookings}</h5></a>
                                    </div>
                                    <div class="profile-list">
                                        <a href="#"><i class="fe fe-activity"></i></a>
                                        <a href="#">Tình Trạng</a>
                                        <c:choose>
                                            <c:when test="${account.status eq true}">
                                                <a href="#" class="float-end"><h5 style="color: #00bf6f;">Hoạt động</h5></a>
                                            </c:when>
                                            <c:when test="${account.status eq false}">
                                                <a href="#" class="float-end"><h5 style="color: #b21f2d;">Bị khóa</h5></a>
                                            </c:when>
                                        </c:choose>
                                    </div>
                                    <div class="profile-list">
                                        <a href="group-history.jsp"
                                           ><button
                                                type="button"
                                                class="btn btn-block btn-outline-light"
                                                >
                                                Xem ....
                                            </button></a
                                        >
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Thông Tin</h4>
                                    <h6>${message}</h6>
                                </div>
                                <div class="card-body">
                                    <ul class="nav nav-tabs nav-tabs-top nav-justified">
                                        <li class="nav-item">
                                            <a
                                                class="nav-link active"
                                                href="#top-justified-tab1"
                                                data-bs-toggle="tab"
                                                >Thông Tin</a
                                            >
                                        </li>
                                        <li class="nav-item">
                                            <a
                                                class="nav-link"
                                                href="#top-justified-tab2"
                                                data-bs-toggle="tab"
                                                >Đơn Dịch Vụ</a
                                            >
                                        </li>
                                        <li class="nav-item">
                                            <a
                                                class="nav-link"
                                                href="#top-justified-tab3"
                                                data-bs-toggle="tab"
                                                >Thông Báo</a
                                            >
                                        </li>
                                    </ul>
                                    <div class="tab-content">
                                        <div
                                            class="tab-pane show active"
                                            id="top-justified-tab1"
                                            >
                                            <form action="UserGeneralPageController" method="post">
                                                <div class="form-group">
                                                    <label class="text-primary font-weight-600">Họ và Tên</label>
                                                    <input
                                                        name="fullName"
                                                        type="text"
                                                        class="form-control"
                                                        value="${account.fullName}"
                                                        />
                                                </div>
                                                <div class="form-group">
                                                    <label class="text-primary font-weight-600">Địa chỉ</label>
                                                    <input
                                                        name="address"
                                                        type="text"
                                                        class="form-control"
                                                        value="${account.address}"
                                                        />
                                                </div>
                                                <div class="form-group">
                                                    <label class="text-primary font-weight-600">Email</label>
                                                    <input 
                                                        name="email"
                                                        type="email" 
                                                        class="form-control" 
                                                        value="${account.email}" 
                                                        />
                                                </div>
                                                <div class="form-group">
                                                    <label class="text-primary font-weight-600">Số Điện Thoại</label>
                                                    <input
                                                        name="phone"
                                                        type="text"
                                                        class="form-control"
                                                        value="${account.phone}"
                                                        />
                                                </div>
                                                <c:if test="${acc.roleID == 1}">
                                                    <div class="form-group">
                                                        <label class="text-primary font-weight-600">Chức vụ</label>
                                                        <select name="roleID" class="form-control">
                                                            <option value="1" <c:if test="${account.roleID == 1}">selected</c:if>>Admin</option>
                                                            <option value="2" <c:if test="${account.roleID == 2}">selected</c:if>>Nhân viên</option>
                                                            <option value="3" <c:if test="${account.roleID == 3}">selected</c:if>>Quản lý</option>
                                                            <option value="4" <c:if test="${account.roleID == 4}">selected</c:if>>Khách hàng</option>
                                                            </select>
                                                        </div>
                                                </c:if>
                                                <div class="text-end">
                                                    <input name="action" type="submit" value="Chỉnh Sửa" class="btn btn-primary" />
                                                </div>
                                            </form>
                                        </div>
                                        <div class="tab-pane" id="top-justified-tab2">
                                            <div class="card-body">
                                                <div class="table-responsive custom-table-responsive">                                          
                                                    <table style="border-width: medium" id="example_table" class="table table-center tab-content table-striped">
                                                        <thead>
                                                            <tr>
                                                                <th class="text-center">Dịch vụ</th>
                                                                <th class="text-center">Nhân viên</th>
                                                                <th class="text-center">Thông tin</th>
                                                                <th class="text-center">Tình Trạng</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach items="${listBookingAccount}" var="b">
                                                                <tr>
                                                                    <td class="text-center">
                                                                        ${b.serviceName}
                                                                    </td>
                                                                    <td class="text-center">
                                                                        <c:set var="staffName" value="Hiện chưa có" />
                                                                        <c:forEach items="${ListAllAccounts}" var="o">
                                                                            <c:if test="${o.accountID == b.staffID}">
                                                                                <c:set var="staffName" value="${o.fullName}" />
                                                                            </c:if>
                                                                        </c:forEach>
                                                                        ${staffName}
                                                                    </td>
                                                                    <td class="text-center">
                                                                        <div class="text-end text-center">
                                                                            <button type="button" class="btn btn-outline-info" data-bs-toggle="modal" data-bs-target="#booking${b.bookingID}">
                                                                                <i class="fe fe-eye"></i>
                                                                            </button>
                                                                        </div>
                                                                    </td>
                                                                    <td class="text-center">
                                                                        <c:if test="${b.bookingStatus eq 'Chờ xác nhận'}">
                                                                            <button class="btn btn-info">Chờ xác nhận</button>
                                                                        </c:if>
                                                                        <c:if test="${b.bookingStatus eq 'Xác nhận'}">
                                                                            <button class="btn btn-primary">Đã xác nhận</button>
                                                                        </c:if>
                                                                        <c:if test="${b.bookingStatus eq 'Đang thực hiện'}">
                                                                            <button class="btn btn-warning">Đang hoạt động</button>
                                                                        </c:if>
                                                                        <c:if test="${b.bookingStatus eq 'Hoàn thành'}">
                                                                            <button class="btn btn-success">Hoàn thành</button>
                                                                        </c:if>
                                                                        </td>


                                                                <div class="modal fade" id="booking${b.bookingID}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                                    <div class="modal-dialog modal-dialog-centered">
                                                                        <div class="modal-content">
                                                                            <div class="modal-header text-center">
                                                                                <h5 class="modal-title text-primary" id="exampleModalLabel">Thông tin chi tiết đơn</h5>
                                                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                            </div>
                                                                            <div class="modal-body">
                                                                                <div class="col-md-12">
                                                                                    <div class="card">
                                                                                        <div class="card-body">
                                                                                            <form action="#">
                                                                                                <div class="form-group">
                                                                                                    <label class="text-info">Thời gian</label>
                                                                                                    <input readonly="" value="${fn:substring(b.bookingDate, 11, 16)}" type="text" class="form-control">
                                                                                                </div>
                                                                                                <div class="form-group">
                                                                                                    <label class="text-info">Ngày (yyyy-mm-dd)</label>
                                                                                                    <input readonly="" value="${fn:substring(b.bookingDate, 0, 10)}" type="text" class="form-control">
                                                                                                </div>
                                                                                                <div class="form-group">
                                                                                                    <c:set var="addressArray" value="${fn:split(b.bookingAddress, '||')}" />
                                                                                                    <label class="text-info">Số phòng</label>
                                                                                                    <input readonly="" value="${fn:trim(addressArray[0])}" type="text" class="form-control">
                                                                                                </div>
                                                                                                <div class="form-group">
                                                                                                    <label class="text-info">Khu vực</label>
                                                                                                    <input readonly="" value="${fn:trim(addressArray[1])}" type="text" class="form-control">
                                                                                                </div>

                                                                                                <div class="form-group">
                                                                                                    <label class="text-info">Định kì</label>
                                                                                                    <input readonly="" value="${b.typeOfService}" type="text" class="form-control">
                                                                                                </div>

                                                                                                <div class="form-group">
                                                                                                    <fmt:formatNumber var="formattedPrice" value="${b.totalPrice}" pattern="###,###" />
                                                                                                    <label class="text-info">Tổng chi phí</label>
                                                                                                    <div style="display: flex" class="col-md-12">
                                                                                                        <input readonly=""
                                                                                                               required=""
                                                                                                               name="bookingPrice"
                                                                                                               type="text"
                                                                                                               class="form-control"
                                                                                                               value="${formattedPrice}"
                                                                                                               />
                                                                                                        <span class="btn btn-success">VND</span>     
                                                                                                    </div>

                                                                                                </div>
                                                                                            </form>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="modal-footer" style="display: flex; justify-content: space-between">
                                                                                <button type="button" class="btn btn-outline-danger" data-bs-dismiss="modal">Không</button>
                                                                                <button type="button" class="btn btn-outline-primary">
                                                                                    <a href="#">Có</a>
                                                                                </button>
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
                                        <div class="tab-pane" id="top-justified-tab3">
                                            Tab content 3
                                        </div>
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

