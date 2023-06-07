<%-- 
    Document   : login
    Created on : May 30, 2023, 11:00:58 AM
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
                                <h1>Login</h1>
                                <p class="account-subtitle">Access to our dashboard</p>

                                <form action="dashboard/index.jsp">
                                    <div class="form-group">
                                        <input class="form-control" type="text" placeholder="Email">
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" type="text" placeholder="Password">
                                    </div>
                                    <div class="form-group">
                                        <button class="btn btn-primary btn-block" type="submit">Login</button>
                                    </div>
                                </form>

                                <div class="text-center forgotpass"><a href="dashboard/forgot-password.jsp">Forgot Password?</a></div>
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
