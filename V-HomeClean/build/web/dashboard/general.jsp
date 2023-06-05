<%-- 
    Document   : general
    Created on : May 28, 2023, 11:32:17 PM
    Author     : Trung Kien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, user-scalable=0"
            />
        <title>Dreamchat - Dashboard</title>

        <link
            rel="shortcut icon"
            type="image/x-icon"
            href="assets/img/favicon.png"
            />

        <link rel="stylesheet" href="assets/css/bootstrap.min.css" />

        <link rel="stylesheet" href="assets/css/font-awesome.min.css" />

        <link rel="stylesheet" href="assets/css/feathericon.min.css" />

        <link rel="stylesheet" href="assets/plugins/morris/morris.css" />

        <link rel="stylesheet" href="assets/css/style.css" />
    </head>
    <body>
        <div class="main-wrapper">
            <jsp:include page="header.jsp"></jsp:include>
            <jsp:include page="sidebar.jsp"></jsp:include>
            <div class="page-wrapper">
                <div class="content container-fluid">
                    <div class="page-header">
                        <div class="row align-items-center">
                            <div class="col">
                                <h3 class="page-title">General Settings</h3>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="index.jsp">Dashboard</a>
                                    </li>
                                    <li class="breadcrumb-item active">General Settings</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="row settings-tab">
                        <div class="col-md-4">
                            <div class="card">
                                <div class="card-header all-center">
                                    <a href="general.jsp" class="avatar avatar-sm me-2"
                                       ><img
                                            class="avatar-img rounded-circle"
                                            src="assets/img/profiles/avatar-01.jpg"
                                            alt="User Image"
                                            />
                                        <i class="fe fe-camera"></i>
                                    </a>
                                    <h6>Seema Sisty</h6>
                                    <p>Administrator</p>
                                </div>
                                <div class="card-body p-0">
                                    <div class="profile-list">
                                        <a href="#"><i class="fe fe-comment-o"></i></a>
                                        <a href="#">Chat</a>
                                        <a href="#" class="float-end"><h5>10, 203</h5></a>
                                    </div>
                                    <div class="profile-list">
                                        <a href="#"><i class="fe fe-phone"></i></a>
                                        <a href="#">Call</a>
                                        <a href="#" class="float-end"><h5>403</h5></a>
                                    </div>
                                    <div class="profile-list">
                                        <a href="#"><i class="fe fe-disabled"></i></a>
                                        <a href="#">Blocked User</a>
                                        <a href="#" class="float-end"><h5>103</h5></a>
                                    </div>
                                    <div class="profile-list">
                                        <a href="group-history.jsp"
                                           ><button
                                                type="button"
                                                class="btn btn-block btn-outline-light"
                                                >
                                                View History
                                            </button></a
                                        >
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">General Settings</h4>
                                </div>
                                <div class="card-body">
                                    <form action="#">
                                        <div class="form-group">
                                            <label>Name</label>
                                            <input
                                                type="text"
                                                class="form-control"
                                                value="Seemasisty"
                                                />
                                        </div>
                                        <div class="form-group">
                                            <label>Email Address</label>
                                            <input
                                                type="email"
                                                class="form-control"
                                                value="sisty@gmail.com"
                                                />
                                        </div>
                                        <div class="form-group">
                                            <label>Username</label>
                                            <input type="text" class="form-control" value="Seema" />
                                        </div>
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input
                                                type="password"
                                                class="form-control"
                                                value="seemas12345"
                                                />
                                        </div>
                                        <div class="text-end">
                                            <button type="submit" class="btn btn-primary">
                                                Submit
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="assets/js/jquery-3.6.0.min.js"></script>

        <script src="assets/js/bootstrap.bundle.min.js"></script>

        <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

        <script src="assets/js/script.js"></script>
    </body>
</html>

