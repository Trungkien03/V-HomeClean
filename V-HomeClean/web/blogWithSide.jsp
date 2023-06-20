<%-- 
    Document   : 404
    Created on : May 20, 2023, 9:49:33 PM
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
        <title>V-HomeClean - Blogs</title>
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
        <link rel="stylesheet" href="plugins/themify/css/themify-icons.css">
        <link rel="stylesheet" href="plugins/fontawesome/css/all.css">
        <link rel="stylesheet" href="plugins/magnific-popup/dist/magnific-popup.css">
        <!-- Owl Carousel CSS -->
        <link rel="stylesheet" href="plugins/slick-carousel/slick/slick.css">
        <link rel="stylesheet" href="plugins/slick-carousel/slick/slick-theme.css">

        <!-- Main Stylesheet -->
        <!-- Template Stylesheet -->
        <link href="css/BlogStyles.css" rel="stylesheet" />
        <link href="css/style.css" rel="stylesheet">
        <style>
            @media(min-width:768px){
                .img-fluid{
                    width: 100%;
                    height: 300px;
                }
            }
            .container-fluid.page-header {
                position: relative;
            }

            .container-fluid.page-header:before {
                content: "";
                background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.4)), url(https://levica.vn/wp-content/uploads/2018/03/Blog-Become-a-Book-Banner.jpg);
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                z-index: -1;
            }
        </style>
    </head>

    <body>
        <jsp:include page="navigation.jsp"></jsp:include>


            <!-- Page Header Start -->
            <div class="container-fluid page-header py-5 mb-5 wow fadeIn" style="back" data-wow-delay="0.1s">
                <div class="container text-center py-5">
                    <h1 class="display-4 text-white animated slideInDown mb-4">Blogs</h1>
                    <nav aria-label="breadcrumb animated slideInDown">
                        <ol class="breadcrumb justify-content-center mb-0">
                            <li class="breadcrumb-item"><a class="text-white" href="index.jsp">Trang chủ</a></li>
                            <!--                            <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>-->
                            <li class="breadcrumb-item text-primary active" aria-current="page">Blogs</li>
                        </ol>
                    </nav>
                </div>
            </div>
            <!-- Page Header End -->

            <section class="section blog-wrap bg-gray">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="row">

                            <c:forEach items="${listBlog}" var="o">
                                <div class="col-lg-6 col-md-6 mb-5">
                                    <div class="blog-item wow fadeInUp" data-wow-delay="0.5s">
                                       
                                        <input name="blogID" value="${o.blogID}" type="hidden">
                                        <img src="${o.image}" alt="" class="img-fluid rounded">    
                                        <div class="blog-item-content bg-white p-4">
                                            <div class="blog-item-meta  py-1 px-2">                                                   
                                                <span class="text-muted text-capitalize mr-3"><i class="ti-pencil-alt mr-2"></i>${o.cateBlogName}</span>
                                            </div> 

                                            <h3 class="mt-3 mb-3"><a href="SingleBlogController?blogID=${o.blogID}">${o.title}</a></h3>
                                            <!--                                            <p class="mb-4"></p>-->

                                            <!--                                            <a href="SingleBlogController?blogID=" class="btn btn-small btn-main btn-round-full">Learn More</a>-->
                                        </div>
                                    </div>
                                </div>                            
                            </c:forEach>
                        </div>
                    </div>


                    <div class="col-lg-4">
                        <div class="sidebar-wrap">
                            <div class="sidebar-widget search card p-4 mb-3 border-0">
                                <input type="text" class="form-control" placeholder="Tìm Kiếm">
                                <a href="#" class="btn btn-mian btn-small d-block mt-2">Tìm Kiếm</a>
                            </div>

                            <div class="sidebar-widget card border-0 mb-3">
                                <img src="images/blog/blog-author.jpg" alt="" class="img-fluid">
                                <div class="card-body p-4 text-center">
                                    <h5 class="mb-0 mt-4">Arther Conal</h5>
                                    <p>Digital Marketer</p>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Incidunt, dolore.</p>

                                    <ul class="list-inline author-socials">
                                        <li class="list-inline-item mr-3">
                                            <a href="#"><i class="fab fa-facebook-f text-muted"></i></a>
                                        </li>
                                        <li class="list-inline-item mr-3">
                                            <a href="#"><i class="fab fa-twitter text-muted"></i></a>
                                        </li>
                                        <li class="list-inline-item mr-3">
                                            <a href="#"><i class="fab fa-linkedin-in text-muted"></i></a>
                                        </li>
                                        <li class="list-inline-item mr-3">
                                            <a href="#"><i class="fab fa-pinterest text-muted"></i></a>
                                        </li>
                                        <li class="list-inline-item mr-3">
                                            <a href="#"><i class="fab fa-behance text-muted"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="sidebar-widget latest-post card border-0 p-4 mb-3">
                                <h5>Bài viết mới nhất</h5>

                                <div class="media border-bottom py-3">
                                    <a href="#"><img class="mr-4" src="images/blog/bt-3.jpg" alt=""></a>
                                    <div class="media-body">
                                        <h6 class="my-2"><a href="#">Thoughtful living in los Angeles</a></h6>
                                        <span class="text-sm text-muted">03 Mar 2018</span>
                                    </div>
                                </div>

                                <!--                                <div class="media border-bottom py-3">
                                                                    <a href="#"><img class="mr-4" src="images/blog/bt-2.jpg" alt=""></a>
                                                                    <div class="media-body">
                                                                        <h6 class="my-2"><a href="#">Vivamus molestie gravida turpis.</a></h6>
                                                                        <span class="text-sm text-muted">03 Mar 2018</span>
                                                                    </div>
                                                                </div>
                                
                                                                <div class="media py-3">
                                                                    <a href="#"><img class="mr-4" src="images/blog/bt-1.jpg" alt=""></a>
                                                                    <div class="media-body">
                                                                        <h6 class="my-2"><a href="#">Fusce lobortis lorem at ipsum semper sagittis</a></h6>
                                                                        <span class="text-sm text-muted">03 Mar 2018</span>
                                                                    </div>
                                                                </div>-->
                            </div>

                            <div class="sidebar-widget bg-white rounded tags p-4 mb-3">
                                <h5 class="mb-4">Tags</h5>

                                <a href="#">Web</a>
                                <a href="#">agency</a>
                                <a href="#">company</a>
                                <a href="#">creative</a>
                                <a href="#">html</a>
                                <a href="#">Marketing</a>
                                <a href="#">Social Media</a>
                                <a href="#">Branding</a>
                            </div>
                        </div>
                    </div>   
                </div>

                <div class="row mt-5">
                    <div class="col-lg-8">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination">
                                <li class="page-item">
                                    <c:if test="${tag > 1}">
                                        <a class="page-link" href="BlogPageController?index=${tag - 1}" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </c:if>
                                    </a>
                                </li>
                                <c:forEach begin="1" end ="${endP}" var="i">
                                    <li class="page-item"><a class="page-link" href="BlogPageController?index=${i}">${i}</a></li>
                                    </c:forEach>
                                <li class="page-item">
                                    <c:if test="${tag < endP}">
                                        <a class="page-link" href="BlogPageController?index=${tag + 1}" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </c:if>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </section>


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
        <script src="plugins/bootstrap/js/popper.js"></script>
        <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
        <!--  Magnific Popup-->
        <script src="plugins/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
        <!-- Slick Slider -->
        <script src="plugins/slick-carousel/slick/slick.min.js"></script>
        <!-- Counterup -->
        <script src="plugins/counterup/jquery.waypoints.min.js"></script>
        <script src="plugins/counterup/jquery.counterup.min.js"></script>


        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </body>

</html>