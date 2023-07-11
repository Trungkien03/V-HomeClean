<%-- 
    Document   : forgot-password
    Created on : May 30, 2023, 11:02:25 AM
    Author     : Trung Kien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Dreamchat - Dashboard</title>

        <link rel="shortcut icon" type="image/x-icon" href="css/assets/img/favicon.png">

        <link rel="stylesheet" href="css/assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="css/assets/css/font-awesome.min.css">

        <link rel="stylesheet" href="css/assets/css/feathericon.min.css">

        <link rel="stylesheet" href="css/assets/plugins/morris/morris.css">

        <link rel="stylesheet" href="css/assets/css/style.css">
    </head>
    <body>

        <div class="main-wrapper login-body">
            <div class="login-wrapper">
                <div class="container">
                    <div class="loginbox">
                        <div class="login-right">
                            <div class="login-right-wrap">
                                <h1>Forgot Password?</h1>
                                <p class="account-subtitle">Enter your email to get a password reset link</p>

                                <form action="dashboard/login.jsp">
                                    <div class="form-group">
                                        <input class="form-control" type="text" placeholder="Email">
                                    </div>
                                    <div class="form-group mb-0">
                                        <button class="btn btn-primary btn-block" type="submit">Reset Password</button>
                                    </div>
                                </form>

                                <div class="text-center dont-have">Remember your password? <a href="dashboard/login.jsp">Login</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <script src="css/assets/js/jquery-3.6.0.min.js"></script>

        <script src="css/assets/js/bootstrap.bundle.min.js"></script>

        <script src="css/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

        <script src="css/assets/js/script.js"></script>
    </body>
</html>
