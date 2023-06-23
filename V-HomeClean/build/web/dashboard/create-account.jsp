<%-- 
    Document   : report-users
    Created on : May 28, 2023, 11:33:15 PM
    Author     : Trung Kien
--%>

<%@page import="DTO.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, user-scalable=0"
            />
        <title>Dashboard - Tạo Tài Khoản</title>

        <link rel="stylesheet" href="css/assets/css/bootstrap.min.css" />

        <link rel="stylesheet" href="css/assets/css/font-awesome.min.css" />

        <link rel="stylesheet" href="css/assets/css/feathericon.min.css" />

        <link rel="stylesheet" href="css/assets/plugins/morris/morris.css" />

        <link rel="stylesheet" href="css/assets/css/style.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    </head>
    <body>

        <%
            UserError userError = (UserError) request.getAttribute("USER_ERROR");
            if (userError == null) {
                userError = new UserError();
                request.setAttribute("USER_ERROR", userError);
            }
        %>

        <div class="main-wrapper">
            <jsp:include page="header.jsp"></jsp:include>
            <jsp:include page="sidebar.jsp"></jsp:include>
                <div class="page-wrapper">
                    <div class="content container-fluid">
                        <div class="page-header">
                            <div class="row align-items-center">
                                <div class="col">
                                    <h3 class="page-title">Tạo Tài Khoản Mới</h3>
                                    <ul class="breadcrumb">
                                        <li class="breadcrumb-item">
                                            <a href="dashboard/index.jsp">Dashboard</a>
                                        </li>
                                        <li class="breadcrumb-item active">Tạo Tài Khoản Mới</li>
                                    </ul>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h4 class="card-title text-center text-purple  font-weight-600">Điền Thông Tin Tài Khoản</h4>
                                    </div>
                                    <div class="card-body">



                                        <form action="AccountCreateController" method="post" enctype="multipart/form-data">
                                            <div class="form-group row">
                                                <label for="fullName" class="col-form-label col-md-2 text-info">Họ và Tên</label>
                                                <div class="col-md-10">
                                                    <input required="Vui Lòng Nhập tên" type="text" name="fullName" id="fullName" class="form-control" placeholder="Nhập đầy đủ họ và tên">
                                                </div>
                                            <% if (userError.getFullName() != null) {%>
                                            <strong style="color: #e72734;" ><%=userError.getFullName()%></strong>
                                            <% } %>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-form-label col-md-2 text-info">Email</label>
                                            <div class="col-md-10">
                                                <input required="" type="email" name="email" class="form-control" placeholder="Nhập địa chỉ email">
                                                <% if (userError.getEmail() != null) {%>
                                                <strong style="color: #e72734; text-align: center;" ><%=userError.getEmail()%></strong>
                                                <% }%>
                                            </div>

                                        </div>
                                        <div class="form-group row">
                                            <label class="col-form-label col-md-2 text-info">Mật khẩu</label>
                                            <div class="wrapper col-md-10">
                                                <div class="pass-field">
                                                    <input required="" name="password" type="password" class="form-control" placeholder="Mật khẩu">
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
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-form-label col-md-2 text-info">Mật khẩu</label>
                                            <div class="wrapper col-md-10">
                                                <div class="pass-field confirm-pass">
                                                    <input type="password" name="confirmP" class="form-control" placeholder="Xác nhận mật khẩu" id="confirmP">
                                                    <i class="fa-solid fa-eye"></i>
                                                </div>
                                                <div class="requirement-confirm requirement">
                                                    <p>Vui lòng:</p>
                                                    <ul class="requirement-list">
                                                        <li><i class="fa-solid fa-circle"></i><span>Xác nhận mật khẩu</span></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-form-label col-md-2 text-info">Số điện thoại</label>
                                            <div class="col-md-10">
                                                <input required="" type="text" name="phone" class="form-control" placeholder="Nhập số điện thoại">
                                                <% if (userError.getPhone() != null) {%>
                                                <strong style="color: #e72734;" ><%=userError.getPhone()%></strong>
                                                <% } %>
                                            </div>

                                        </div>
                                        <div class="form-group row">
                                            <label class="col-form-label col-md-2 text-info">Địa chỉ</label>
                                            <div class="col-md-10">
                                                <input required="" type="text" name="address" class="form-control" placeholder="Nhập địa chỉ">
                                                <% if (userError.getAddress() != null) {%>
                                                <strong style="color: #e72734;" ><%=userError.getAddress()%></strong>
                                                <% }%>
                                            </div>

                                        </div>

                                        <div class="form-group row">
                                            <label class="col-form-label col-md-2 text-info">Ngày sinh</label>
                                            <div class="col-md-10">
                                                <input required="" type="date" name="dateOfBirth" class="form-control">
                                                <% if (userError.getDateOfBirth() != null) {%>
                                                <strong style="color: #e72734;" ><%= userError.getDateOfBirth()%></strong>
                                                <% }%>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-form-label col-md-2 text-info">Hình ảnh</label>
                                            <div class="col-md-10">
                                                <input class="form-control" type="file" name="image">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-form-label col-md-2 text-info">Chức vụ</label>
                                            <div class="col-md-10">
                                                <select required="" name="roleID" class="form-control form-select">
                                                    <option>-- Chọn --</option>
                                                    <option value="1">Admin</option>
                                                    <option value="3">Quản lý</option>
                                                    <option value="6">Nhân viên vệ sinh</option>
                                                    <option value="2">Nhân viên sửa chữa điện</option>
                                                    <option value="5">Nhân viên sửa chữa nước</option>
                                                </select>
                                                <% if (userError.getRoleID() != null) {%>
                                                <strong style="color: #e72734;" ><%= userError.getRoleID()%></strong>
                                                <% }%>
                                            </div>

                                        </div>
                                        <div class="form-group row">
                                            <label class="col-form-label col-md-2">Giới tính</label>
                                            <div class="col-md-10">
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="gender" value="Male"> Nam
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="gender" value="Female"> Nữ
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="gender" value="Other"> Khác
                                                    </label>
                                                </div>
                                                <% if (userError.getGender() != null) {%>
                                                <strong style="color: #e72734;"><%= userError.getGender()%></strong>
                                                <% }%>
                                            </div>
                                        </div>
                                        <div class="form-group mb-0 row">
                                            <label class="col-form-label col-md-2">Lương cơ bản</label>
                                            <div class="col-md-10">
                                                <div class="input-group">
                                                    <span class="input-group-text">VND</span>
                                                    <input required="" name="salary" class="form-control" type="text">
                                                </div>
                                            </div>
                                        </div>
                                        <div style="text-align: center;" class="form-group mt-4">
                                            <input name="action" type="submit" value="Tạo Tài Khoản Mới" class="registerButton btn btn-info">
                                        </div>
                                    </form>
                                </div>
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
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script>
            (function ($) {
                "use strict";
                // Check valid password and confirm password
                const passwordInput = document.querySelector(".pass-field input");
                const confirmInput = document.querySelector(".confirm-pass input");
                const eyeIcon = document.querySelector(".pass-field i");
                const eyeIconConfirm = document.querySelector(".confirm-pass i");
                const requirementList = document.querySelectorAll(".requirement-list li");
                const requirementDiv = document.querySelector(".requirement");
                const confirmRequirementDiv = document.querySelector(".requirement-confirm");
                const confirmRequirementItem = document.querySelector(".requirement-confirm li");
                const submitButton = document.querySelector(".registerButton");
                const roomInput = document.querySelector(".room-field input");
                const roomRequirementList = document.querySelector(".room-requirement-list");
                const roomRequirementItem = document.querySelector(".room-requirement-list li");
                const roomRequirementDiv = document.querySelector(".room-requirement");

                const requirements = [
                    {regex: /.{8,}/, index: 0}, // Minimum of 8 characters
                    {regex: /[0-9]/, index: 1}, // At least one number
                    {regex: /[a-z]/, index: 2}, // At least one lowercase letter
                    {regex: /[^A-Za-z0-9]/, index: 3}, // At least one special character
                    {regex: /[A-Z]/, index: 4}, // At least one uppercase letter
                ];

                requirementList.forEach((requirementItem) => {
                    requirementItem.addEventListener("input", function () {
                        validatePasswordRequirements();
                    });
                });

                passwordInput.addEventListener("keyup", (e) => {
                    requirements.forEach((item) => {
                        const isValid = item.regex.test(e.target.value);
                        const requirementItem = requirementList[item.index];

                        if (isValid) {
                            requirementItem.classList.add("valid");
                            requirementItem.firstElementChild.className = "fa-solid fa-check";
                        } else {
                            requirementItem.classList.remove("valid");
                            requirementItem.firstElementChild.className = "fa-solid fa-warning";
                        }
                    });

                    validatePasswordRequirements();
                });

                passwordInput.addEventListener("input", function () {
                    const passwordValue = this.value;
                    const hasPassword = passwordValue.trim() !== "";

                    if (hasPassword) {
                        requirementDiv.style.display = "block";
                    } else {
                        requirementDiv.style.display = "none";
                    }

                    validatePasswordRequirements();
                });

                confirmInput.addEventListener("input", function () {
                    const confirmPass = this.value;
                    const hasConfirm = confirmPass.trim() !== "";

                    if (hasConfirm) {
                        confirmRequirementDiv.style.display = "block";
                    } else {
                        confirmRequirementDiv.style.display = "none";
                    }

                    validatePasswordRequirements();
                });

                confirmInput.addEventListener("input", function () {
                    const confirmPassword = this.value;
                    const password = passwordInput.value;

                    if (confirmPassword === password) {
                        confirmRequirementItem.classList.add("valid");
                        confirmRequirementItem.firstElementChild.className = "fa-solid fa-check";
                    } else {
                        confirmRequirementItem.classList.remove("valid");
                        confirmRequirementItem.firstElementChild.className = "fa-solid fa-warning";
                    }

                    validatePasswordRequirements();
                });

                eyeIcon.addEventListener("click", () => {
                    passwordInput.type = passwordInput.type === "password" ? "text" : "password";
                    if (passwordInput.type === "password") {
                        eyeIcon.className = "fa-solid fa-eye";
                    } else {
                        eyeIcon.className = "fa-solid fa-eye-slash";
                    }
                    passwordInput.focus();
                });

                eyeIconConfirm.addEventListener("click", () => {
                    confirmInput.type = confirmInput.type === "password" ? "text" : "password";
                    if (confirmInput.type === "password") {
                        eyeIconConfirm.className = "fa-solid fa-eye";
                    } else {
                        eyeIconConfirm.className = "fa-solid fa-eye-slash";
                    }
                    confirmInput.focus();
                });

                roomInput.addEventListener("input", function () {
                    const roomValue = this.value;
                    const hasRoomValue = roomValue.trim() !== "";
                    if (hasRoomValue) {
                        roomRequirementDiv.style.display = "block";
                    } else {
                        roomRequirementDiv.style.display = "none";
                    }
                    const isValidFormat = /^S\d{2}-\d{2}$/.test(roomValue); // Check if the room code matches the format S01-01

                    if (isValidFormat) {
                        roomRequirementItem.classList.add("valid");
                        roomRequirementItem.firstElementChild.className = "fa-solid fa-check";
                    } else {
                        roomRequirementItem.classList.remove("valid");
                        roomRequirementItem.firstElementChild.className = "fa-solid fa-warning";
                    }

                    validatePasswordRequirements();
                });

                function validatePasswordRequirements() {
                    const allRequirementsValid = Array.from(requirementList).every((requirementItem) =>
                        requirementItem.classList.contains("valid")
                    );

                    const password = passwordInput.value;
                    const confirmPassword = confirmInput.value;
                    const isPasswordMatch = password === confirmPassword;
                    const hasPassword = password.trim() !== "";

                    if (allRequirementsValid && isPasswordMatch && hasPassword) {
                        submitButton.disabled = false;
                    } else {
                        submitButton.disabled = true;
                    }
                }

                // Disable the register button by default
                submitButton.disabled = true;

            })(jQuery);

        </script>
    </body>
</html>

