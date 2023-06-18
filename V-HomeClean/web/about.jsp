<%-- 
    Document   : about
    Created on : May 20, 2023, 9:48:39 PM
    Author     : Trung Kien
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>V-HomeClean - Giới Thiệu</title>
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
                <h1 class="display-4 text-white animated slideInDown mb-4">Giới Thiệu</h1>
                <nav aria-label="breadcrumb animated slideInDown">
                    <ol class="breadcrumb justify-content-center mb-0">
                        <li class="breadcrumb-item"><a class="text-white" href="HomePageController">Trang Chủ</a></li>
                        <li class="breadcrumb-item text-primary active" aria-current="page">Giới Thiệu</li>
                    </ol>
                </nav>
            </div>
        </div>
        <!-- Page Header End -->


        <!-- About Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-5">
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="position-relative overflow-hidden ps-5 pt-5 h-100" style="min-height: 400px;">
                            <img class="position-absolute w-100 h-100" src="img/about.jpg" alt="" style="object-fit: cover;">
                            <div class="position-absolute top-0 start-0 bg-white pe-3 pb-3" style="width: 200px; height: 200px;">
                                <div class="d-flex flex-column justify-content-center text-center bg-primary h-100 p-3">
                                    <h1 class="text-white">25</h1>
                                    <h2 class="text-white">Years</h2>
                                    <h5 class="text-white mb-0">Experience</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="h-100">
                            <div class="border-start border-5 border-primary ps-4 mb-5">
                                <h6 class="text-body text-uppercase mb-2">Giới thiệu</h6>
                                <h1 class="display-6 mb-0">Dịch vụ chuyên về dọn dẹp và vệ sinh căn hộ!</h1>
                            </div>
                            <p>là đơn vị dịch vụ dọn dẹp và vệ sinh căn hộ chuyên nghiệp. Chúng tôi sẽ đảm bảo rằng căn hộ của bạn luôn sạch sẽ, gọn gàng và thoải mái. 
                                Đội ngũ nhân viên giàu kinh nghiệm và tận tâm của chúng tôi sẽ làm sạch từ trần nhà, lau kính, vệ sinh lỗ thông hơi, gầm tủ và các góc khuất khác. Hãy để V-HomeClean mang đến cho bạn không gian sống tươi mới và thoáng đãng trong căn hộ của mình.</p>
                            <p class="mb-4">Một công ty đặc biệt cung cấp các dịch vụ dọn dẹp và vệ sinh chuyên nghiệp cho các không gian dân cư.</p>
                            <div class="border-top mt-4 pt-4">
                                <div class="row g-4">
                                    <div class="col-sm-4 d-flex wow fadeIn" data-wow-delay="0.1s">
                                        <i class="fa fa-check fa-2x text-primary flex-shrink-0 me-3"></i>
                                        <h6 class="mb-0">Luôn sẵn sàng</h6>
                                    </div>
                                    <div class="col-sm-4 d-flex wow fadeIn" data-wow-delay="0.3s">
                                        <i class="fa fa-check fa-2x text-primary flex-shrink-0 me-3"></i>
                                        <h6 class="mb-0">Dịch vụ 24/7</h6>
                                    </div>
                                    <div class="col-sm-4 d-flex wow fadeIn" data-wow-delay="0.5s">
                                        <i class="fa fa-check fa-2x text-primary flex-shrink-0 me-3"></i>
                                        <h6 class="mb-0">Chuyên nghiệp</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->


        <!-- Team Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-5 align-items-end mb-5">
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="border-start border-5 border-primary ps-4">
                            <h6 class="text-body text-uppercase mb-2">Đội ngũ</h6>
                            <h1 class="display-6 mb-0">Nhân viên chuyên gia của chúng tôi</h1>
                        </div>
                    </div>
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.3s">
                        <p class="mb-0">Đội ngũ nhân viên của chúng tôi được đào tạo và cập nhật kiến thức liên tục về các phương pháp bảo trì và sửa chữa chung cư hiện đại nhất. Họ có kỹ năng vững chắc trong việc xác định và khắc phục các vấn đề phổ biến liên quan đến hệ thống điện, nước, cửa, cửa sổ, sàn, tường và các yếu tố khác của chung cư.</p>
                    </div>
                </div>
                <div class="row g-4">
                <c:forEach items="${ListA}" var="o" begin="0" end="2">
                        <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                            <div class="team-item position-relative">
                                <img class="img-fluid" src="${o.image}" alt="">
                                <div class="team-text bg-white p-4">
                                    <h5>${o.fullName}</h5>
                                    <span>Nhân Viên</span>
                                </div>
                            </div>
                        </div>
                       </c:forEach>
                </div>
            </div>
        </div>
        <!-- Team End -->


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
