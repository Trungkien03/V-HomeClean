<%-- 
    Document   : index
    Created on : May 23, 2023, 2:28:25 PM
    Author     : Asus
--%>

<%@page import="DTO.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="fonts/icomoon/style.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/Loginstyle.css">
        <title>Login Page</title>
    </head>

    <body>


        <%
            String uname = "";
            String pass = "";
            Cookie[] cookies = request.getCookies();

            if (cookies != null) {
                for (Cookie cook : cookies) {
                    if (cook.getName().equals("email")) {
                        uname = cook.getValue();
                    } else if (cook.getName().equals("Pass")) {
                        pass = cook.getValue();
                    }
                }

            }


        %>

        <%            UserError userError = (UserError) request.getAttribute("USER_ERROR");
            if (userError == null) {
                userError = new UserError();
            }


        %>

        <div class="d-lg-flex half">
                <div class="container">
                    <div class="row align-items-center justify-content-center">
                        <div  class="col-md-9 form">
                            <h3>Đăng nhập vào <strong style="color: #f8e43c">V-HomeClean</strong></h3>
                            <strong style="color: red">${ERROR}</strong>
                            <form action="MainController" method="post">
                                <div class="form-group first mb-3">
                                    <label for="username">Tên Đăng Nhập</label>
                                    <input name="email" type="email" class="form-control" placeholder="Email của bạn" id="username" value="<%=uname%>">
                                </div>
                                <div class="form-group last mb-3">
                                    <label for="password">Mật Khẩu</label>
                                    <input name="password" type="password" class="form-control" placeholder="Mật Khẩu Của Bạn" id="password" value="<%=pass%>">
                                </div>
                                <div class="form-group d-flex mb-5 align-items-center">
                                    <label for="remember-me" class="control control--checkbox mb-0">Nhớ Mật Khẩu
                                        <input name="remember-me" type="checkbox"/>
                                        <div class="control__indicator"></div>
                                    </label>
                                    <label class="ml-auto">
                                        <a style="color:black;" href="#" class="forgot-pass">Quên Mật Khẩu</a>
                                    </label>
                                </div>
                                <div class="form-group">
                                    <input style="color: white; background-color:  #309cf4; border: none;" name="action" type="submit" value="Đăng Nhập" class="btn btn-block btn-primary">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>


                           
            <div class="container">
                <div class="row align-items-center justify-content-center">
                    <div class="col-md-9 form">
                        <h3>Đăng ký vào <strong style="color: #f8e43c">V-HomeClean</strong></h3>
                        <form action="MainController" method="post">
                            <div class="form-group mb-3">
                                <label for="username">Tên Đăng Nhập</label>
                                <input type="email" name="email" class="form-control" placeholder="Email của bạn" id="username">
                                <% if (userError.getEmail() != null) {%>
                                <strong style="color: #e72734;" ><%=userError.getEmail()%></strong>
                                <% } %>
                            </div>
                            <div class="form-group mb-3">
                                <label for="password">Mật Khẩu</label>
                                <input name="password" type="password" class="form-control" placeholder="Mật Khẩu Của Bạn" id="password">
                                <% if (userError.getPassword() != null) {%>
                                <strong style="color: #e72734;" ><%=userError.getPassword()%></strong>
                                <% } %>
                            </div>
                            <div class="form-group mb-3">
                                <label for="password">Xác Nhận Mật Khẩu</label>
                                <input type="password" name="confirmP" class="form-control" placeholder="Mật Khẩu Của Bạn" id="password">
                                <% if (userError.getConfirm() != null) {%>
                                <strong style="color: #e72734;" ><%=userError.getConfirm()%></strong>
                                <% } %>
                            </div>
                            <div class="form-group mb-3">
                                <label for="password">Họ Và Tên</label>
                                <input type="text" name="fullName" class="form-control" placeholder="Họ Và Tên Của Bạn" id="password">
                                <% if (userError.getFullName() != null) {%>
                                <strong style="color: #e72734;" ><%=userError.getFullName()%></strong>
                                <% } %>
                            </div>
                            <div class="form-group mb-3">
                                <label for="password">Địa Chỉ</label>
                                <input type="text" name="address" class="form-control" placeholder="Địa Chỉ Của Bạn" id="password">
                                <% if (userError.getAddress() != null) {%>
                                <strong style="color: #e72734;" ><%=userError.getAddress()%></strong>
                                <% } %>
                            </div>
                            <div class="form-group mb-3">
                                <label for="password">Số Điện Thoại</label>
                                <input type="text" name="phone" class="form-control" placeholder="Số Điện Thoại Của Bạn" id="password">
                                <% if (userError.getPhone() != null) {%>
                                <strong style="color: #e72734;" ><%=userError.getPhone()%></strong>
                                <% } %>
                            </div>
                            <div class="form-group mb-3">
                                <label for="password">Giới Tính:</label>
                                <label>
                                    <input type="radio" name="gender" value="male"> Nam
                                </label>
                                <label>
                                    <input type="radio" name="gender" value="female"> Nữ
                                </label>
                                <label>
                                    <input type="radio" name="gender" value="other"> Khác
                                </label>
                            </div>
                            <% if (userError.getGender() != null) {%>
                            <strong style="color: #e72734;"><%= userError.getGender()%></strong>
                            <% } %>
                            <div class="form-group mb-3">
                                <label for="DateOfBirth">Ngày sinh</label>
                                <input type="date" name="DateOfBirth" class="form-control" placeholder="Ngày sinh của bạn" id="password">
                                <% if (userError.getDateOfBirth() != null) {%>
                                <strong style="color: #e72734;" ><%= userError.getDateOfBirth()%></strong>
                                <% }%>
                            </div>
                            <div class="form-group">
                                <input style="color: white; background-color:  #309cf4; border: none;" name="action" type="submit" value="Đăng Ký" class="btn btn-block btn-primary">
                            </div>
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

