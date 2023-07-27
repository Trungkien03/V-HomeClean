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
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0" />

        <title>V-HomeClean - Dashboard</title>

        <link rel="shortcut icon" type="image/x-icon" href="css/assets/img/icon.png" />
        <link rel="stylesheet" href="css/assets/css/bootstrap.min.css">

        <!-- Add DataTables CSS -->
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
                        <div class="col-md-8 d-flex mt-5">
                            <div class="card card-table flex-fill" style="border: #007bff solid medium">
                                <div class="card-header text-center">
                                    <h4 class="card-title float-start font-weight-600">Danh Sách Đơn Trong Ngày Hôm Nay</h4>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive p-3">
                                        <table id="example_table" class="table table-responsive table-bordered text-center table-hover">
                                            <thead>
                                                <tr>
                                                    <th class="text-center">Khách hàng</th>
                                                    <th class="text-center">Tên dịch vụ</th>
                                                    <th class="text-center">Trạng thái</th>
                                                    <th class="text-center">Chi tiết lịch hẹn</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${bookingsListToday}" var="o">
                                                    <tr>
                                                        <c:forEach items="${AccountsList}" var="user">
                                                            <c:if test="${user.accountID eq o.accountID}">
                                                                <c:set var="accountName" value="${user.fullName}" />
                                                                <c:set var="accountImage" value="${user.image}" />
                                                            </c:if>
                                                        </c:forEach>
                                                        <td class="text-center">
                                                            <h2 class="table-avatar">
                                                                <a href="#" class="avatar avatar-sm me-2">
                                                                    <img class="avatar-img rounded-circle" src="${accountImage}" alt="User Image" />
                                                                </a>
                                                            </h2>
                                                        </td>
                                                        <td class="text-center">${o.serviceName}</td>
                                                        <td class="text-center">${o.bookingStatus}</td>
                                                        <td class="text-center">
                                                            <div class="actions">
                                                                <a href="BookingGeneralController?bookingID=${o.bookingID}" class="btn btn-large bg-info-light" title="View Document">
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
        <script src="css/assets/plugins/datatables/dataTables.bootstrap4.min.js"></script>
        <script src="css/assets/js/script.js"></script>


        <!-- Include jQuery -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

        <!-- Include DataTables JS -->
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
                    },
                    columnDefs: [
                        {"orderable": false, "targets": 0} // Tắt tính năng tự động sắp xếp cho cột đầu tiên
                    ],
                    order: [] // Không sắp xếp ban đầu
                });
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
                            data: ${listTotalByMonths}, // Dữ liệu
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
                series: ${listTotalByWeek},
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
    </body>
</html>
