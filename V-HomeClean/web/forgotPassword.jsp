<%-- 
    Document   : forgotPassword
    Created on : May 27, 2023, 1:07:17 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">-->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset='utf-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <title>V-HomeClean - Quên Mật Khẩu</title>
        <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'rel='stylesheet'>
        <link href='css/style.css' rel='stylesheet'>
        <script type='text/javascript'src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Poppins:wght@600;700&display=swap" rel="stylesheet"> 
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        <style>
            body {
                background-position: center;
                background-color: #eee;
                background-repeat: no-repeat;
                background-size: cover;
                color: #505050;
                font-family: "Rubik", Helvetica, Arial, sans-serif;
                font-size: 14px;
                font-weight: normal;
                line-height: 1.5;
                text-transform: none
            }

            .forgot {
                background-color: #fff;
                padding: 12px;
                border: 1px solid #dfdfdf
            }

            .padding-bottom-3x {
                padding-bottom: 72px !important
            }
            .card-footer {
                background-color: #fff
            }

            .btn {
                font-size: 13px
            }

            .form-control:focus {
                color: #495057;
                background-color: #fff;
                border-color: #76b7e9;
                outline: 0;
                box-shadow: 0 0 0 0px #28a745
            }
        </style>
    </head>
    <body oncontextmenu='return false' class='snippet-body'>
        <div class="container padding-bottom-3x mb-2 mt-5">
            <div class="row justify-content-center">
                <div class="col-lg-8 col-md-10">
                    <div class="forgot">
                        <h2>Bạn quên mật khẩu?</h2>
                        <p>Lấy lại và thay đổi mật khẩu theo 3 bước dưới đây!</p>
                        <ol class="list-unstyled">
                            <li><span class="text-primary text-medium">1. </span>Nhập địa chỉ email của bạn bên dưới.</li>
                            <li><span class="text-primary text-medium">2. </span>Hệ thống của chúng tôi sẽ gửi mã OTP vào email của bạn.</li>
                            <li><span class="text-primary text-medium">3. </span>Nhập OTP và bắt đầu thay đổi mật khẩu!</li>
                        </ol>
                    </div>
                    <form class="card mt-4" action="MainController" method="POST">
                        <div class="card-body">
                            <strong style="color: red">${message}</strong>
                            <div class="form-group">
                                <label for="email-for-pass">Nhập địa chỉ email của bạn: </label> <input
                                    class="form-control" type="email" name="email" id="email-for-pass" required=""><small
                                    class="form-text text-muted">Nhập địa chỉ email đã đăng ký. Sau đó, hệ thống của chúng tôi sẽ gửi email OTP đến địa chỉ này.</small>
                            </div>
                        </div>
                        <div class="card-footer">
                            <!--                            <button class="btn btn-success" name="action" type="submit">Get New
                                                            Password</button>-->
                            <input class="btn btn-success" type="submit" name="action" value="Lấy lại mật khẩu">
                            <a href="login.jsp" class="btn btn-primary">Quay về trang đăng nhập.</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>  
        <script type='text/javascript'
        src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>
        <script type='text/javascript' src=''></script>
        <script type='text/javascript' src=''></script>
        <script type='text/Javascript'></script>
    </body>
</html>
