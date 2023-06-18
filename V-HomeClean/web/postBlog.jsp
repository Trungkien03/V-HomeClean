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
        <title>V-HomeClean - Write Blog</title>
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
                    <h1 class="display-4 text-white animated slideInDown mb-4">Viết Blog Mới</h1>
                    <nav aria-label="breadcrumb animated slideInDown">
                        <ol class="breadcrumb justify-content-center mb-0">
                            <li class="breadcrumb-item"><a class="text-white" href="#">Trang chủ</a></li>
                            <li class="breadcrumb-item text-primary active" aria-current="page">Đăng bài blog</li>
                        </ol>
                    </nav>
                </div>
            </div>
            <!-- Page Header End -->


            <!-- Appointment Start -->
            <div class="container-xxl py-5">
                <div class="container">
                    <div class="row g-5">
                        <div class="col-lg-5 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                            <div class="border-start border-5 border-primary ps-4 mb-5">
                                <h6 class="text-body text-uppercase mb-2">Post a Blog</h6>
                                <h1 class="display-6 mb-0">A Company Involved In Service And Maintenance</h1>
                            </div>
                            <p class="mb-0">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo justo magna dolore erat amet</p>
                        </div>
                        <div class="col-lg-7 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                            <form action="BlogPageController">
                                <div class="row g-3">
<!--                                    <div class="col-sm-6">




                                        <div class="form-floating">
                                            <input type="text"  class="form-control bg-light border-0" id="gname" placeholder="Gurdian Name">
                                            <label for="gname">Tiêu đề</label>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-floating">
                                            <input type="email" class="form-control bg-light border-0" id="gmail" placeholder="Gurdian Email">
                                            <label for="gmail">Phụ đề</label>
                                        </div>
                                    </div>-->
                                    
                                    <input class="form-control" type="hidden" name="accountID" value="${acc.accountID}">
                                    
                                 
                                    <div class="col-sm-6">
                                        <div class="form-floating">
                                            <input type="file" name="image" class="form-control bg-light border-0" id="cname" placeholder="">
                                            <label for="cname">Hình ảnh</label>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-floating">
                                            <input type="text" name="blogCateID" class="form-control bg-light border-0" id="cage" placeholder="Blog Type">
                                            <label for="cage">Phân loại</label>
                                        </div>
                                    </div>
                                    <div  class="col-12">
                                        <div class="form-floating">
                                            <textarea name="title" class="form-control bg-light border-0" placeholder="Your Title Blog" id="message" style="height: 80px"></textarea>
                                            <label for="message">Tiêu đề</label>
                                        </div>
                                 
                           
                                
                                    </div>
                                    
                                    <div  class="col-12">
                                        <div class="form-floating">
                                            <textarea  name="subTitle" class="form-control bg-light border-0" placeholder="Your Title Blog" id="message" style="height: 80px"></textarea>
                                            <label for="message">Phụ đề</label>
                                        </div>
                                    </div>
                                    <div  class="col-12">
                                        <div class="form-floating">
                                            <textarea name="content" class="form-control bg-light border-0" placeholder="Leave a message here" id="message" style="height: 500px"></textarea>
                                            <label for="message">Nội dung</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <!--                                    <button class="btn btn-primary w-100 py-3" type="submit">Post A Blog</button>-->
                                        <input type="submit" class="btn btn-primary w-100 py-3" name="action" value="Xuất Bản"/>

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
