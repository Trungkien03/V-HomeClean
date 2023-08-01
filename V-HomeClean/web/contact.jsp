<%-- 
    Document   : contact
    Created on : May 20, 2023, 9:48:17 PM
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
        <title>V-HomeClean - Liên Hệ</title>
        <link
            rel="shortcut icon"
            type="image/x-icon"
            href="css/assets/img/icon.png"
            />
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
                    <h1 class="display-4 text-white animated slideInDown mb-4">Liên Hệ Với Chúng Tôi</h1>
                    <nav aria-label="breadcrumb animated slideInDown">
                        <ol class="breadcrumb justify-content-center mb-0">
                            <li class="breadcrumb-item"><a class="text-white" href="HomePageController">Trang Chủ</a></li>
                            <li class="breadcrumb-item text-primary active" aria-current="page">Liên Hệ</li>
                        </ol>
                    </nav>
                </div>
            </div>
            <!-- Page Header End -->


            <!-- Contact Start -->
            <div class="container-xxl py-5">
                <div class="container">
                    <div class="row g-5">
                    <c:forEach items="${ListA}" var="o">
                        <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                            <div class="row g-4 align-items-center">
                                <div class="col-sm-6">
                                    <img class="img-fluid" src="${o.image}" alt="">
                                </div>
                                <div class="col-sm-6">
                                    <h3 class="mb-0">${o.fullName}</h3>
                                    <p>Head of Project</p>
                                    <h6>Thông tin liên lạc:</h6>
                                    <p>${o.address}</p>
                                    <p class="mb-0">Call: ${o.phone}</p>
                                    <p class="mb-0">Email: ${o.email}</p>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="border-start border-5 border-primary ps-4 mb-5">
                            <h6 class="text-body text-uppercase mb-2">Liên hệ với chúng tôi</h6>
                            <h1 class="display-6 mb-0">Chúng tôi sẽ giải đáp mọi thắc mắc của quý khách</h1>
                        </div>
                    </div>
                    <div class="col-lg-12 wow fadeInUp" data-wow-delay="0.1s" style="min-height: 450px;">
                        <div class="position-relative h-100">
                            <iframe src="https://www.google.com/maps/d/embed?mid=18pnjUfXUkBkQKnjjQWpmcmOXfok&hl=en_US&ehbc=2E312F" width="1340" height="480"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Contact End -->


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