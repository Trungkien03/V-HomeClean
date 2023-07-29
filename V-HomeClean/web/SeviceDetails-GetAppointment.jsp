<%-- 
    Document   : appointment
    Created on : May 20, 2023, 9:49:07 PM
    Author     : Trung Kien
--%>

<%@page import="DTO.AccountDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>V-HomeClean - Đặt Lịch</title>
        <link
            rel="shortcut icon"
            type="image/x-icon"
            href="css/assets/img/icon.png"
            />
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <!--        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Poppins:wght@600;700&display=swap" rel="stylesheet"> -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@500&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
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

    </head>

    <body>
        <jsp:include page="navigation.jsp"></jsp:include>
        <%
            AccountDTO user = (AccountDTO) session.getAttribute("acc");
            if (user == null) {
                response.sendRedirect("login.jsp");
            }
        %>


        <!-- Page Header Start -->
        <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container text-center py-5">
                <h1 class="display-4 text-white animated slideInDown mb-4">Đặt Lịch Dịch Vụ</h1>
                <nav aria-label="breadcrumb animated slideInDown">
                    <ol class="breadcrumb justify-content-center mb-0">
                        <li class="breadcrumb-item"><a class="text-white" href="index.jsp">Trang chủ</a></li>
                        <li class="breadcrumb-item text-primary active" aria-current="page">Đặt Lịch Dịch Vụ</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
    <!-- Page Header End -->




    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="position-relative overflow-hidden ps-5 pt-5 h-100" style="min-height: 400px;">
                        <img class="position-absolute w-100 h-100" src="${ServiceDetail.image}" alt="" style="object-fit: cover;">
                        <div class="position-absolute top-0 start-0 bg-white pe-3 pb-3" style="width: 200px; height: 200px;">
                            <div class="d-flex flex-column justify-content-center text-center bg-primary h-100 p-3">
                                <img src="css/assets/img/icon.png">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="h-100">
                        <div class="border-start border-5 border-primary ps-4 mb-5">
                            <h6 class="text-body text-uppercase mb-2">${ServiceDetail.cateServiceName}</h6>
                            <h1 class="display-6 mb-0">${ServiceDetail.serviceName}</h1>
                        </div>
                        <p>${ServiceDetail.serviceDetail}</p>
                        <h6 class="mb-2">Giá dịch vụ: <fmt:formatNumber value="${ServiceDetail.price}" pattern="###,### VND"/></h6>
                        <div class="border-top mt-4 pt-4">
                            <div class="row g-4">
                                <div class="col-sm-4 d-flex wow fadeIn" data-wow-delay="0.1s">
                                    <i class="fa fa-check fa-2x text-primary flex-shrink-0 me-3"></i>
                                    <h6 class="mb-0">Luôn đúng giờ</h6>
                                </div>
                                <div class="col-sm-4 d-flex wow fadeIn" data-wow-delay="0.3s">
                                    <i class="fa fa-check fa-2x text-primary flex-shrink-0 me-3"></i>
                                    <h6 class="mb-0">Phục vụ tận tình</h6>
                                </div>
                                <div class="col-sm-4 d-flex wow fadeIn" data-wow-delay="0.5s">
                                    <i class="fa fa-check fa-2x text-primary flex-shrink-0 me-3"></i>
                                    <h6 class="mb-0">Chuyên nghiệp</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <!-- Appointment Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-5 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="border-start border-5 border-primary ps-4 mb-5">
                        <h6 class="text-body text-uppercase mb-2">Dịch vụ</h6>
                        <h1 class="display-6 mb-0">V-HomeClean: Căn hộ của bạn luôn sạch sẽ, gọn gàng và thật thoải mái!</h1>
                    </div>
                    <p class="mb-0">V-HomeClean luôn cung cấp dịch vụ tốt dành cho bạn cũng như kinh nghiệm và sự hiệu quả của đội ngũ nhân viên. Sẵn sàng giúp bạn có một không gian sống đẹp!</p>
                </div>
                <div class="col-lg-7 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                     <h6 class="text-body text-primary display-6 mb-0">Điền thông tin của bạn</h6>

                    <form action="MainController" method="post">
                        <input type="hidden" value="${sessionScope.acc.accountID}" name="accountID">
                        <div class="row g-3">
                            <div class="col-sm-6">
                                <div style="color: black; font: bold" class="form-floating">
                                    <input style="color: black;" required="" value="${acc.fullName}" type="text" class="form-control bg-light border-0" id="gname" name="fullName" placeholder="Gurdian Name">
                                    <label for="fulName">Họ và Tên</label>
                                </div>
                                <strong style="color: #e72734;" >${fullNameError}</strong>
                            </div>
                            <div class="col-sm-6">
                                <div style="color: black;" class="form-floating">
                                    <input style="color: black;" required="" value="${acc.email}" type="email" class="form-control bg-light border-0" id="gmail" name="email" placeholder="Gurdian Email">
                                    <label for="gmail">Email</label>
                                </div>
                                <strong style="color: #e72734;" >${emailError}</strong>
                            </div>
                            <div class="col-sm-6">
                                <div style="color: black;" class="form-floating">
                                    <input style="color: black;" required="" value="${acc.phone}" type="text" class="form-control bg-light border-0" id="cname" name="phone" placeholder="Child Name">
                                    <label for="phone">Số điện thoại</label>
                                </div>
                                <strong style="color: #e72734;" >${phoneError}</strong>
                            </div>


                            <div class="col-sm-6">
                                <div style="color: black;" class="form-floating">
                                    <select style="color: black;"  required="" class="form-select bg-light border-0" name="serviceID" aria-label="Guardian Relationship">
                                        <c:forEach items="${listS}" var="s">
                                            <option style="color: black;" value="${s.serviceID}" <c:if test="${s.serviceID eq ServiceDetail.serviceID}">selected</c:if>>${s.serviceName}</option>
                                        </c:forEach>
                                    </select>
                                    <label for="relationship">Chọn loại dịch vụ</label>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div style="color: black;" class="form-floating">
                                    <select style="color: black;" required="Vui lòng chọn khu vực" class="form-select bg-light border-0" id="vinhomesOptions" name="area" aria-label="Guardian Relationship">
                                        <option value="">-- Chọn Vinhomes --</option>
                                        <option style="color: black;" value="Vinhomes Smart City - Hà Nội">Vinhomes Smart City - Hà Nội</option>
                                    </select>
                                    <label for="relationship">Chọn khu vực</label>
                                </div>
                                <strong style="color: #e72734;" >${areaError}</strong>
                            </div>


                            <div class="col-sm-6">
                                <div style="color: black;" class="form-floating">
                                    <select style="color: black;" required="" class="form-select bg-light border-0" name="typeService" aria-label="Guardian Relationship">
                                        <option style="color: black;" value="Dịch vụ 1 lần" selected="">Dịch vụ 1 lần</option>
                                        <option style="color: black;" value="Định kì theo tuần">Định kì theo tuần</option>
                                        <option style="color: black;" value="Định kì theo tháng">Định kì theo tháng</option>
                                    </select>
                                    <label for="relationship">Dịch vụ Định kì</label>
                                    <strong style="color: #e72734;" >${typeOfServiceError}</strong>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div style="color: black;" class="form-floating">
                                    <input style="color: black;" required="" type="date" class="form-control bg-light border-0" name="date" id="dateInput">
                                    <label for="date">Ngày tháng năm:</label>
                                </div>
                                <strong style="color: #e72734;" id="dateError" >${dateError} </strong>
                            </div>

                            <div class="col-sm-6">
                                <div style="color: black;" class="form-floating">
                                    <input style="color: black;" required="" type="time" class="form-control bg-light border-0" name="time">
                                    <label for="time">Giờ cụ thể:</label>
                                </div>
                                <strong style="color: #e72734;"id="timeError" >${timeError}</strong>
                            </div>

                            <div class="col-sm-6">
                                <div style="color: black;" class="form-floating">
                                    <select style="color: black;" required="Vui lòng chọn phân khu" class="form-select bg-light border-0" id="vinhomesOptions" name="areaApartment" aria-label="Guardian Relationship">
                                        <option value="">-- Chọn Phân Khu --</option>
                                        <option style="color: black;" value="The Sapphire 1">The Sapphire 1</option>
                                        <option style="color: black;" value="The Sapphire 2">The Sapphire 2</option>
                                        <option style="color: black;" value="The Sapphire 3">The Sapphire 3</option>
                                        <option style="color: black;" value="The Sapphire Parkville">The Sapphire Parkville</option>
                                        <option style="color: black;" value="The Miami">The Miami</option>
                                        <option style="color: black;" value="The Metrolines">The Metrolines</option>
                                    </select>
                                    <label for="relationship">Chọn khu vực</label>
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div style="color: black;" class="form-floating">
                                    <input style="color: black;" required="" type="text" class="form-control bg-light border-0" name="vinHomesID" placeholder="Gurdian Email">
                                    <label for="gmail">Mã Tòa và Mã Phòng:</label>
                                </div>
                                <strong style="color: #e72734;" id="vinHomeIDError" >${vinHomeIDError}</strong>
                            </div>

                            <div class="col-12">
                                <div style="color: black;" class="form-floating">
                                    <textarea style="color: black;" class="form-control bg-light border-0" placeholder="Leave a message here" name="message" style="height: 100px"></textarea>
                                    <label for="message">Ghi Chú:</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <button type="button" class="btn btn-primary w-100 py-3" data-toggle="modal" data-target="#modalPush">Đặt lịch</button>
                            </div>

                            <!--Modal: modalPush-->
                            <div class="modal fade" id="modalPush" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                                 aria-hidden="true">
                                <div class="modal-dialog modal-notify modal-info" role="document">
                                    <!--Content-->
                                    <div class="modal-content text-center">
                                        <!--Header-->
                                        <div class="modal-header d-flex justify-content-center">
                                            <p class="heading">Hãy chắc chắn rằng bạn đã điền đầy đủ thông tin</p>
                                        </div>

                                        <!--Body-->
                                        <div class="modal-body">

                                            <i class="fas fa-bell fa-4x animated rotateIn mb-4"></i>

                                            <p>Bạn có chắc chắn với thông tin mình đã điền chưa ạ ?</p>

                                        </div>

                                        <!--Footer-->
                                        <div class="modal-footer flex-center">
                                            <button name="action" class="btn btn-outline-info waves-effect" value="Booking" type="submit">Chắc chắn</button>
                                            <a type="button" class="btn btn-outline-info waves-effect" data-dismiss="modal">Không</a>
                                        </div>
                                    </div>
                                    <!--/.Content-->
                                </div>
                            </div>
                            <!--Modal: modalPush-->


                        </div>
                    </form>


                </div>
            </div>
        </div>
    </div>
    <!-- Appointment End -->



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

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const form = document.querySelector("form");
            const dateInput = document.getElementById("dateInput");
            const timeInput = document.getElementsByName("time")[0];
            const vinHomesIDInput = document.getElementsByName("vinHomesID")[0];
            const dateError = document.getElementById("dateError");
            const timeError = document.getElementById("timeError");
            const vinHomeIDError = document.getElementById("vinHomeIDError");

            dateInput.addEventListener("input", validateDate);
            timeInput.addEventListener("input", validateTime);
            vinHomesIDInput.addEventListener("input", validateVinHomesID);
            form.addEventListener("submit", validateForm);

            function validateDate() {
                dateError.textContent = "";
                const selectedDate = new Date(dateInput.value);
                const now = new Date();

                // Set time to the start of the day for both dates
                selectedDate.setHours(0, 0, 0, 0);
                now.setHours(0, 0, 0, 0);

                if (selectedDate < now) {
                    dateError.textContent = "Ngày phải là hôm nay hoặc tương lai.";
                }
            }

            function validateTime() {
                timeError.textContent = "";
                const selectedTimeParts = timeInput.value.split(":");
                const selectedHour = parseInt(selectedTimeParts[0]);

                const now = new Date();
                const selectedDate = new Date(dateInput.value);
                selectedDate.setHours(selectedHour, 0, 0, 0);

                const startNightHour = 21;
                const endMorningHour = 6;

                if (selectedHour < 0 || selectedHour >= 24) {
                    timeError.textContent = "Giờ không hợp lệ.";
                } else {
                    if (selectedDate <= now) {
                        const twoHoursFromNow = new Date(now.getTime() + 2 * 60 * 60 * 1000);

                        if (selectedDate <= twoHoursFromNow) {
                            timeError.textContent = "Thời gian phải lớn hơn 1 tiếng từ thời điểm hiện tại.";
                        } else if (selectedHour >= startNightHour || selectedHour < endMorningHour) {
                            timeError.textContent = "Thời gian không được nằm trong khoảng từ 21h tới 6h sáng.";
                        }
                    } else {
                        if (selectedHour >= startNightHour || selectedHour < endMorningHour) {
                            timeError.textContent = "Thời gian không được nằm trong khoảng từ 21h tới 6h sáng.";
                        }
                    }
                }
            }



            function validateVinHomesID() {
                const vinHomesIDValue = vinHomesIDInput.value.trim();
                vinHomeIDError.textContent = "";
                const vinHomesIDPattern = /^s\d{2}\.\d{2}-\d{4}$/i;

                if (!vinHomesIDPattern.test(vinHomesIDValue)) {
                    vinHomeIDError.textContent = "Mã Tòa và Mã Phòng phải điền theo đúng định dạng Sxx.xx-xxxx (x là số tự nhiên).";
                }
            }

            function validateForm(event) {
                validateDate();
                validateTime();
                validateVinHomesID();

                if (dateError.textContent || timeError.textContent || vinHomeIDError.textContent) {
                    event.preventDefault();
                }
            }
        });

    </script>







    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>

</html>
