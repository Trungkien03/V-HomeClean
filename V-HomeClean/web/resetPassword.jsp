<%-- 
    Document   : resetPassword
    Created on : May 27, 2023, 1:07:52 PM
    Author     : Asus
--%>

<%@page import="DTO.UserError"%>
<%@page import="java.util.List"%>
<%@page import="DTO.AccountDTO"%>
<%@page import="DTO.AccountDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset='utf-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <title>V-HomeClean - Cập Nhật Lại Mật Khẩu</title>
        <link
            href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'
            rel='stylesheet'>
        <link
            href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css'
            rel='stylesheet'>
        <script type='text/javascript'
        src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
        <style>
            .placeicon {
                font-family: fontawesome
            }

            .custom-control-label::before {
                background-color: #dee2e6;
                border: #dee2e6
            }
        </style>
    </head>

    <%
        AccountDTO Acc = (AccountDTO) session.getAttribute("Account");
        if (Acc != null) {

    %>

    <body oncontextmenu='return false' class='snippet-body bg-info'>
      
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/5.1.1/bootstrap-social.css">
        

        <div>
            <!-- Container containing all contents -->
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-9 col-lg-7 col-xl-6 mt-5">
                        <!-- White Container -->
                        <div class="container bg-white rounded mt-2 mb-2 px-0">
                            <!-- Main Heading -->
                            <div class="row justify-content-center align-items-center pt-3">
                                <h1>
                                    <strong>Cập Nhật Lại Mật Khẩu</strong>
                                </h1>
                            </div>
                            <div class="pt-3 pb-3">

                                
                                <form class="form-horizontal" action="MainController" method="POST">
                                    <div class="form-group row justify-content-center px-3">
                                        <strong style="color: red" >${ERROR}</strong>
                                        <div class="col-9 px-0">
                                            <input type="password" name="password" placeholder="&#xf084; &nbsp; Mật Khẩu Mới"
                                                   class="form-control border-info placeicon" >
                                        </div>
                                    </div>
                                    <div class="form-group row justify-content-center px-3">
                                        <div class="col-9 px-0">
                                            <input type="password" name="confirm" 
                                                   placeholder="&#xf084; &nbsp; Xác Nhận Mật Khẩu Mới"
                                                   class="form-control border-info placeicon">
                                        </div>
                                    </div>

                                    <div class="form-group row justify-content-center">
                                        <div class="col-3 px-3 mt-3">
                                            <input class="btn btn-primary" type="submit" name="action" value="Cập nhật mật khẩu"
                                                   class="btn btn-block btn-info">
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <!-- Alternative Login -->
                            <div class="mx-0 px-0 bg-light">

                                <!-- Horizontal Line -->
                                <div class="px-4 pt-5">
                                    <hr>
                                </div>
                                <!-- Register Now -->
                                <div class="pt-2">
                                    <div class="row justify-content-center">
                                        <h5>
                                            Bạn đã có tài khoản?<span><a href="login.jsp"
                                                                         class="text-danger"> Đăng ký ngay!</a></span>
                                        </h5>


                                    </div>
                                    <div
                                        class="row justify-content-center align-items-center pt-4 pb-5">
                                        <div class="col-4">

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%            }
        %>

     <br>
          
     
     <script type='text/javascript'
        src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>
        
    </body>
</html>
