<%-- 
    Document   : 404
    Created on : May 20, 2023, 9:49:33 PM
    Author     : Trung Kien
--%>

<%@page import="java.util.List"%>
<%@page import="DTO.BookingDTO"%>
<%@page import="DTO.AccountDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>V-HomeClean - Thông Tin Tài Khoản</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@500&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">
        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!--                <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">         -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

        <link rel="stylesheet" type="text/css" href="css/ProfileStyle.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <!--        <link href="lib/animate/animate.min.css" rel="stylesheet">
                <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">-->



    </head>

    <body>
        <%
            AccountDTO user = (AccountDTO) session.getAttribute("acc");
            if (user == null) {
                response.sendRedirect("login.jsp");
            }
        %>
        <jsp:include page="navigation.jsp"></jsp:include>
            <section class=" my-5">
                <div class="container-fluid">
                    <div class="bg-white shadow rounded-lg d-block d-sm-flex w-full m-5">
                        <div class="profile-tab-nav border-right">
                            <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">  
                                <a class="nav-link active" id="security-tab" data-toggle="pill" href="#task" role="tab" aria-controls="security" aria-selected="true">
                                    <i class="fa fa-user text-center mr-1"></i> 
                                    Công việc
                                </a>
                                <a class="nav-link" id="notification-tab" data-toggle="pill" href="#notification" role="tab" aria-controls="notification" aria-selected="false">
                                    <i class="fa fa-bell text-center mr-1"></i> 
                                    Thông Báo
                                </a>
                            </div>
                        </div>
                        <div class="tab-content p-4 p-md-5" id="v-pills-tabContent">




                            <!-- đay là tab thông tin đơn hàng   -->
                            <div class="tab-pane fade show active" id="task" role="tabpanel" aria-labelledby="security-tab">
                                <h3 class="mb-4">Danh sách</h3>
                                <div class="row">
                                    <table style="border: #004085 solid medium" id="example_table1" class="table table-hover text-center table-success">
                                        <thead>
                                            <tr>
                                                <th class="text-center">Tên khách hàng</th>
                                                <th class="text-center">Dịch vụ</th>
                                                <th class="text-center">Mã phòng</th>
                                                <th class="text-center">Khu vực</th>
                                                <th class="text-center">Ngày tháng</th>
                                                <th class="text-center">Tình Trạng</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="booking" items="${TaskList}">
                                            <c:set var="addressParts" value="${fn:split(booking.bookingAddress, '||')}"/>
                                            <tr>

                                                <c:forEach items="${allAccounts}" var="o">
                                                    <c:if test="${booking.accountID == o.accountID}">
                                                        <c:set var="customerName" value="${o.fullName}" />
                                                        <c:set var="customerAge" value="${o.age}" />
                                                        <c:set var="customerEmail" value="${o.email}" />
                                                        <c:set var="customerPhone" value="${o.phone}" />
                                                        <c:set var="customerImage" value="${o.image}" />
                                                    </c:if>
                                                </c:forEach>
                                                <td class="text-center">${customerName}</td>
                                                <td class="text-center">${booking.serviceName}</td>
                                                <td class="text-center">${addressParts[0]}</td>
                                                <td class="text-center">${addressParts[1]}</td>
                                                <td class="text-center">${fn:substring(booking.bookingDate, 0, 10)}</td>
