<%-- 
    Document   : users
    Created on : May 28, 2023, 11:34:03 PM
    Author     : Trung Kien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Dreamchat - Dashboard</title>

        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/css/font-awesome.min.css">

        <link rel="stylesheet" href="assets/css/feathericon.min.css">

        <link rel="stylesheet" href="assets/plugins/morris/morris.css">

        <link rel="stylesheet" href="assets/css/style.css">
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
                                <h3 class="page-title">Users</h3>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
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
                                                    <th>Name</th>
                                                    <th>Registered date</th>
                                                    <th>Login time</th>
                                                    <th>Logout time</th>
                                                    <th>Last login</th>
                                                    <th class="text-end">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="general.jsp" class="avatar avatar-sm me-2"><img class="avatar-img rounded-circle" src="assets/img/profiles/avatar-03.jpg" alt="User Image"></a>
                                                            <a href="general.jsp">John Lee <span>#0001</span></a>
                                                        </h2>
                                                    </td>
                                                    <td>01 Oct 2019</td>
                                                    <td>01.00 PM</td>
                                                    <td>03.54 PM</td>
                                                    <td>11.00 PM</td>
                                                    <td class="text-end">
                                                        <div class="actions">
                                                            <a href="#" class="btn btn-sm bg-success-light me-2">
                                                                <i class="fe fe-pencil"></i>
                                                            </a>
                                                            <a href="#" class="btn btn-sm bg-danger-light">
                                                                <i class="fe fe-trash"></i>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="general.jsp" class="avatar avatar-sm me-2"><img class="avatar-img rounded-circle" src="assets/img/profiles/avatar-04.jpg" alt="User Image"></a>
                                                            <a href="general.jsp">Joe <span>#0002</span></a>
                                                        </h2>
                                                    </td>
                                                    <td>23 Jan 2020</td>
                                                    <td>10.00 AM</td>
                                                    <td>03.12 PM</td>
                                                    <td>10.00 AM</td>
                                                    <td class="text-end">
                                                        <div class="actions">
                                                            <a href="#" class="btn btn-sm bg-success-light me-2">
                                                                <i class="fe fe-pencil"></i>
                                                            </a>
                                                            <a href="#" class="btn btn-sm bg-danger-light">
                                                                <i class="fe fe-trash"></i>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="general.jsp" class="avatar avatar-sm me-2"><img class="avatar-img rounded-circle" src="assets/img/profiles/avatar-05.jpg" alt="User Image"></a>
                                                            <a href="general.jsp">Mary Wiley <span>#0003</span></a>
                                                        </h2>
                                                    </td>
                                                    <td>14 Feb 2020</td>
                                                    <td>12.03 PM</td>
                                                    <td>11.40 PM</td>
                                                    <td>10.00 AM</td>
                                                    <td class="text-end">
                                                        <div class="actions">
                                                            <a href="#" class="btn btn-sm bg-success-light me-2">
                                                                <i class="fe fe-pencil"></i>
                                                            </a>
                                                            <a href="#" class="btn btn-sm bg-danger-light">
                                                                <i class="fe fe-trash"></i>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="general.jsp" class="avatar avatar-sm me-2"><img class="avatar-img rounded-circle" src="assets/img/profiles/avatar-06.jpg" alt="User Image"></a>
                                                            <a href="general.jsp">Amy Bond <span>#0004</span></a>
                                                        </h2>
                                                    </td>
                                                    <td>18 Apr 2020</td>
                                                    <td>09.10 AM</td>
                                                    <td>05.30 PM</td>
                                                    <td>06.00 PM</td>
                                                    <td class="text-end">
                                                        <div class="actions">
                                                            <a href="#" class="btn btn-sm bg-success-light me-2">
                                                                <i class="fe fe-pencil"></i>
                                                            </a>
                                                            <a href="#" class="btn btn-sm bg-danger-light">
                                                                <i class="fe fe-trash"></i>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="general.jsp" class="avatar avatar-sm me-2"><img class="avatar-img rounded-circle" src="assets/img/profiles/avatar-07.jpg" alt="User Image"></a>
                                                            <a href="general.jsp">Clara Brady <span>#0005</span></a>
                                                        </h2>
                                                    </td>
                                                    <td>20 Apr 2020</td>
                                                    <td>01.00 PM</td>
                                                    <td>09.54 PM</td>
                                                    <td>08.00 AM</td>
                                                    <td class="text-end">
                                                        <div class="actions">
                                                            <a href="#" class="btn btn-sm bg-success-light me-2">
                                                                <i class="fe fe-pencil"></i>
                                                            </a>
                                                            <a href="#" class="btn btn-sm bg-danger-light">
                                                                <i class="fe fe-trash"></i>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="general.jsp" class="avatar avatar-sm me-2"><img class="avatar-img rounded-circle" src="assets/img/profiles/avatar-08.jpg" alt="User Image"></a>
                                                            <a href="general.jsp">Robert Martin <span>#0006</span></a>
                                                        </h2>
                                                    </td>
                                                    <td>08 Jun 2020</td>
                                                    <td>10.00 AM</td>
                                                    <td>07.00 PM</td>
                                                    <td>10.00 AM</td>
                                                    <td class="text-end">
                                                        <div class="actions">
                                                            <a href="#" class="btn btn-sm bg-success-light me-2">
                                                                <i class="fe fe-pencil"></i>
                                                            </a>
                                                            <a href="#" class="btn btn-sm bg-danger-light">
                                                                <i class="fe fe-trash"></i>
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
