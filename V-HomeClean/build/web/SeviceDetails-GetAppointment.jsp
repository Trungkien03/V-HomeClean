<%-- 
    Document   : appointment
    Created on : May 20, 2023, 9:49:07 PM
    Author     : Trung Kien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>Apex - Home Repair Website Template</title>
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
                    <h1 class="display-4 text-white animated slideInDown mb-4">Booking Service</h1>
                    <nav aria-label="breadcrumb animated slideInDown">
                        <ol class="breadcrumb justify-content-center mb-0">
                            <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
                            <li class="breadcrumb-item text-primary active" aria-current="page">Booking Service</li>
                        </ol>
                    </nav>
                </div>
            </div>
            <!-- Page Header End -->




            <div class="container-xxl py-5">
                <div class="container">
                    <div class="row g-5">
                        <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                            <div class="position-relative overflow-hidden ps-5 pt-5 h-100" style="min-height: 400px;">
                                <img class="position-absolute w-100 h-100" src="img/serviceTongVeSinh.jpg" alt="" style="object-fit: cover;">
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
                                    <h6 class="text-body text-uppercase mb-2">Dịch Vụ Dọn Dẹp</h6>
                                    <h1 class="display-6 mb-0">Dịch Vụ Tổng Vệ sinh</h1>
                                </div>
                                <p>Dịch vụ tổng vệ sinh cho căn hộ chung cư mang đến sự sạch sẽ và thoáng mát cho không gian sống của bạn. Đội ngũ người giúp việc sẽ dọn dẹp và vệ sinh sàn nhà, lau kính, vệ sinh cửa, cửa sổ và màn cửa, vệ sinh lỗ thông hơi, gầm tủ và các góc khuất khác trong căn hộ. Ngoài ra, nội thất như ghế sofa, bàn, giường và tủ cũng sẽ được làm sạch kỹ lưỡng. Dịch vụ này đảm bảo không gian sống của bạn trở nên sạch sẽ và thoải mái để bạn có thể tận hưởng cuộc sống hàng ngày một cách thoải mái.</p>
                                <h6 class="mb-2">Giá ước lượng giao động từ: 500.000 VND</h6>
                                <div class="border-top mt-4 pt-4">
                                    <div class="row g-4">
                                        <div class="col-sm-4 d-flex wow fadeIn" data-wow-delay="0.1s">
                                            <i class="fa fa-check fa-2x text-primary flex-shrink-0 me-3"></i>
                                            <h6 class="mb-0">Luôn đúng giờ</h6>
                                        </div>
                                        <div class="col-sm-4 d-flex wow fadeIn" data-wow-delay="0.3s">
                                            <i class="fa fa-check fa-2x text-primary flex-shrink-0 me-3"></i>
                                            <h6 class="mb-0">24/7 giờ làm việc</h6>
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



            <!-- Appointment Start -->
            <div class="container-xxl py-5">
                <div class="container">
                    <div class="row g-5">
                        <div class="col-lg-5 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                            <div class="border-start border-5 border-primary ps-4 mb-5">
                                <h6 class="text-body text-uppercase mb-2">Booking service</h6>
                                <h1 class="display-6 mb-0">V-HomeClean: Căn hộ của bạn luôn sạch sẽ, gọn gàng và thật thoải mái!</h1>
                            </div>
                            <p class="mb-0">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo justo magna dolore erat amet</p>
                        </div>
                        <div class="col-lg-7 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                            <form>
                                <div class="row g-3">
                                    <div class="col-sm-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control bg-light border-0" id="gname" placeholder="Gurdian Name">
                                            <label for="gname">Họ và Tên</label>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-floating">
                                            <input type="email" class="form-control bg-light border-0" id="gmail" placeholder="Gurdian Email">
                                            <label for="gmail">Email</label>
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
                                            <input type="text" class="form-control bg-light border-0" id="cname" placeholder="Child Name">
                                            <label for="cname">Số điện thoại</label>
                                        </div>
                                    </div>
                                    
                                    <div class="col-sm-6">
                                        <div class="form-floating">
                                            <select class="form-select bg-light border-0" name="typeService" aria-label="Guardian Relationship">
                                                <option value=""selected disabled>Chọn loại dịch vụ</option>
                                                <option value="Dịch vụ 1 lần">Dịch vụ 1 lần</option>
                                                <option value="Định kì theo tuần">Định kì theo tuần</option>
                                                <option value="Định kì theo tháng">Định kì theo tháng</option>
                                            </select>
                                            <label for="relationship">Chọn loại dịch vụ</label>
                                        </div>
                                    </div>
                                    
                                    <div class="col-sm-6">
                                        <div class="form-floating">
                                            <select class="form-select bg-light border-0" name="typeService" aria-label="Guardian Relationship">
                                                <option value="Dịch vụ 1 lần" selected="">Dịch vụ 1 lần</option>
                                                <option value="Định kì theo tuần">Định kì theo tuần</option>
                                                <option value="Định kì theo tháng">Định kì theo tháng</option>
                                            </select>
                                            <label for="relationship">Dịch vụ Định kì</label>
                                        </div>
                                    </div>
                                    
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <textarea class="form-control bg-light border-0" placeholder="Leave a message here" id="message" style="height: 100px"></textarea>
                                            <label for="message">Message</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <button class="btn btn-primary w-100 py-3" type="submit">Get Appointment</button>
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
