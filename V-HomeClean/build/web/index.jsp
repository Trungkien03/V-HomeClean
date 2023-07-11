<%-- 
    Document   : index
    Created on : May 20, 2023, 9:41:10 PM
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
        <title>V-HomeClean - Trang chủ</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">
        <link href="img/favicon.ico" rel="icon">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@500&display=swap" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
    </head>

    <body>
        <jsp:include page="navigation.jsp"></jsp:include>

            <!-- Carousel Start -->
            <div class="container-fluid p-0 mb-5 wow fadeIn" data-wow-delay="0.1s">
                <div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="w-100" src="img/banner1.jpg" alt="Image">
                            <div class="carousel-caption">
                                <div class="container">
                                    <div class="row justify-content-center">
                                        <div class="col-12 col-lg-10">
                                            <h5 class="text-light text-uppercase mb-3 animated slideInDown">Chào mừng đến với <span style="color: #f8e43c">V-HomeClean</span></h5>
                                            <h1 class="display-2 text-light mb-3 animated slideInDown">Công ty dịch vụ chuyên vệ sinh và sửa chữa khu dân cư VinHomes</h1>
                                            <ol class="breadcrumb mb-4 pb-2">
                                                <li class="breadcrumb-item fs-5 text-light">Uy Tín</li>
                                                <li class="breadcrumb-item fs-5 text-light">Nhanh Chóng</li>
                                                <li class="breadcrumb-item fs-5 text-light">Tiện Lợi</li>
                                            </ol>
                                            <a href="" class="btn btn-primary py-3 px-5">Chi tiết về V-HomeClean</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="w-100" src="img/banner2.jpg" alt="Image">
                            <div class="carousel-caption">
                                <div class="container">
                                    <div class="row justify-content-center">
                                        <div class="col-12 col-lg-10">
                                            <h5 class="text-light text-uppercase mb-3 animated slideInDown">Chào mừng đến với <span style="color: #f8e43c">V-HomeClean</span></h5>
                                            <h1 class="display-2 text-light mb-3 animated slideInDown">Dịch vụ Vệ sinh & Sửa chữa Chuyên nghiệp</h1>
                                            <ol class="breadcrumb mb-4 pb-2">
                                               <li class="breadcrumb-item fs-5 text-light">Uy Tín</li>
                                                <li class="breadcrumb-item fs-5 text-light">Nhanh Chóng</li>
                                                <li class="breadcrumb-item fs-5 text-light">Tiện Lợi</li>
                                            </ol>
                                            <a href="" class="btn btn-primary py-3 px-5">Chi tiết về V-HomeClean</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel"
                            data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#header-carousel"
                            data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
            <!-- Carousel End -->


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
                                    <h6 class="text-body text-uppercase mb-2">Thông tin về chúng tôi</h6>
                                    <h1 class="display-6 mb-0">Dịch vụ chuyên về dọn dẹp và vệ sinh căn hộ!</h1>
                                </div>
                                <p> là đơn vị dịch vụ dọn dẹp và vệ sinh căn hộ chuyên nghiệp. Chúng tôi sẽ đảm bảo rằng căn hộ của bạn luôn sạch sẽ, gọn gàng và thoải mái. Đội ngũ nhân viên giàu kinh nghiệm và tận tâm của chúng tôi sẽ làm sạch từ trần nhà, lau kính, vệ sinh lỗ thông hơi, gầm tủ và các góc khuất khác. Hãy để V-HomeClean mang đến cho bạn không gian sống tươi mới và thoáng đãng trong căn hộ của mình.</p>
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


            <!-- Facts Start -->
            <div class="container-fluid my-5 p-0">
                <div class="row g-0">
                    <div class="col-xl-3 col-sm-6 wow fadeIn" data-wow-delay="0.1s">
                        <div class="position-relative">
                            <img class="img-fluid w-100" src="img/fact-1.jpg" alt="">
                            <div class="facts-overlay">
                                <h1 class="display-1">01</h1>
                                <h4 class="text-white mb-3">Construction</h4>
                                <p class="text-white">Aliqu diam amet diam et eos erat ipsum lorem stet lorem sit clita duo justo erat amet</p>
                                <a class="text-white small" href="">READ MORE<i class="fa fa-arrow-right ms-3"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 wow fadeIn" data-wow-delay="0.3s">
                        <div class="position-relative">
                            <img class="img-fluid w-100" src="img/fact-2.jpg" alt="">
                            <div class="facts-overlay">
                                <h1 class="display-1">02</h1>
                                <h4 class="text-white mb-3">Mechanical</h4>
                                <p class="text-white">Aliqu diam amet diam et eos erat ipsum lorem stet lorem sit clita duo justo erat amet</p>
                                <a class="text-white small" href="">READ MORE<i class="fa fa-arrow-right ms-3"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 wow fadeIn" data-wow-delay="0.5s">
                        <div class="position-relative">
                            <img class="img-fluid w-100" src="img/fact-3.jpg" alt="">
                            <div class="facts-overlay">
                                <h1 class="display-1">03</h1>
                                <h4 class="text-white mb-3">Architecture</h4>
                                <p class="text-white">Aliqu diam amet diam et eos erat ipsum lorem stet lorem sit clita duo justo erat amet</p>
                                <a class="text-white small" href="">READ MORE<i class="fa fa-arrow-right ms-3"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 wow fadeIn" data-wow-delay="0.7s">
                        <div class="position-relative">
                            <img class="img-fluid w-100" src="img/fact-4.jpg" alt="">
                            <div class="facts-overlay">
                                <h1 class="display-1">04</h1>
                                <h4 class="text-white mb-3">Interior Design</h4>
                                <p class="text-white">Aliqu diam amet diam et eos erat ipsum lorem stet lorem sit clita duo justo erat amet</p>
                                <a class="text-white small" href="">READ MORE<i class="fa fa-arrow-right ms-3"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Facts End -->


            <!-- Features Start -->
            <div class="container-xxl py-5">
                <div class="container">
                    <div class="row g-5">
                        <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                            <div class="border-start border-5 border-primary ps-4 mb-5">
                                <h6 class="text-body text-uppercase mb-2">Tại sao bạn nên chọn chúng tôi?</h6>
                                <h1 class="display-6 mb-0">Chuyên môn hóa và các tính năng của công ty chúng tôi</h1>
                            </div>
                            <p class="mb-5">là một công ty chuyên môn hóa trong lĩnh vực dọn dẹp và vệ sinh. Chúng tôi tự hào cung cấp các tính năng và dịch vụ sau:</p>
                            <div class="row gy-5 gx-4">
                                <div class="col-sm-6 wow fadeIn" data-wow-delay="0.1s">
                                    <div class="d-flex align-items-center mb-3">
                                        <i class="fa fa-check fa-2x text-primary flex-shrink-0 me-3"></i>
                                        <h6 class="mb-0">Dịch vụ đa dạng</h6>
                                    </div>
                                    <span>chúng tôi cung cấp một loạt các dịch vụ như dọn dẹp căn hộ, lau chùi vệ sinh, vệ sinh kính, vệ sinh nệm và sofa, sửa chữa đồ điện và nhiều hơn nữa.</span>
                                </div>
                                <div class="col-sm-6 wow fadeIn" data-wow-delay="0.2s">
                                    <div class="d-flex align-items-center mb-3">
                                        <i class="fa fa-check fa-2x text-primary flex-shrink-0 me-3"></i>
                                        <h6 class="mb-0">Chất lượng cao</h6>
                                    </div>
                                    <span>Đội ngũ của chúng tôi luôn làm việc chuyên nghiệp, tỉ mỉ và tận tâm để đảm bảo rằng mọi khía cạnh của công việc được thực hiện đạt hiệu quả cao.</span>
                                </div>
                                <div class="col-sm-6 wow fadeIn" data-wow-delay="0.3s">
                                    <div class="d-flex align-items-center mb-3">
                                        <i class="fa fa-check fa-2x text-primary flex-shrink-0 me-3"></i>
                                        <h6 class="mb-0">Đội ngũ nhân viên đáng tin cậy</h6>
                                    </div>
                                    <span>Chúng tôi chỉ tuyển dụng những nhân viên có kỹ năng và kinh nghiệm, và đảm bảo rằng họ được đào tạo để cung cấp dịch vụ chất lượng và đáng tin cậy cho khách hàng.</span>
                                </div>
                                <div class="col-sm-6 wow fadeIn" data-wow-delay="0.4s">
                                    <div class="d-flex align-items-center mb-3">
                                        <i class="fa fa-check fa-2x text-primary flex-shrink-0 me-3"></i>
                                        <h6 class="mb-0">Giá cả hợp lý</h6>
                                    </div>
                                    <span>Chúng tôi cung cấp dịch vụ với mức giá cạnh tranh và công bằng. Chúng tôi cam kết mang lại giá trị tốt nhất cho khách hàng, đồng thời duy trì sự hài lòng và tin tưởng của họ.</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
                            <div class="position-relative overflow-hidden ps-5 pt-5 h-100" style="min-height: 400px;">
                                <img class="position-absolute w-100 h-100" src="img/feature.jpg" alt="" style="object-fit: cover;">
                                <div class="position-absolute top-0 start-0 bg-white pe-3 pb-3" style="width: 200px; height: 200px;">
                                    <div class="d-flex flex-column justify-content-center text-center bg-primary h-100 p-3">
                                        <h1 class="text-white">25</h1>
                                        <h2 class="text-white">Years</h2>
                                        <h5 class="text-white mb-0">Experience</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Features End -->


            <!-- Service Start -->
            <div class="container-xxl py-5">
                <div class="container">
                    <div class="row g-5 align-items-end mb-5">
                        <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                            <div class="border-start border-5 border-primary ps-4">
                                <h6 class="text-body text-uppercase mb-2">Dịch vụ của chúng tôi</h6>
                                <h1 class="display-6 mb-0">Nâng cấp không gian sống của bạn!</h1>
                            </div>
                        </div>
                        <div class="col-lg-6 text-lg-end wow fadeInUp" data-wow-delay="0.3s">
                            <a class="btn btn-primary py-3 px-5" href="ServicePageController">Xem thêm dịch vụ</a>
                        </div>
                    </div>
                    <div class="row g-4 justify-content-center">
            <!--Thẻ service ở đây-->
            
                    <c:forEach items="${listS}" begin="1" end="6" var="o">
                        <input value="${o.serviceID}" type="hidden">
                        <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
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
                </div>
            </div>
            <!-- Service End -->


            <!-- Appointment Start -->
            <div class="container-fluid appointment my-5 py-5 wow fadeIn" data-wow-delay="0.1s">
                <div class="container py-5">
                    <div class="row g-5">
                        <div class="col-lg-5 col-md-6 wow fadeIn" data-wow-delay="0.3s">
                            <div class="border-start border-5 border-primary ps-4 mb-5">
                                <h6 class="text-white text-uppercase mb-2">Bạn có thắc mắc gì không ?</h6>
                                <h1 class="display-6 text-white mb-0">Chúng tôi sẽ giải đáp mọi thắc mắc của bạn</h1>
                            </div>
                            <p class="text-white mb-0">Công ty chúng tôi sẽ trợ giúp cho quý khách hàng hết sức, Chúng tôi luôn đặt ưu tiên trải nghiệm của khách
                            hàng lên hàng đầu</p>
                        </div>
                        <div class="col-lg-7 col-md-6 wow fadeIn" data-wow-delay="0.5s">
                            <form>
                                <div class="row g-3">
                                    <div class="col-sm-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control bg-dark border-0" id="gname" placeholder="Gurdian Name">
                                            <label for="gname">Tên của bạn</label>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-floating">
                                            <input type="email" class="form-control bg-dark border-0" id="gmail" placeholder="Gurdian Email">
                                            <label for="gmail">Email của bạn</label>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control bg-dark border-0" id="cname" placeholder="Child Name">
                                            <label for="cname">Số điện thoại</label>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control bg-dark border-0" id="cage" placeholder="Child Age">
                                            <label for="cage">Chủ đề câu hỏi</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <textarea class="form-control bg-dark border-0" placeholder="Leave a message here" id="message" style="height: 100px"></textarea>
                                            <label for="message">Hãy viết câu hỏi thắc mắc của bạn tại đây</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <button class="btn btn-primary w-100 py-3" type="submit">Đặt câu hỏi</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Appointment End -->


            <!-- Team Start -->
            <div class="container-xxl py-5">
                <div class="container">
                    <div class="row g-5 align-items-end mb-5">
                        <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                            <div class="border-start border-5 border-primary ps-4">
                                <h6 class="text-body text-uppercase mb-2">Đội ngũ của chúng tôi</h6>
                                <h1 class="display-6 mb-0">Nhân viên tiêu biểu</h1>
                            </div>
                        </div>
                        <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.3s">
                            <p class="mb-0">V-HomeClean luôn cung cấp dịch vụ tốt dành cho bạn cũng như kinh nghiệm và sự hiệu quả của đội ngũ nhân viên. Sẵn sàng giúp bạn có một không gian sống đẹp!</p>
                        </div>
                    </div>
                    <div class="row g-4">
                    <c:forEach items="${ListA}" var="o" begin="0" end="2">
                        <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                            <div class="team-item position-relative">
                                <img class="img-fluid" src="${o.image}" alt="">
                                <div class="team-text bg-white p-4">
                                    <h5>${o.fullName}</h5>
                                    <span>Staff</span>
                                </div>
                            </div>
                        </div>
                       </c:forEach>                        
                    </div>
                </div>
            </div>
            <!-- Team End -->


            <!-- Testimonial Start -->
            <div class="container-xxl py-5">
                <div class="container">
                    <div class="row g-5">
                        <div class="col-lg-5 wow fadeInUp" data-wow-delay="0.1s">
                            <div class="border-start border-5 border-primary ps-4 mb-5">
                                <h6 class="text-body text-uppercase mb-2">Feedbacks</h6>
                                <h1 class="display-6 mb-0">Khách hàng nói gì về V-HomeClean</h1>
                            </div>
                            <p class="mb-4">Đây là những phản hồi nổi bật của khách hàng đã trải nghiệm sử dụng dịch vụ của V-HomeClean. Giúp bạn có thể chọn sử dụng dịch vụ của chúng tôi một cách an tâm từ những trải nghiệm tốt, thực tế của những khách hàng trước.</p>
                            <div class="row g-4">
                                <div class="col-sm-6">
                                    <div class="d-flex align-items-center mb-2">
                                        <i class="fa fa-users fa-2x text-primary flex-shrink-0"></i>
                                        <h1 class="ms-3 mb-0">777</h1>
                                    </div>
                                    <h5 class="mb-0">Khách hàng thân thiết</h5>
                                </div>
                                <div class="col-sm-6">
                                    <div class="d-flex align-items-center mb-2">
                                        <i class="fa fa-check fa-2x text-primary flex-shrink-0"></i>
                                        <h1 class="ms-3 mb-0">789</h1>
                                    </div>
                                    <h5 class="mb-0">Dịch vụ đã cung cấp</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-7 wow fadeInUp" data-wow-delay="0.5s">
                            <div class="owl-carousel testimonial-carousel">
                                <div class="testimonial-item">
                                    <img class="img-fluid mb-4" src="img/testimonial-1.jpg" alt="">
                                    <p class="fs-5">Dolores sed duo clita tempor justo dolor et stet lorem kasd labore dolore lorem ipsum. At lorem lorem magna ut et, nonumy et labore et tempor diam tempor erat.</p>
                                    <div class="bg-primary mb-3" style="width: 60px; height: 5px"></div>
                                    <h5>Client Name</h5>
                                    <span>Profession</span>
                                </div>
                                <div class="testimonial-item">
                                    <img class="img-fluid mb-4" src="img/testimonial-2.jpg" alt="">
                                    <p class="fs-5">Dolores sed duo clita tempor justo dolor et stet lorem kasd labore dolore lorem ipsum. At lorem lorem magna ut et, nonumy et labore et tempor diam tempor erat.</p>
                                    <div class="bg-primary mb-3" style="width: 60px; height: 5px"></div>
                                    <h5>Client Name</h5>
                                    <span>Profession</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Testimonial End -->


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
