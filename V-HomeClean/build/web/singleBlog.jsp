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
                        <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
                        <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
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
                                <img style="height: 600px;" class="img-single-blog" src="${BlogDetail.image}" alt="" >

                                <div class="blog-item-content bg-white p-5">
                                    <!--                                        <div class="blog-item-meta bg-gray py-1 px-2">
                                                                                <span class="text-muted text-capitalize mr-3"><i class="ti-pencil-alt mr-2"></i>Creativity</span>
                                                                                <span class="text-muted text-capitalize mr-3"><i class="ti-comment mr-2"></i>5 Comments</span>
                                                                                <span class="text-black text-capitalize mr-3"><i class="ti-time mr-1"></i> 28th January</span>
                                                                            </div> -->

                                    <h2 class="mt-3 mb-4"><a href="#">${BlogDetail.title}</a></h2>
                                    <!--                                        <p class="lead mb-4">Non illo quas blanditiis repellendus laboriosam minima animi. Consectetur accusantium pariatur repudiandae!</p>-->

                                    <!--                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus natus, consectetur? Illum libero vel nihil nisi quae, voluptatem, sapiente necessitatibus distinctio voluptates, iusto qui. Laboriosam autem, nam voluptate in beatae.</p>-->

                                    <!--                                        <h3 class="quote">A brand for a company is like a reputation for a person. You earn reputation by trying to do hard things well.</h3>-->
                                    <p class="lead mb-4 font-weight-normal text-black">${BlogDetail.subTitle}</p>
                                    <br>
                                    <p class="lead mb-4 font-weight-normal text-black">${BlogDetail.content}</p>


                                    <!--                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste, rerum beatae repellat tenetur incidunt quisquam libero dolores laudantium. Nesciunt quis itaque quidem, voluptatem autem eos animi laborum iusto expedita sapiente.</p>-->

                                    <div class="tag-option mt-5 clearfix">
                                        <!--                                        <ul class="float-left list-inline"> 
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
                                </div>
                            </div>
                        </div>


                        <!--                        <div class="col-lg-12 mb-5">
                                                    <div class="posts-nav bg-white p-5 d-lg-flex d-md-flex justify-content-between ">
                                                        <a class="post-prev align-items-center" href="#">
                                                            <div class="posts-prev-item mb-4 mb-lg-0">
                                                                <span class="nav-posts-desc text-color">- Previous Post</span>
                                                                <h6 class="nav-posts-title mt-1">
                                                                    Donec consectetuer ligula <br>vulputate sem tristique.
                                                                </h6>
                                                            </div>
                                                        </a>
                                                        <div class="border"></div>
                                                        <a class="posts-next" href="#">
                                                            <div class="posts-next-item pt-4 pt-lg-0">
                                                                <span class="nav-posts-desc text-lg-right text-md-right text-color d-block">- Next Post</span>
                                                                <h6 class="nav-posts-title mt-1">
                                                                    Ut aliquam sollicitudin leo.
                                                                </h6>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>-->



                        <!--==========================================HIEN THI COMMENT=================================================-->
                        <div id="commentContainer" style="border: #000 solid 2px" class="col-lg-12 mb-5">
                            <div class="comment-area card border-0 p-5">

                                <h3 class="mb-4">Bình Luận</h3>
                                <ul class="comment-tree list-unstyled">

                                    <li class="mb-5">

                                        <div style="margin-left: 20px;" class="comment-area-box">

                                            <c:forEach items="${listCmt}" var="o">

                                                <img alt="" src="images/blog/test1.jpg" class="img-fluid float-left mr-3 mt-2">

                                                <h5 class="mb-1">${o.fullName}</h5>
                                                <!--                                                <span>United Kingdom</span>-->

                                                <div class="comment-meta mt-4 mt-lg-0 mt-md-0 float-lg-right float-md-right">
                                                    <!--                                                    <a href="#"><i class="icofont-reply mr-2 text-muted"></i>Reply |</a>-->
                                                    <span style="font-size: x-small; color: #999;" class="date-comm">${o.time}</span>
                                                </div>

                                                <div class="comment-content mt-3">
                                                    <p>${o.message}</p>
                                                </div>
                                            </c:forEach>
                                        </div>

                                    </li>




                                    <!--                                    <li>
                                                                            <div class="comment-area-box">
                                                                                <img alt="" src="images/blog/test2.jpg" class="mt-2 img-fluid float-left mr-3">
                                    
                                                                                <h5 class="mb-1">Philip W</h5>
                                                                                <span>United Kingdom</span>
                                    
                                                                                <div class="comment-meta mt-4 mt-lg-0 mt-md-0 float-lg-right float-md-right">
                                                                                    <a href="#"><i class="icofont-reply mr-2 text-muted"></i>Reply |</a>
                                                                                    <span class="date-comm">Posted October 7, 2018</span>
                                                                                </div>
                                    
                                                                                <div class="comment-content mt-3">
                                                                                    <p>Some consultants are employed indirectly by the client via a consultancy staffing company, a company that provides consultants on an agency basis. </p>
                                                                                </div>
                                                                            </div>
                                                                        </li>-->
                                </ul>

                            </div>
                        </div>
                        <!--==========================================INSERT COMMENT=================================================-->
                        <style>
                            .infoCMT {
                                display: flex;
                            }
                        </style>
                        <div class="col-lg-12">

                            <form action="SingleBlogController" class="contact-form bg-white rounded p-5" id="comment-form">
                                <h4 class="mb-4">Viết Bình Luận</h4>
                                <input class="form-control" type="hidden" name="blogID" value="${BlogDetail.blogID}">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <!-- 
                                            <input class="form-control" type="text" name="accountID" placeholder="Name:">-->
                                            <div class="infoCMT">

                                            </div>
                                        </div>
                                        <br>
                                    </div>
                                    <div class="col-md-6">
                                        <!--                                        <div class="form-group">
                                                                                    <input class="form-control" type="hidden" name="accountID">
                                                                                </div>-->
                                    </div>
                                </div>


                                <!--                                <input  class="form-control mb-3" name="message" id="comment" cols="30" rows="5" placeholder="Nhập nội dung.."-->
                                <textarea class="form-control mb-3" name="message" id="comment" cols="30" rows="5" placeholder="Nhập nội dung.."></textarea>

                                <input type="submit" class="btn btn-primary" name="action" id="submit_contact" value="Bình luận">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="sidebar-wrap">
                        <div class="sidebar-widget search card p-4 mb-3 border-0">
                            <input type="text" class="form-control" placeholder="search">
                            <a href="#" class="btn btn-mian btn-small d-block mt-2">search</a>
                        </div>

                        <!--                        <div class="sidebar-widget card border-0 mb-3">
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
                                                </div>-->

                        <div class="sidebar-widget latest-post card border-0 p-4 mb-3">
                            <h5>Bài viết liên quan!</h5>

                            <div class="media border-bottom py-3">
                                <a href="#"><img class="mr-4" src="images/blog/bt-3.jpg" alt=""></a>
                                <div class="media-body">
                                    <h6 class="my-2"><a href="#">Thoughtful living in los Angeles</a></h6>
                                    <span class="text-sm text-muted">03 Mar 2018</span>
                                </div>
                            </div>

                            <!--                            <div class="media border-bottom py-3">
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
