<%-- 
    Document   : 404
    Created on : May 20, 2023, 9:49:33 PM
    Author     : Trung Kien
--%>

<%@page import="DTO.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>Apex - Home Repair Website Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Poppins:wght@600;700&display=swap" rel="stylesheet"> 

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
        <link href="css/Loginstyle.css" rel="stylesheet">
    </head>

    <body>
        <jsp:include page="navigation.jsp"></jsp:include>

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

        <%
            UserError userError = (UserError) request.getAttribute("USER_ERROR");
            if (userError == null) {
                userError = new UserError();
                request.setAttribute("USER_ERROR", userError);
            }
        %>

        <div class="d-lg-flex half">
            <div class="container">
                <div class="row align-items-center justify-content-center login-form">
                    <div  class="col-md-8 form">
                        <h3 class="m-2">Đăng Nhập</h3>
                        <strong style="color: green">${message}</strong>
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
                                <label for="remember-me">Nhớ Mật Khẩu
                                    <input name="remember-me" type="checkbox" checked=""/>
                                    <div class="control__indicator"></div>
                                </label>
                                <label class="ml-auto">
                                    <a style="color:black;" href="forgotPassword.jsp" class="forgot-pass">Quên Mật Khẩu</a>
                                </label>
                            </div>
                            <div style="text-align: center;" class="form-group">
                                <input name="action" type="submit" value="Đăng Nhập" class="btn btn-block btn-primary">
                            </div>
                        </form>
                    </div>
                </div>
            </div>



            <div class="container">
                <div class="row align-items-center justify-content-center">
                    <div class="col-md-8 form">
                        <h3 class="m-2">Đăng Ký</h3>
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
                            <div style="text-align: center;" class="form-group">
                                <input name="action" type="submit" value="Đăng Ký" class="btn btn-block btn-primary">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>


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
