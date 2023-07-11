<%-- 
    Document   : 404
    Created on : May 20, 2023, 9:49:33 PM
    Author     : Trung Kien
--%>

<%@page import="DTO.AccountDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>Blog - Pagge</title>
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
                .img-single-blog{
                    width: 100%;
                    height: 300px;
                }
            }

            .img-single-blog{
                width: 100%;
                height: 500px;
            }
        </style>
    </head>

    <body>
        <jsp:include page="navigation.jsp"></jsp:include>


            <!-- Page Header Start -->
            <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
                <div class="container text-center py-5">
                    <h1 class="display-4 text-white animated slideInDown mb-4">${BlogDetail.title}</h1>
                <nav aria-label="breadcrumb animated slideInDown">
                    <ol class="breadcrumb justify-content-center mb-0">
                        <li class="breadcrumb-item"><a class="text-white" href="index.jsp">Trang chủ</a></li>
                        <!--                        <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>-->
                        <li class="breadcrumb-item text-primary active" aria-current="page">BLOG</li>
                    </ol>
                </nav>
            </div>
        </div>
        <!-- Page Header End -->

        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="row">
                        <div class="col-lg-12 mb-5">
                            <div class="single-blog-item">
                                <img style="margin-left: 43px; width: 80%; height: auto; max-height: 650px; border-radius: 10px; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); text-align: center" class="img-single-blog" src="${BlogDetail.image}" alt="" >

                                <div class="blog-item-content bg-white p-5">
                                    <h2 class="mt-3 mb-4"><a style="color: rgb(37, 150, 190); font-size: 40px; font-weight: bold;" href="#">${BlogDetail.title}</a></h2>
                                    <p class="lead mb-4 font-weight-normal text-black" style="font-family: 'Arial', sans-serif; font-size: 14px; font-weight: 300; font-style: italic; color: #333;">${BlogDetail.subTitle}</p>


                                    <br>
                                    <p class="lead mb-4 font-weight-normal text-black">${BlogDetail.content}</p>

                                    <div class="tag-option mt-5 clearfix">

                                        <!--                                                                                <ul class="float-left list-inline"> 
                                                                                                                            <li>Tags:</li> 
                                                                                                                            <li class="list-inline-item"><a href="#" rel="tag">Advancher</a></li>
                                                                                                                            <li class="list-inline-item"><a href="#" rel="tag">Landscape</a></li>
                                                                                                                            <li class="list-inline-item"><a href="#" rel="tag">Travel</a></li>
                                                                                                                        </ul>        -->

                                        <ul class="float-right list-inline">
                                            <li class="list-inline-item"> Share: </li>
                                            <li class="list-inline-item"><a href="#" target="_blank"><i class="fab fa-facebook-f" aria-hidden="true"></i></a></li>
                                            <li class="list-inline-item"><a href="#" target="_blank"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                                            <li class="list-inline-item"><a href="#" target="_blank"><i class="fab fa-pinterest-p" aria-hidden="true"></i></a></li>
                                            <li class="list-inline-item"><a href="#" target="_blank"><i class="fab fa-google-plus" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>

                                    <div>
                                        <h5>Rating</h5>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <!--==========================================HIEN THI COMMENT=================================================-->
                        <h3 style="margin-left: 40px" class="mb-4">Bình Luận</h3>
                        <div id="commentContainer" style="margin-left: 55px; border: black solid 1px; width: 100%; max-width: 770px; padding: 20px; border-radius: 5px; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);" class="col-lg-12 mb-5">

                            <div>

                                <div class="comment-area card border-0">

                                    <ul class="comment-tree list-unstyled">
                                        <c:forEach items="${listCmt}" var="o">
                                            <li class="mb-2">
                                                <div style="margin-left: 20px;" class="comment-area-box">
    <!--                                                <input name="blogID" value="${o.blogID}" type="hidden">-->

                                                    <div style="display: flex; ">
                                                        <div style="margin-left: -11px">

                                                            <img src="${o.imageAcc}" style="width: 30px; height: 30px; border-radius: 50%" >
                                                        </div>
                                                        <div style="  border: #999 solid 1px; border-radius:12px; width: 100%; margin-bottom: 2%; margin-left: 12px">


                                                            <!--                                                        <img alt="" src="images/blog/test1.jpg" class="img-fluid float-left mr-3 mt-2">-->
                                                            <style>
                                                                .contentCmt{
                                                                    margin: 12px;
                                                                }
                                                            </style>
                                                            <div class="contentCmt">
                                                                <h6 style="color: #6666FF;" class="mb-1">${o.fullName}</h6>


                                                                <div class="comment-content mt-3" style="flex: 1;">
                                                                    <p style="color: black;">${o.message}</p>
                                                                </div>
                                                                <div class="comment-meta mt-4 mt-lg-0 mt-md-0 float-lg-right float-md-right">
                                                                    <span style="font-size: x-small; color: #999;" class="date-comm">${o.time}</span>
                                                                </div>



                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>


                                            </li>
                                        </c:forEach>
                                    </ul>
                                    <style>
                                        .pagination .page-item .page-link {

                                            color: #009ce7; /* Màu chữ trắng */
                                        }

                                        .pagination .page-item .page-link:hover,
                                        .pagination .page-item .page-link:focus {
                                            background-color: #00A4F7; /* Màu xanh đậm khi hover hoặc focus */
                                            border-color: #0056b3;
                                            color: white;
                                        }

                                        .pagination .page-item .page-link[aria-current="page"] {
                                            background-color: #0056b3; /* Màu xanh đậm cho trang hiện tại */
                                            border-color: #0056b3;
                                        }

                                    </style>

                                    <div class="row" >
                                        <div class="col-lg-8" >
                                            <nav aria-label="Page navigation example">
                                                <ul class="pagination">
                                                    <li  class="page-item">
                                                        <c:if test="${tag > 1}">
                                                            <a  class="page-link" href="SingleBlogController?index=${tag - 1}&amp;blogID=${BlogDetail.blogID}&amp;action=paging" aria-label="Previous">
                                                                <span aria-hidden="true">&laquo;</span>
                                                            </c:if>
                                                        </a>
                                                    </li>
                                                    <c:forEach begin="1" end="${endP}" var="i">
                                                        <li class="page-item">
                                                            <a class="page-link" href="SingleBlogController?index=${i}&amp;blogID=${BlogDetail.blogID}&amp;action=paging">${i}</a>
                                                        </li>
                                                    </c:forEach>

                                                    <li class="page-item">
                                                        <c:if test="${tag < endP}">
                                                            <a class="page-link" href="SingleBlogController?index=${tag + 1}&amp;blogID=${BlogDetail.blogID}&amp;action=paging" aria-label="Next">
                                                                <span aria-hidden="true">&raquo;</span>
                                                            </a>
                                                        </c:if>
                                                    </li>
                                                </ul>
                                            </nav>
                                        </div>
                                    </div>





                                </div>
                                <div>
                                    <form action="SingleBlogController?index=${tag}&amp;action=paging" class="contact-form bg-white rounded " id="comment-form">

                                        <h5 >Viết Bình Luận</h5>
                                        <div style="display: flex;">
                                            <div>
                                                <c:if test="${empty sessionScope.acc.image}">
                                                    <img src="https://img.myloview.cz/plakaty/default-avatar-profile-icon-vector-social-media-user-image-700-205124837.jpg" style="width: 38px; height: 38px; border-radius: 50%;">
                                                </c:if>
                                                <c:if test="${not empty sessionScope.acc.image}">
                                                    <img src="${sessionScope.acc.image}" style="width: 28px; height: 28px; border-radius: 50%;">
                                                </c:if>

                                            </div>  
                                            <div style="margin-left: 2%; width: 100%">
                                                <input class="form-control" type="hidden" name="blogID" value="${BlogDetail.blogID}">



                                                <!--                                <input  class="form-control mb-3" name="message" id="comment" cols="30" rows="5" placeholder="Nhập nội dung.."-->
                                                <textarea style="border-radius: 15px;"  class="form-control mb-3" name="message" id="comment" cols="30" rows="5" placeholder="Nhập nội dung.."></textarea>

                                                <input style="border-radius: 12px;" type="submit" class="btn btn-primary" name="action" id="submit_contact" value="Bình luận">
                                            </div>
                                        </div>

                                    </form>
                                </div>
                            </div>
                        </div>


                        <!--==========================================INSERT COMMENT=================================================-->
                        <style>
                            .infoCMT {
                                display: flex;
                            }
                        </style>

                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="sidebar-wrap">
                        <div class="sidebar-widget latest-post card border-0 p-4 mb-3">
                            <h5 style="color: orange; font-size: 25px; font-weight: bold;">Bài viết liên quan!</h5>

                            <div class="media border-bottom py-3">
                                <c:forEach items="${listB}" var="o">
                                    <div class="row">
                                        <div class="col-lg-8">
                                            <h3 class=" mb-3">
                                                <a href="SingleBlogController?blogID=${o.blogID}" style="color: rgb(37, 150, 190); font-size: 20px;">
                                                    ${o.title}
                                                </a>
                                            </h3>
                                        </div>
                                        <div class="col-lg-4">
                                            <img src="${o.image}" style="border-radius: 15px; width: 100%; height: 80px; " alt="" class="img-fluid">
                                        </div>
                                    </div>


                                </c:forEach>
                            </div>
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
