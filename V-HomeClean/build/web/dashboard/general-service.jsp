<%-- 
    Document   : general
    Created on : May 28, 2023, 11:32:17 PM
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

        <link rel="stylesheet" href="css/assets/css/style.css" />

        <!--        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">-->

        Thư viện JavaScript Bootstrap (bao gồm jQuery) 
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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
                                    <h3 class="page-title">Thông Tin Dịch Vụ</h3>


                                    <!-- Button trigger modal -->
                                    <button style="display: none;" type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter" id="openModalBtn">
                                        Launch demo modal
                                    </button>

                                    <!-- Modal -->
                                    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-centered" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLongTitle">Thông báo</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body text-center">
                                                    <div class="col-md-12">
                                                        <i class="fe fe-check-circle text-primary display-1" style="font-size: 80px;"></i>
                                                        <h1>Congratulations</h1>
                                                        <p class="mb-4">Tạo mới dịch vụ thành công</p>
                                                    </div>
                                                </div>
                                                <div class="modal-footer flex">
                                                    <button type="button" class="btn btn-outline-primary" data-dismiss="modal">Đóng</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                    <ul class="breadcrumb">
                                        <li class="breadcrumb-item">
                                            <a href="ServicesManagementController">Quản lý Dịch Vụ</a>
                                        </li>
                                        <li class="breadcrumb-item active">Thông Tin Dịch Vụ</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="row settings-tab">
                            <div class="col-md-5">
                                <div class="card">
                                    <div class="card-header all-center">
                                        <a href="#" class="avatar avatar-xxl" style="width: 400px; height: 300px;"
                                           ><img
                                                class="avatar-img rounded-circle"
                                                src="${service.image}"
                                            alt="User Image"
                                            />
                                    </a>
                                    <h6></h6>
                                    <p>

                                    </p>
                                </div>
                                <div class="card-body p-0">

                                    <div class="profile-list">
                                        <a href="#"><i class="fe fe-document"></i></a>
                                        <a href="#">Tổng Đơn</a>
                                        <a href="#" class="float-end"><h5>403</h5></a>
                                    </div>
                                    <div class="profile-list">
                                        <a href="#"><i class="fe fe-activity"></i></a>
                                        <a href="#">Tình Trạng</a>
                                        <c:choose>
                                            <c:when test="${service.status eq true}">
                                                <a href="#" class="float-end"><h5 style="color: #00bf6f;">Hoạt động</h5></a>
                                            </c:when>
                                            <c:when test="${service.status eq false}">
                                                <a href="#" class="float-end"><h5 style="color: #b21f2d;">Bị khóa</h5></a>
                                            </c:when>
                                        </c:choose>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-7">
                            <div class="card">
                                <div class="card-header text-center">
                                    <h4 class="card-title text-primary">Thông Tin</h4>
                                    <h6 class="text-success">${message}</h6>
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
                                                >Mô Tả Dịch Vụ</a
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
                                            <form action="ServiceGeneralController" method="post" enctype="multipart/form-data">
                                                <input type="hidden" name="serviceID" value="${service.serviceID}">
                                                <div class="form-group" style="display:flex; justify-content: center; align-items: center">
                                                    <label class="text-info font-weight-600 w-25">Tên dịch vụ:</label>
                                                    <input
                                                        required=""
                                                        name="serviceName"
                                                        type="text"
                                                        class="form-control"
                                                        value="${service.serviceName}"
                                                        />
                                                </div>
                                                <div class="form-group" style="display:flex; justify-content: center; align-items: center">
                                                    <label class="text-info font-weight-600 w-25">Thể loại dịch vụ:</label>
                                                    <select required name="serviceType" class="form-control form-select">
                                                        <option value="2" ${service.cateServiceName == 'Dịch vụ sửa chữa' ? 'selected' : ''}>Dịch vụ sửa chữa</option>
                                                        <option value="1" ${service.cateServiceName == 'Dịch vụ vệ sinh' ? 'selected' : ''}>Dịch vụ vệ sinh</option>
                                                    </select>
                                                </div>
                                                <div class="form-group" style="display:flex; align-items: center;">
                                                    <label class="text-info font-weight-600 w-25">Giá dịch vụ</label>
                                                    <div class="w-100" style="display: flex; justify-content: center; align-items: center;">
                                                        <fmt:formatNumber var="formattedSalary" value="${service.price}" pattern="###,###" />

                                                        <input
                                                            required=""
                                                            name="price"
                                                            type="text"
                                                            class="form-control"
                                                            value="${formattedSalary}"
                                                            />
                                                        <span class="btn btn-success">VND</span>

                                                    </div>

                                                </div>

                                                <div class="form-group" style="display:flex; justify-content: center; align-items: center">
                                                    <label class="text-info font-weight-600 w-25">Cập nhật hình ảnh</label>
                                                    <input
                                                        name="image"
                                                        type="file"
                                                        class="form-control"
                                                        />
                                                </div>

                                                <div class="text-end text-center">
                                                    <input name="action" type="submit" value="Chỉnh Sửa" class="btn btn-primary" />
                                                </div>
                                            </form>
                                        </div>
                                        <div class="tab-pane" id="top-justified-tab2">
                                            <div class="form-group" style="display:flex; justify-content: center; align-items: center">
                                                <label class="text-info font-weight-600 w-25">Chi tiết:</label>
                                                <textarea class="form-control" name="serviceDetail" rows="10" cols="50">${service.serviceDetail}</textarea>
                                            </div>
                                            <div class="text-end text-center">
                                                <input name="action" type="submit" value="Chỉnh Sửa" class="btn btn-primary" />
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

        <script src="css/assets/js/script.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
            $(document).ready(function () {
                // Kiểm tra khi người dùng nhập vào input
                $("input[name='price']").on("input", function () {
                    var value = $(this).val();

                    // Kiểm tra nếu giá trị không phải là số
                    if (!$.isNumeric(value)) {
                        // Hiển thị thông báo cảnh báo
                        $(this).next(".error-message").text("Vui lòng chỉ nhập số.");
                    } else {
                        // Xóa thông báo cảnh báo nếu giá trị hợp lệ
                        $(this).next(".error-message").text("");
                    }
                });
            });
        </script>

        <script>
            window.onload = function () {
                var isModalDisplayed = false;
                var status = "${status}";

                if (status === "create-service" && !isModalDisplayed) {
                    var openModalBtn = document.getElementById('openModalBtn');
                    openModalBtn.style.display = "block";
                    openModalBtn.click();
                    isModalDisplayed = true;
                }
            };
        </script>

    </body>
</html>

