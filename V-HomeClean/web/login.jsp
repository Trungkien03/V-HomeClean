<%-- 
    Document   : index
    Created on : May 23, 2023, 2:28:25 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>

        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="fonts/icomoon/style.css">

        <link rel="stylesheet" href="css/owl.carousel.min.css">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">

        <!-- Style -->
        <link rel="stylesheet" href="css/Loginstyle.css">

        <title>Login Page</title>
    </head>
    <body>


        <div class="d-lg-flex half">

            <!--    <div class="bg order-1 order-md-2" style="background-image: url('https://blog.photoadking.com/wp-content/uploads/2023/03/Residential-Cleaning-Service-Flyer.jpg'); max-width: 650px"></div>-->
            <!--    <div class="bg order-1 order-md-2" style="background-image: url('https://marketplace.canva.com/EAE6dLlxEkM/2/0/1131w/canva-cleaning-service-flyer-hNPp3Hxz4fQ.jpg'); margin: 0.5% 0.5% 0.5% 0.5% "></div>-->
            <!--            <div class="bg order-1 order-md-2">-->

                 <div class="container">
                <div class="row align-items-center justify-content-center">
                    <div class="col-md-7">
                        <h3>Đăng nhập vào     <strong style="color: #f8e43c">V-HomeClean</strong></h3>
                        <strong style="color: red">${ERROR}</strong>
                        <!--            <p class="mb-4">Lorem ipsum dolor sit amet elit. Sapiente sit aut eos consectetur adipisicing.</p>-->
                        <form action="MainController" method="post">
                            <div class="form-group first">
                                <label for="username">Tên Đăng Nhập</label>
                                <input name="email" type="text" class="form-control" placeholder="Email của bạn" id="username">
                            </div>
                            <div class="form-group last mb-3">
                                <label for="password">Mật Khẩu</label>
                                <input  name="password" type="password" class="form-control" placeholder="Mật Khẩu Của Bạn" id="password">
                            </div>

                            <div class="d-flex mb-5 align-items-center">
                                <label class="control control--checkbox mb-0"><span class="caption">Nhớ Mật Khẩu</span>
                                    <input type="checkbox" checked="checked"/>
                                    <div class="control__indicator"></div>
                                </label>
                                <span class="ml-auto"><a href="forgotPassword.jsp" class="forgot-pass">Quên Mật Khẩu</a></span> 
                            </div>


                            <input style="color: white; background-color:  #309cf4; border: none;" name="action" type="submit" value="Login" class="btn btn-block btn-primary">


                        </form>
                    </div>


                </div>


                <!--                </div>-->


            </div>
            <!--            </div>-->
            <!--            <div class="contents  order-2 order-md-1">-->

       



            <div class="container">
                <div class="row align-items-center justify-content-center">
                    <div class="col-md-7">
                        <h3>Đăng ký vào     <strong style="color: #f8e43c">V-HomeClean</strong></h3>
                        <form action="Maincontroller" method="post">
                            <div class="form-group first">
                                <label for="username">Tên Đăng Nhập</label>
                                <input type="text" name="email" class="form-control" placeholder="Email của bạn" id="username">
                            </div>
                            <br/>
                            <div class="form-group last mb-3">
                                <label for="password">Mật Khẩu</label>
                                <input type="password" class="form-control" placeholder="Mật Khẩu Của Bạn" id="password">
                            </div>

                            <div class="form-group last mb-3">
                                <label for="password">Xác Nhận Mật Khẩu</label>
                                <input type="password" name="confirmP" class="form-control" placeholder="Mật Khẩu Của Bạn" id="password">
                            </div>

                            <div class="form-group last mb-3">
                                <label for="password">Họ Và Tên</label>
                                <input type="text" name="fullName" class="form-control" placeholder="Họ Và Tên Của Bạn" id="password">
                            </div>

                            <div class="form-group last mb-3">
                                <label for="password">Địa Chỉ</label>
                                <input type="text" name="address" class="form-control" placeholder="Địa Chỉ Của Bạn" id="password">
                            </div>

                            <div class="form-group last mb-3">
                                <label for="password">Số Điện Thoại</label>
                                <input type="text" name="phone" class="form-control" placeholder="Số Điện Thoại Của Bạn" id="password">
                            </div>

                            <div class="form-group last mb-3">
                                <label for="password">Giới Tính: </label>
                                <!--                                <input type="text" name="phone" class="form-control" placeholder="Số Điện Thoại Của Bạn" id="password">-->
                                <label>
                                    <input type="radio" name="gender" value="male">
                                    Nam
                                    <input type="radio" name="gender" value="female">
                                    Nữ
                                    <input type="radio" name="gender" value="other">
                                    Khác
                                </label>
                            </div>
                            <div class="form-group last mb-3">
                                <label for="password">Ngày sinh</label>
                                <input type="dateOfBirth" class="form-control" placeholder="Ngày sinh của bạn" id="password">
                            </div>
                            <input style="color: white; background-color:  #309cf4; border: none;" name="action" type="submit" value="Register" class="btn btn-block btn-primary">
                        </form>
                    </div>
                </div>
            </div>
        </div>




        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
