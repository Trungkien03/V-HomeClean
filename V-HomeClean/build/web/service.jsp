<%-- 
    Document   : service
    Created on : May 20, 2023, 9:44:40 PM
    Author     : Trung Kien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>V-HomeClean - Dịch Vụ</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <!--        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Poppins:wght@600;700&display=swap" rel="stylesheet"> -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@500&display=swap" rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="navigation.jsp"></jsp:include>


            <!-- Page Header Start -->
            <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
                <div class="container text-center py-5">
                    <h1 class="display-4 text-white animated slideInDown mb-4">Dịch Vụ Của Chúng Tôi</h1>
                    <nav aria-label="breadcrumb animated slideInDown">
                        <ol class="breadcrumb justify-content-center mb-0">
                            <li class="breadcrumb-item"><a class="text-white" href="HomePageController">Trang chủ</a></li>
                            <li class="breadcrumb-item text-primary active" aria-current="page">Dịch Vụ Của Chúng Tôi</li>
                        </ol>
                    </nav>
                </div>
            </div>
            <!-- Page Header End -->


            <!-- Service Start -->
            <div class="container-xxl py-5">
                <div class="container">
                    <div class="row g-5 align-items-end mb-5">
                        <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                            <div class="border-start border-5 border-primary ps-4">
                                <h6 class="text-body text-uppercase mb-2">Dịch Vụ Của Chúng Tôi</h6>
                                <h1 class="display-6 mb-0">Nâng cấp không gian sống của bạn!</h1>
                            </div>
                        </div>
                    </div>

                    <style>
                        /* Thêm CSS để tạo navbar */
                        .navbar {
                            background-color: #007bff;
                            overflow: hidden;
                            margin-bottom: 25px;
                         
                        }

                        .navbar ul {
                            list-style-type: none;
                            
                            padding: 0;
                            
                        }

                        .navbar li {
                            float: left;
                        }

                        .navbar li a {
                            display: block;
                            color: white;
                            text-align: center;
                            padding: 4px 12px;
                            text-decoration: none;
                        }

                        /* Thêm màu nền khi di chuột vào mục */
                        .navbar li a:hover {
                            margin-left: 11px;
                            background-color: #0a53be;
                        }
                    </style>
                    </head>
                    <body>

                        <!-- Thanh navbar -->
                        <div class="navbar">
                            <ul>
                            <c:forEach items="${listCS}" var="o">
                                <li><a href="MainController?action=Distinct&cateID=${o.cateID}">${o.cateName}</a></li>
                                </c:forEach>
                        </ul>
                    </div>

                    <div class="row g-4 justify-content-center">
                        <c:forEach items="${listS}" var="o">

                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                                <input name="serviceID" value="${o.serviceID}" type="hidden">
                                <div class="service-item bg-light overflow-hidden h-100">
                                    <img class="img-fluid" src="${o.image}" alt="">
                                    <div class="service-text position-relative text-center h-100 p-4">
                                        <h5 class="mb-3">${o.serviceName}</h5>
                                        <p>Giá ước lượng chỉ từ <fmt:formatNumber value="${o.price}" pattern="###,### VND"/></p>
                                        <a class="small" href="GetAppointmentController?serviceID=${o.serviceID}">Đặt Lịch Ngay<i class="fa fa-arrow-right ms-3"></i></a>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>



                    </div>


                    <style>
                        .paging{
                            text-align: center;
                            margin-top: 5%;
                            margin-left: 45%;
                        }
                    </style>
                    <div class="paging" >
                        <nav aria-label="Page navigation example">
                            <ul class="pagination">
                                <li class="page-item">
                                    <c:if test="${tag > 1}">
                                        <a class="page-link" href="ServicePageController?index=${tag - 1}" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </c:if>
                                    </a>
                                </li>

                                <c:forEach begin="1" end ="${endP}" var="i">
                                    <li class="page-item"><a class="page-link" href="ServicePageController?index=${i}">${i}</a></li>
                                    </c:forEach>
                                <li class="page-item">
                                    <c:if test="${tag < endP}">
                                        <a class="page-link" href="ServicePageController?index=${tag + 1}" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </c:if>
                                </li>
                            </ul>
                        </nav>
                    </div>

            </div>
        </div>


        <!-- Service End -->


        <!-- Appointment Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-5">
                    <div class="col-lg-5 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="border-start border-5 border-primary ps-4 mb-5">
                            <h6 class="text-body text-uppercase mb-2">Hỗ Trợ</h6>
                            <h1 class="display-6 mb-0">Công ty cung cấp dịch vụ và bảo trì chung cư</h1>
                        </div>
                        <p class="mb-0">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo justo magna dolore erat amet</p>
                    </div>
                    <div class="col-lg-7 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <form>
                            <div class="row g-3">
                                <div class="col-sm-6">
                                    <div class="form-floating">
                                        <input type="text" class="form-control bg-light border-0" id="gname" placeholder="Gurdian Name">
                                        <label for="gname">Tên của bạn</label>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-floating">
                                        <input type="email" class="form-control bg-light border-0" id="gmail" placeholder="Gurdian Email">
                                        <label for="gmail">Địa chỉ email</label>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-floating">
                                        <input type="text" class="form-control bg-light border-0" id="cname" placeholder="Child Name">
                                        <label for="cname">Số điện thoại</label>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-floating">
                                        <input type="text" class="form-control bg-light border-0" id="cage" placeholder="Child Age">
                                        <label for="cage">Chủ đề</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <textarea class="form-control bg-light border-0" placeholder="Leave a message here" id="message" style="height: 100px"></textarea>
                                        <label for="message">Điền thắc mắc của bạn ở đây</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <button class="btn btn-primary w-100 py-3" type="submit">Gửi câu hỏi</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Appointment End -->


        <!-- Footer Start -->
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </body>

</html>
