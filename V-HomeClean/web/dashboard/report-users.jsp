<%-- 
    Document   : report-users
    Created on : May 28, 2023, 11:33:15 PM
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
                                <h3 class="page-title">Report User</h3>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="index.jsp">Dashboard</a>
                                    </li>
                                    <li class="breadcrumb-item active">Report User</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 d-flex">
                            <div class="card card-table flex-fill">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-hover table-center mb-0">
                                            <thead>
                                                <tr>
                                                    <th>User</th>
                                                    <th>Report Date</th>
                                                    <th>Report time</th>
                                                    <th>Report Message</th>
                                                    <th>Report Document</th>
                                                    <th class="text-end">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a
                                                                href="general.jsp"
                                                                class="avatar avatar-sm me-2"
                                                                ><img
                                                                    class="avatar-img rounded-circle"
                                                                    src="assets/img/profiles/avatar-24.jpg"
                                                                    alt="User Image"
                                                                    /></a>
                                                            <a href="general.jsp"
                                                               >Eric Knight <span>#0009</span></a
                                                            >
                                                        </h2>
                                                    </td>
                                                    <td>01 Oct 2019</td>
                                                    <td>01.00 PM</td>
                                                    <td>They claim a charge</td>
                                                    <td>
                                                        <div class="actions">
                                                            <a
                                                                href="#"
                                                                class="btn btn-sm bg-success-light me-2"
                                                                title="View Document"
                                                                >
                                                                <i class="fe fe-eye"></i>
                                                            </a>
                                                        </div>
                                                    </td>
                                                    <td class="text-end">
                                                        <div class="actions">
                                                            <a
                                                                href="#"
                                                                class="btn btn-sm bg-success-light me-2"
                                                                title="Accepted"
                                                                >
                                                                <i class="fe fe-check"></i>
                                                            </a>
                                                            <a
                                                                href="#"
                                                                class="btn btn-sm bg-danger-light"
                                                                title="Declined"
                                                                >
                                                                <i class="fe fe-close"></i>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>
                                                
                                            </tbody>
                                        </table>
                                    </div>
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

