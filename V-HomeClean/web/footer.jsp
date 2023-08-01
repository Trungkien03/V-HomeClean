<%-- 
    Document   : footer
    Created on : May 20, 2023, 10:28:36 PM
    Author     : Trung Kien
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Footer Start -->
<div class="container-fluid bg-dark footer mt-5 pt-5 wow fadeIn" data-wow-delay="0.1s">
    <div class="container py-5">
        <div class="row g-5">
            <div class="col-lg-3 col-md-6">
                <h1 style="color: #f8e43c" class="m-0"><i class="fa fa-building text-primary me-3"></i>V-HomeClean</h1>
                <div class="d-flex pt-2">
                    <a class="btn btn-square btn-outline-primary me-1" href=""><i class="fab fa-twitter"></i></a>
                    <a class="btn btn-square btn-outline-primary me-1" href=""><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-square btn-outline-primary me-1" href=""><i class="fab fa-youtube"></i></a>
                    <a class="btn btn-square btn-outline-primary me-0" href=""><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <h4 class="text-light mb-4">Address</h4>
                <p><i class="fa fa-map-marker-alt me-3"></i>Hà Nội, Việt Nam</p>
                <p><i class="fa fa-phone-alt me-3"></i>+84 348 931 442</p>
                <p><i class="fa fa-envelope me-3"></i>hieudoan280102@gmail.com</p>
            </div>
            <div class="col-lg-3 col-md-6">
                <!-- This div creates a column with a width of 25% (lg) or 50% (md) of its parent container. -->

                <!-- The link "login.jsp" is set as the target of the anchor (a) tag. -->
                <c:if test="${sessionScope.acc == null}"><strong>
                        <a href="login.jsp" class="btn btn-primary py-2 position-relative left-10    mt-2 me-2">
                            Sign Up
                        </a>
                    </strong></c:if>

                <!-- The anchor (a) tag creates a "SignUp" button. It has the "btn" and "btn-primary" classes from Bootstrap, 
                     which styles it as a primary colored button. The "py-2" class sets padding on the top and bottom to adjust
                     the button's height. The "position-absolute top-0 end-0" classes position the button at the top right corner 
                     of its container. The "mt-2 me-2" classes add margin to create spacing between the button and the container's edges. -->
            </div>
        </div>
    </div>
    <div class="container-fluid copyright">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                    &copy; <a href="#">V-HomeClean</a>, All Right Reserved.
                </div>
                <div class="col-md-6 text-center text-md-end">

                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer End -->