<!--                                                <td><fmt:formatNumber value="${booking.totalPrice}" pattern="###,### VND"/></td>-->
                                                <td class="text-center">
                                                    <c:if test="${booking.bookingStatus eq 'Xác nhận'}">
                                                        <button type="button" class="btn btn-outline-info" data-toggle="modal" data-target="#b${booking.bookingID}">
                                                            Xác nhận
                                                        </button>
                                                    </c:if>
                                                    <c:if test="${booking.bookingStatus eq 'Đang hoạt động'}">
                                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#b${booking.bookingID}">
                                                            Đang thực hiện
                                                        </button>
                                                    </c:if>
                                                    <c:if test="${booking.bookingStatus eq 'Hoàn tất'}">
                                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#b${booking.bookingID}">
                                                            Hoàn thành
                                                        </button>
                                                    </c:if>
                                                    <!-- Modal -->
                                                    <div class="modal fade" id="b${booking.bookingID}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                                        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title" id="exampleModalLongTitle">Chi tiết đơn của khách hàng</h5>
                                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                        <span aria-hidden="true">&times;</span>
                                                                    </button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <div class="container-fluid">
                                                                        <div class="row">
                                                                            <div class="col-md-6">
                                                                                Thông tin khách hàng
                                                                                <div class="p-3 text-center">
                                                                                    <div class=" avatar img-circle">
                                                                                        <img id="profileImage" src="${customerImage}" alt="Image" class="shadow">
                                                                                    </div>
                                                                                    <h4 class="text-center text-success">${customerName}</h4>
                                                                                    <h5 class="text-center text-primary">${customerAge} tuổi</h5>
                                                                                </div>
                                                                                <div class="card">
                                                                                    <div class="card-body">
                                                                                        Địa chỉ liên hệ
                                                                                        <form action="#">
                                                                                            <div class="form-group">
                                                                                                <label class="text-info">Số điện thoại</label>
                                                                                                <input readonly="" value="${customerPhone}" type="text" class="form-control text-center">
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <label class="text-info">Địa chỉ email</label>
                                                                                                <input readonly="" value="${customerEmail}" type="text" class="form-control text-center">
                                                                                            </div>
                                                                                        </form>
                                                                                    </div>
                                                                                </div>

                                                                            </div>
                                                                            <div class="col-md-6">
                                                                                Thông tin đơn
                                                                                <div class="card">
                                                                                    <div class="card-body">
                                                                                        <form action="#">
                                                                                            <div class="form-group">
                                                                                                <label class="text-info">Thời gian</label>
                                                                                                <input readonly="" value="${fn:substring(booking.bookingDate, 11, 16)}" type="text" class="form-control text-center">
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <label class="text-info">Ngày (yyyy-mm-dd)</label>
                                                                                                <input readonly="" value="${fn:substring(booking.bookingDate, 0, 10)}" type="text" class="form-control text-center">
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <c:set var="addressArray" value="${fn:split(booking.bookingAddress, '||')}" />
                                                                                                <label class="text-info">Số phòng</label>
                                                                                                <input readonly="" value="${fn:trim(addressArray[0])}" type="text" class="form-control text-center">
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <label class="text-info">Khu vực</label>
                                                                                                <input readonly="" value="${fn:trim(addressArray[1])}" type="text" class="form-control text-center">
                                                                                            </div>

                                                                                            <div class="form-group">
                                                                                                <label class="text-info">Định kì</label>
                                                                                                <input readonly="" value="${booking.typeOfService}" type="text" class="form-control text-center">
                                                                                            </div>

                                                                                            <div class="form-group">
                                                                                                <fmt:formatNumber var="formattedPrice" value="${booking.totalPrice}" pattern="###,###" />
                                                                                                <label class="text-info">Tổng chi phí</label>
                                                                                                <div style="display: flex" class=" text-center col-md-12">
                                                                                                    <input readonly=""
                                                                                                           required=""
                                                                                                           name="bookingPrice"
                                                                                                           type="text"
                                                                                                           class="form-control text-center"
                                                                                                           value="${formattedPrice}"
                                                                                                           />
                                                                                                    <span style="position: absolute;" class="btn btn-success">VND</span>     
                                                                                                </div>

                                                                                            </div>
                                                                                        </form>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>


                                                                    </div>
                                                                    <div style="display: flex; justify-content: space-between" class="modal-footer">
                                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                                                                        <button type="button" class="btn btn-primary">Thực hiện</button>
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



                        <div class="tab-pane fade" id="notification" role="tabpanel" aria-labelledby="notification-tab">
                            <h3 class="mb-4">Thông Tin</h3>
                            <div class="form-group">

                                <table style="border: #004085 solid medium" id="example_table3" class="table text-center table-info">
                                    <thead>
                                        <tr>
                                            <th>Nội Dung</th>
                                            <th>Tình trạng</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${listNoti}" var="o">
                                            <tr>
                                                <td>${o.detail}</td>
                                                <td>
                                                    ${o.status ? 'Đã đọc' : 'Chưa đọc'}
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
    </section>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <!-- Bootstrap js -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <!-- cho data table -->
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <!-- jQuery Datatable js -->
    <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
    <!-- Bootstrap Datatable js -->    
    <script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#example_table1').DataTable({
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

        $(document).ready(function () {
            $('#example_table3').DataTable({
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
    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>
