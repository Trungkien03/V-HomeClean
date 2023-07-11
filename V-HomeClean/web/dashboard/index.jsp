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
        <!--        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
                 Bootstrap DataTable CSS -->
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" href="css/assets/css/bootstrap.min.css" />

        <link rel="stylesheet" href="css/assets/css/font-awesome.min.css" />

        <link rel="stylesheet" href="css/assets/css/feathericon.min.css" />

        <link rel="stylesheet" href="css/assets/plugins/morris/morris.css" />

        <link rel="stylesheet" href="css/assets/css/style.css" />
        <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>

        <!-- Liên kết đến tệp CSS của ApexCharts (tuỳ chọn) -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/apexcharts@latest/dist/apexcharts.min.css">
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
                                                <a style="font-size: 15px; color: #00d747" href="#" class="count-title">Người Dùng</a>
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
                                            <a style="font-size: 15px; color: #007bff" href="#" class="count-title">Tổng số dịch vụ</a>
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
                                            <a style="font-size: 15px; color: #f62d51" href="#" class="count-title">Tổng số đơn đã đặt</a>
                                            <a href="#" class="count">${totalBookings}</a>
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
                                            <a style="font-size: 15px; color: #FDA12B" href="#" class="count-title">Tổng số Blog</a>
                                            <a href="#" class="count">${totalBlogs}</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="container">
                        <div class="row">
                            <div class="col-md-4 mt-5">
                                <div class="card">
                                    <div class="card-header text-center">
                                        <h4>Số lượng đặt lịch trong tuần</h4>
                                    </div>
                                    <div id="chart"></div>
                                </div>
                            </div>
                            <div class="col-md-8 mt-5">
                                <canvas id="myChart"></canvas>
                            </div>
                        </div>
                    </div>


                    <div class="row">

                        <div class="col-md-12 d-flex mt-5">
                            <div class="card card-table flex-fill" style="border: #007bff solid medium">
                                <div class="card-header text-center">
                                    <h4 class="card-title float-start font-weight-600">Danh Sách Người Dùng</h4>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive p-3">
                                        <table id="example_table" class="table table-responsive table-bordered text-center table-hover">
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
                                                            </h2>
                                                        </td>
                                                        </td>
                                                        <td><a href="#">${o.fullName}</a></td>
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





                        <div class="col-md-12 d-flex mt-5">
                            <div class="card card-table flex-fill" style="border: #007bff solid medium">
                                <div class="card-header">
                                    <h4 class="card-title float-start font-weight-600">Danh Sách Đơn</h4>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive custom-table-responsive">                                          
                                        <table id="example_table1" class="table table-center tab-content table-hover table-bordered ">
                                            <thead>
                                                <tr>
                                                    <th class="text-center">Tên khách hàng</th>
                                                    <th class="text-center">Tên dịch vụ</th>
                                                    <th class="text-center">Thời gian</th>
                                                    <th class="text-center">Trạng thái</th>
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
                                                        <td class="text-center">${o.bookingDate}</td>
                                                        <td class="text-center">${o.bookingStatus}</td>

                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div id='calendar'></div>
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

        <script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.min.js'></script>
        <script>

            document.addEventListener('DOMContentLoaded', function () {
                var calendarEl = document.getElementById('calendar');
                var calendar = new FullCalendar.Calendar(calendarEl, {
                    initialView: 'dayGridMonth'
                });
                calendar.render();
            });

        </script>

        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <script>
            // Lấy tham chiếu đến thẻ canvas
            var ctx = document.getElementById('myChart').getContext('2d');
            var totalBlogs = ${totalBlogs};
            // Tạo biểu đồ
            var myChart = new Chart(ctx, {
                type: 'bar', // Loại biểu đồ, ví dụ: bar, line, pie, v.v.
                data: {
                    labels: ['Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4', 'Tháng 5', 'Tháng 6', 'Tháng 7', 'Tháng 8', 'Tháng 9', 'Tháng 10', 'Tháng 11', 'Tháng 12'], // Nhãn trục x
                    datasets: [{
                            label: 'Thông Số Trong Năm', // Nhãn của dữ liệu
                            data: [12, 19, totalBlogs, ${TotalServices}, 2, 3, 5, 6, 1, 2, 6, 8], // Dữ liệu
                            backgroundColor: 'rgba(0, 123, 255, 0.6)' // Màu nền của cột
                        }]
                },
                options: {
                    responsive: true, // Biểu đồ tự điều chỉnh kích thước
                    scales: {
                        y: {
                            beginAtZero: true // Bắt đầu trục y từ 0
                        }
                    }
                }
            });
        </script>


        <script>
            var options = {
                series: [${totalBlogs}, 55, 13, 43, 22, 12, 23],
                chart: {
                    width: 380,
                    type: 'pie',
                },
                labels: ['Thứ 2', 'Thứ 3', 'Thứ 4', 'Thứ 5', 'Thứ 6', 'Thứ 7', 'Chủ Nhật'],
                responsive: [{
                        breakpoint: 480,
                        options: {
                            chart: {
                                width: 200
                            },
                            legend: {
                                position: 'bottom'
                            }
                        }
                    }]
            };

            var chart = new ApexCharts(document.querySelector("#chart"), options);
            chart.render();

        </script>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
            $(document).ready(function () {
                // Hàm để gửi yêu cầu Ajax để cập nhật session
                function updateSession() {
                    $.ajax({
                        url: "DashboardController", // Đường dẫn đến servlet xử lý yêu cầu Ajax
                        type: "POST",
                        success: function (data) {
                            console.log("Session updated successfully.");
                        },
                        error: function (xhr, textStatus, errorThrown) {
                            console.log("Error updating session:", errorThrown);
                        }
                    });
                }

                // Khi trang được tải, gọi hàm cập nhật session
                updateSession();

                // Thiết lập định thời để cập nhật session sau mỗi 5 giây
                setInterval(updateSession, 5000);
            });
        </script>
    </body>
</html>

