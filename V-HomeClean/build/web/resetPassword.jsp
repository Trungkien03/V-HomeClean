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
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js'></script>

        <script>
            let isNewPasswordValid = false;
            let isConfirmationValid = false;

            // Check nhập mật khẩu mới
            const newPasswordInput = document.querySelector('input[name="newPassword"]');
            const confirmInput = document.querySelector('input[name="confirm"]');
            const confirmMessage = document.querySelector('.confirm-new-pass');

            confirmMessage.style.display = 'none';

            newPasswordInput.addEventListener('input', checkNewPassword);
            confirmInput.addEventListener('input', checkConfirmation);

            function checkNewPassword(event) {
                const newPassword = event.target.value;

                // Kiểm tra các yêu cầu cho mật khẩu mới
                const lengthRequirement = newPassword.length >= 8;
                const numberRequirement = /\d/.test(newPassword);
                const lowercaseRequirement = /[a-z]/.test(newPassword);
                const specialCharRequirement = /[!@$]/.test(newPassword);

                // Hiển thị requirementList cho các yêu cầu thỏa mãn
                const requirementList = document.querySelector('.requirement-list');
                const requirementItems = requirementList.querySelectorAll('li');

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
                    } else {
                        icon.classList.remove('fa-check');
                        icon.classList.add('fa-warning');
                        item.style.color = 'red';
                    }
                });

                // Kiểm tra tính hợp lệ của mật khẩu mới
                isNewPasswordValid = lengthRequirement && numberRequirement && lowercaseRequirement && specialCharRequirement;

                // Kiểm tra trạng thái tổng hợp và kích hoạt/disabled nút
                updateButtonState();
            }

            function checkConfirmation(event) {
                const newPassword = newPasswordInput.value;
                const confirmation = event.target.value;

                // Kiểm tra xác nhận mật khẩu mới
                isConfirmationValid = confirmation === newPassword;

                // Hiển thị thông báo xác nhận đúng/sai
                if (confirmation !== '') {
                    confirmMessage.style.display = 'block';
                    confirmMessage.style.color = isConfirmationValid ? '#00d747' : 'red';
                    confirmMessage.innerHTML = isConfirmationValid ? '<i class="fa-solid fa-check"></i> Xác nhận đúng mật khẩu mới!' : '<i class="fa-solid fa-warning"></i> Xác nhận sai mật khẩu mới!';
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
        </script>

        <%
            } else {
                response.sendRedirect("login.jsp");
            }
        %>

    </body>
</html>
