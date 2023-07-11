<%-- 
    Document   : 404
    Created on : May 20, 2023, 9:49:33 PM
    Author     : Trung Kien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>V-HomeClean - Home Clean Website Services</title>
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
            <!-- 404 Start -->


            <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
                <div class="container text-center">
                    <div class="row justify-content-center">
                        <div class="col-md-6">
                            <i class="bi bi-check-circle-fill display-1 text-primary"></i>
                            <h1 class="display-1">Congratulations</h1>
                            <h1 class="mb-4">Đơn của bạn đã được xác nhận thành công</h1>
                            <p class="mb-4">Kiểm tra lại thông tin đơn hàng thông qua Thông Tin Tài Khoản của bạn</p>
                            <a class="btn btn-primary py-3 px-5" href="HomePageController">Về Lại Trang Chủ</a>
                        </div>
                        <div class="col-md-6">
                            <section style="background-color: #eee;">
                                <div class="container py-5">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <h1>Thông tin đơn của bạn</h1>
                                            <div class="card mb-4">
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col-md-3">
                                                            <p class="mb-0">Họ và Tên:</p>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <p class="text-muted mb-0">${acc.fullName}</p>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <p class="mb-0">Tên dịch vụ:</p>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <p class="text-muted mb-0">${serviceName}</p>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <p class="mb-0">Địa chỉ email:</p>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <p class="text-muted mb-0">${acc.email}</p>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <p class="mb-0">Số điện thoại:</p>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <p class="text-muted mb-0">${acc.phone}</p>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <p class="mb-0">Mã phòng:</p>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <p class="text-muted mb-0">${vinhomesID}</p>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <p class="mb-0">Khu vực:</p>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <p class="text-muted mb-0">${area}</p>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <p class="mb-0">Thời gian:</p>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <p class="text-muted mb-0">${bookingDate}</p>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <p class="mb-0">Giá ước lượng:</p>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <p class="text-muted mb-0">${totalPrice}</p>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <form action="ProfilePageController" method="post">
                                            <button class="btn btn-primary py-3 px-5" name="action" value="Kiểm tra">Kiểm tra đơn hàng của bạn</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </section>     
                    </div>
                </div>

            </div>
        </div>

        <!-- 404 End -->


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
