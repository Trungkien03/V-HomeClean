<%@page import="DTO.AccountDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset='utf-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <title>V-HomeClean - Cập Nhật Lại Mật Khẩu</title>
        <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link href="css/Loginstyle.css" rel="stylesheet">
        <link rel="shortcut icon" type="image/x-icon" href="css/assets/img/icon.png">
        <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css' rel='stylesheet'>
        <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css' rel='stylesheet'>
        <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
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
    <body oncontextmenu='return false' class='snippet-body bg-info'>

        <%
            AccountDTO Acc = (AccountDTO) session.getAttribute("Account");
            if (Acc != null) {
        %>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/5.1.1/bootstrap-social.css">
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

                                <form style="margin-right: 50px; margin-left: 50px;" class="form-horizontal" action="MainController" method="POST">
                                    <strong style="color: red">${ERROR}</strong>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group password"> <!-- Fixed class name here -->
                                                <label style="color: black">Mật khẩu mới</label>
                                                <input required="" type="password" name="newPassword" class="form-control">
                                                <p>Mật khẩu mới phải chứa:</p>
                                                <ul class="requirement-list">
                                                    <li><i class="fa-solid fa-warning"></i><span>Ít nhất 8 ký tự</span></li>
                                                    <li><i class="fa-solid fa-warning"></i><span>Ít nhất 1 số tự nhiên (0...9)</span></li>
                                                    <li><i class="fa-solid fa-warning"></i><span>Ít nhất 1 ký tự thường (a...z)</span></li>
                                                    <li><i class="fa-solid fa-warning"></i><span>Ít nhất 1 ký tự đặc biệt (!...$) </span></li>
                                                    <li><i class="fa-solid fa-warning"></i><span>Ít nhất 1 ký tự in hoa (A...Z)</span></li>
                                                </ul>
                                            </div>

                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label style="color: black">Xác nhận mật khẩu mới</label>
                                                <input required="" type="password" name="confirm" class="form-control">
                                                <p class="confirm-new-pass"> <i class="fa-solid fa-warning"></i>Xác nhận đúng mật khẩu mới!</p>
                                            </div>
                                        </div>
                                    </div>

                                    <input class="btn btn-outline-primary change-pass-button" type="submit" name="action" value="Cập nhật mật khẩu" class="btn btn-block btn-info">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

        <!-- Your HTML form code remains the same -->

        <script>
            // Function to be executed when the DOM is fully loaded
            document.addEventListener('DOMContentLoaded', function () {
                // Khởi tạo biến để lưu trạng thái của mỗi điều kiện
                let isNewPasswordValid = false;
                let isConfirmationValid = false;

                // Check nhập mật khẩu mới
                const newPasswordInput = document.querySelector('input[name="newPassword"]');
                const passwordField = document.querySelector('.form-group.password'); // Select the parent container
                const requirementList = passwordField.querySelector('.requirement-list'); // Select the requirement list within the parent container
                const requirementItems = requirementList.querySelectorAll('li');

                // Show requirement list when focusing on the password input
                requirementList.style.display = 'none';
                newPasswordInput.addEventListener('input', checkNewPassword);
                newPasswordInput.addEventListener('focus', showRequirementList);

                newPasswordInput.addEventListener('input', checkNewPassword);

                function checkNewPassword(event) {
                    const newPassword = event.target.value;

                    // Kiểm tra các yêu cầu cho mật khẩu mới
                    const lengthRequirement = newPassword.length >= 8;
                    const numberRequirement = /\d/.test(newPassword);
                    const lowercaseRequirement = /[a-z]/.test(newPassword);
                    const specialCharRequirement = /[!@#$%^&*]/.test(newPassword);
                    const uppercaseRequirement = /[A-Z]/.test(newPassword);

                    // Hiển thị requirementList cho các yêu cầu thỏa mãn
                    requirementItems.forEach((item, index) => {
                        const icon = item.querySelector('i');

                        if (index === 0 && lengthRequirement) {
                            icon.classList.remove('fa-warning');
                            icon.classList.add('fa-check');
                            item.style.color = '#00d747';
                        } else if (index === 1 && numberRequirement) {
                            icon.classList.remove('fa-warning');
                            icon.classList.add('fa-check');
                            item.style.color = '#00d747';
                        } else if (index === 2 && lowercaseRequirement) {
                            icon.classList.remove('fa-warning');
                            icon.classList.add('fa-check');
                            item.style.color = '#00d747';
                        } else if (index === 3 && specialCharRequirement) {
                            icon.classList.remove('fa-warning');
                            icon.classList.add('fa-check');
                            item.style.color = '#00d747';
                        } else if (index === 4 && uppercaseRequirement) {
                            icon.classList.remove('fa-warning');
                            icon.classList.add('fa-check');
                            item.style.color = '#00d747';
                        } else {
                            icon.classList.remove('fa-check');
                            icon.classList.add('fa-warning');
                            item.style.color = 'red';
                        }
                    });

                    isNewPasswordValid = lengthRequirement && numberRequirement && lowercaseRequirement && specialCharRequirement && uppercaseRequirement;
                    if (newPassword !== '') {
                        requirementList.style.display = 'block';
                        isNewPasswordValid = lengthRequirement && numberRequirement && lowercaseRequirement && specialCharRequirement && uppercaseRequirement && notEqualRequirement;
                    } else {
                        requirementList.style.display = 'none';
                        isNewPasswordValid = false;
                    }
                    // Kiểm tra trạng thái tổng hợp và kích hoạt/disabled nút
                    updateButtonState();
                }
                function showRequirementList() {
                    if (newPasswordInput.value !== '') {
                        requirementList.style.display = 'block';
                    } else {
                        requirementList.style.display = 'none';
                    }
                }
                // Confirm pass
                const confirmInput = document.querySelector('input[name="confirm"]');
                const confirmMessage = document.querySelector('.confirm-new-pass');

                confirmMessage.style.display = 'none';

                confirmInput.addEventListener('input', checkConfirmation);

                function checkConfirmation(event) {
                    const newPassword = newPasswordInput.value;
                    const confirmation = event.target.value;
                    if (confirmation === newPassword) {
                        confirmMessage.innerHTML = '<i class="fa-solid fa-check"></i> Xác nhận đúng mật khẩu mới!';
                        confirmMessage.style.color = '#00d747';
                        isConfirmationValid = true; // Đánh dấu xác nhận mật khẩu mới là hợp lệ
                    } else {
                        confirmMessage.innerHTML = '<i class="fa-solid fa-warning"></i> Xác nhận đúng mật khẩu mới!';
                        confirmMessage.style.color = 'red';
                        isConfirmationValid = false; // Đánh dấu xác nhận mật khẩu mới không hợp lệ
                    }

                    if (confirmation !== '') {
                        confirmMessage.style.display = 'block';
                    } else {
                        confirmMessage.style.display = 'none';
                    }

                    // Kiểm tra trạng thái tổng hợp và kích hoạt/disabled nút
                    updateButtonState();
                }

                // Cập nhật trạng thái của nút dựa trên kết quả kiểm tra
                function updateButtonState() {
                    const button = document.querySelector('.change-pass-button');
                    const isButtonDisabled = !(isNewPasswordValid && isConfirmationValid);

                    button.disabled = isButtonDisabled;
                }
            });
        </script>




        <%
            } else {
                response.sendRedirect("login.jsp");
            }
        %>

    </body>
</html>


