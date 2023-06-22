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
        <title>V-HomeClean - Đăng Nhập và Đăng Ký</title>
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/Loginstyle.css" rel="stylesheet">
        <style>
            .container-fluid.page-header {
                position: relative;
            }

            .container-fluid.page-header:before {
                content: "";
                background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.4)), url(https://medvance.com.sg/wp-content/uploads/2016/08/medvance-my-account-banner-no-gloss.jpg);
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                z-index: -1;
            }
        </style>
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

        <div class="container-fluid page-header wow fadeIn py-5" data-wow-delay="0.1s">
            <div class="container text-center py-5">
                <h1 class="display-4 text-white animated slideInDown mb-4">Đăng Nhập và Đăng Ký</h1>
            </div>
        </div>
        <div class="d-lg-flex half">
            <div class="container">
                <div class="row align-items-center justify-content-center">
                    <div  class="col-md-8 form login-form">
                        <h3 class="m-2">Đăng Nhập</h3>
                        <div class="text-center">
                            <strong style="color: green">${message}</strong>
                            <strong style="color: red">${ERROR}</strong>
                        </div>
                        <form action="MainController" method="post">
                            <div class="form-group first mb-3">
                                <label for="username">Email</label>
                                <input required="" name="email" type="email" class="form-control" placeholder="Nhập email" id="username" value="<%=uname%>">
                            </div>
                            <div class="form-group last mb-3">
                                <label for="password">Mật Khẩu</label>
                                <input required="" name="password" type="password" class="form-control" placeholder="Mật khẩu" id="password" value="<%=pass%>">
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
                    <div class="col-md-8 form register-form">
                        <h3 class="m-2">Đăng Ký Tài Khoản</h3>
                        <form action="MainController" method="post">
                            <div class="form-group mb-3">
                                <!--                                <label for="username">Tên Đăng Nhập</label>-->
                                <input type="email" name="email" class="form-control" placeholder="Nhập email" id="username">
                                <% if (userError.getEmail() != null) {%>
                                <strong style="color: #e72734;" ><%=userError.getEmail()%></strong>
                                <% } %>
                            </div>
                            <div class="form-group mb-3">
                                <!--                                <label for="password">Mật Khẩu</label>-->
                                <div class="wrapper">
                                    <div class="pass-field">
                                        <input name="password" type="password" class="form-control" placeholder="Mật khẩu">
                                        <i class="fa-solid fa-eye"></i>
                                    </div>
                                    <div class="requirement mt-3">
                                        <p>Mật khẩu phải chứa:</p>
                                        <ul class="requirement-list">
                                            <li><i class="fa-solid fa-circle"></i><span>Ít nhất 8 ký tự</span></li>
                                            <li><i class="fa-solid fa-circle"></i><span>Ít nhất 1 số tự nhiên (0...9)</span></li>
                                            <li><i class="fa-solid fa-circle"></i><span>Ít nhất 1 ký tự thường (a...z)</span></li>
                                            <li><i class="fa-solid fa-circle"></i><span>Ít nhất 1 ký tự đặc biệt (!...$) </span></li>
                                            <li><i class="fa-solid fa-circle"></i><span>Ít nhất 1 ký tự in hoa (A...Z)</span></li>
                                        </ul>
                                    </div>
                                </div>
                                <% if (userError.getPassword() != null) {%>
                                <strong style="color: #e72734;" ><%=userError.getPassword()%></strong>
                                <% } %>
                            </div>
                            <div class="form-group mb-3">
                                <!--                                <label for="password">Xác Nhận Mật Khẩu</label>-->
                                <div class="wrapper">
                                    <div class="pass-field confirm-pass">
                                        <input type="password" name="confirmP" class="form-control" placeholder="Xác nhận mật khẩu" id="confirmP">
                                        <i class="fa-solid fa-eye"></i>
                                    </div>
                                    <div class="requirement-confirm requirement" style="display: none;">
                                        <p>Vui lòng:</p>
                                        <ul class="requirement-list">
                                            <li><i class="fa-solid fa-circle"></i><span>Xác nhận mật khẩu</span></li>
                                        </ul>
                                    </div>
                                </div>

                                <% if (userError.getConfirm() != null) {%>
                                <strong style="color: #e72734;" ><%=userError.getConfirm()%></strong>
                                <% } %>
                            </div>
                            <div class="form-group mb-3">
                                <!--                                <label for="password">Họ Và Tên</label>-->
                                <input type="text" name="fullName" class="form-control" placeholder="Họ và tên" id="password">
                                <% if (userError.getFullName() != null) {%>
                                <strong style="color: #e72734;" ><%=userError.getFullName()%></strong>
                                <% } %>
                            </div>
                            <div class="form-group mb-3">
                                <div class="wrapper">
                                    <div class="room-field">
                                        <input type="text" name="roomID" class="form-control" placeholder="Mã Phòng Ex:S01-01" id="confirmP">
                                    </div>
                                    <div class="room-requirement requirement" style="display: none;">
                                        <p>Vui lòng:</p>
                                        <ul class="room-requirement-list requirement-list">
                                            <li><i class="fa-solid fa-warning"></i><span>Nhập đúng định dạng mã phòng</span></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mb-3">
                                <!--                                <label for="password">Địa Chỉ</label>-->
                                <select required="" class="form-select" id="vinhomesOptions" name="area" aria-label="Guardian Relationship">
                                    <option value="">-- Chọn khu vực Vinhomes --</option>
                                    <option value="Vinhomes Central Park - TP. Hồ Chí Minh">Vinhomes Central Park - TP. Hồ Chí Minh</option>
                                    <option value="Vinhomes Golden River - TP. Hồ Chí Minh">Vinhomes Golden River - TP. Hồ Chí Minh</option>
                                    <option value="Vinhomes Metropolis - Hà Nội">Vinhomes Metropolis - Hà Nội</option>

                                </select>
                                <% if (userError.getAddress() != null) {%>
                                <strong style="color: #e72734;" ><%=userError.getAddress()%></strong>
                                <% } %>
                            </div>
                            <div class="form-group mb-3">
                                <!--                          <label for="password">Số Điện Thoại</label> -->
                                <input required="" type="text" name="phone" class="form-control" placeholder="Số điện thoại" id="password">
                                <% if (userError.getPhone() != null) {%>
                                <strong style="color: #e72734;" ><%=userError.getPhone()%></strong>
                                <% } %>
                            </div>
                            <div class="form-group text-center m-2">
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
                                <input required="" type="date" name="DateOfBirth" class="form-control" placeholder="Ngày sinh của bạn" id="password">
                                <% if (userError.getDateOfBirth() != null) {%>
                                <strong style="color: #e72734;" ><%= userError.getDateOfBirth()%></strong>
                                <% }%>
                            </div>
                            <div style="text-align: center;" class="form-group">
                                <input name="action" type="submit" value="Đăng Ký" class="registerButton  btn btn-block btn-primary">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>


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
