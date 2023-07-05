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
        <!-- include libraries(jQuery, bootstrap) -->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

        <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
        <!------------------------------------------------------------------>
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
                    <!--                    <nav aria-label="breadcrumb animated slideInDown">
                                            <ol class="breadcrumb justify-content-center mb-0">
                                                <li class="breadcrumb-item"><a class="text-white" href="#">Trang chủ</a></li>
                                                <li class="breadcrumb-item text-primary active" aria-current="page">Đăng bài blog</li>
                                            </ol>
                                        </nav>-->
                </div>
            </div>
            <!-- Page Header End -->


            <!-- Appointment Start -->
            <div class="container-xxl py-5">
                <div class="container">
                    <div class="row g-5">
                        <!--                        <div class="col-lg-5 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                                    <div class="border-start border-5 border-primary ps-4 mb-5">
                                                        <h6 class="text-body text-uppercase mb-2">Post a Blog</h6>
                                                        <h1 class="display-6 mb-0">A Company Involved In Service And Maintenance</h1>
                                                    </div>
                                                    <p class="mb-0">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo justo magna dolore erat amet</p>
                                                </div>-->

                        <style>
                            .box-blog {
                                border: 2px  #999;
                                padding: 20px;
                                border-radius: 10px;
                                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                                background-color: #f5f5f5;

                            }
                            
                            label{
                                color: black;
                            }

                        </style>
                        <div class="col-lg-12 col-md-12 wow fadeInUp" data-wow-delay="0.5s">
                            <div class="box-blog">

                                <form action="BlogPageController" method="post" enctype="multipart/form-data">
                                    <div class="row g-3">
                                        <input class="form-control" type="hidden" name="accountID" value="${acc.accountID}">
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <input type="text" name="title" class="form-control bg-light border-0" id="title" placeholder="Your Title Blog">
                                            <label for="title">Tiêu đề</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <input type="text" name="subTitle" class="form-control bg-light border-0" id="subTitle" placeholder="Your Subtitle Blog">
                                            <label for="subTitle">Phụ đề</label>
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <!--                                        <div class="form-floating">
                                                                                    <input type="file" name="image" class="form-control bg-light border-0" id="image" placeholder="Select Image">
                                                                                    <label for="image">Hình ảnh</label>
                                                                                </div>-->
                                 
                                        <div class="form-floating">
                                            <div class="input-group">
                                                <div class="custom-file">
                                                    <input  style="font-size: 25px;" type="file" name="image" class="custom-file-input" id="image" aria-describedby="inputGroupFileAddon">
                                                    <label class="custom-file-label" for="image">Chọn ảnh</label>
                                                </div>
                                            </div>
                                            <label for="image">Hình ảnh</label>
                                        </div>


                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-floating">
                                            <select name="blogCateID" class="form-select bg-light border-0" id="blogCateID">
                                                <option value="1">Mẹo dọn dẹp</option>
                                                <option value="2">Mẹo sửa chữa</option>
                                            </select>
                                            <label for="blogCateID">Phân loại</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <textarea id="summernote" name="content" class="form-control bg-light border-0" placeholder="Leave a message here" style="height: 500px"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <input type="submit" class="btn btn-primary w-100 py-3" name="action" value="Xuất Bản">
                                    </div>
                                </div>
                            </form>



                            <!--                                <form action="BlogPageController" method="post" enctype="multipart/form-data">
                                                                <div class="row g-3">
                                                                                                        <div class="col-sm-6">
                                                                    
                                                                    
                                                                    
                                                                    
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
                                                                                                        </div>
                            
                                                                    <input class="form-control" type="hidden" name="accountID" value="${acc.accountID}">
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
                            
                                                                <div class="col-sm-6">
                                                                    <div class="form-floating">
                                                                        <input type="file" name="image" class="form-control bg-light border-0" id="cname" placeholder="">
                                                                        <label for="cname">Hình ảnh</label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <div class="form-floating">
                                                                        <select name="blogCateID" class="form-select bg-light border-0" id="cage">
                                                                            <option value="1">Mẹo dọn dẹp</option>
                                                                            <option value="2">Mẹo sửa chữa</option>
                                                                        </select>
                                                                        <label for="cage">Phân loại</label>
                                                                    </div>
                            
                                                                </div>
                                                                <div  class="col-12">
                                                                    <div class="form-floating">
                                                                        <textarea id="summernote" name="content" class="form-control bg-light border-0" placeholder="Leave a message here" id="message" style="height: 500px"></textarea>
                            
                                                                                                                <label for="message">Nội dung</label>
                                                                    </div>
                            
                                                                </div>
                                                                <div class="col-12">
                                                                                                        <button class="btn btn-primary w-100 py-3" type="submit">Post A Blog</button>
                                                                    <input type="submit" class="btn btn-primary w-100 py-3" name="action" value="Xuất Bản"/>
                            
                                                                </div>
                                                            </div>
                                                        </form>-->
                        </div>
                        <script>
                            $('#summernote').summernote({
                                placeholder: 'Nhập nội dung của bạn tại đây!',
                                tabsize: 2,
                                height: 100
                            });
                        </script>
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
