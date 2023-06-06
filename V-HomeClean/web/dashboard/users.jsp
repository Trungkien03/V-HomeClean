<%-- 
    Document   : data-tables
    Created on : May 28, 2023, 11:29:43 PM
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

        <link
            rel="stylesheet"
            href="assets/plugins/datatables/datatables.min.css"
            />

        <link rel="stylesheet" href="assets/css/style.css" />
    </head>
    <body>
        <div class="main-wrapper">
            <jsp:include page="header.jsp"></jsp:include>
            <jsp:include page="sidebar.jsp"></jsp:include>
            <div class="page-wrapper">
                <div class="content container-fluid">
                    <div class="page-header">
                        <div class="row">
                            <div class="col-sm-12">
                                <h3 class="page-title">Users Management</h3>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="index.jsp">Dashboard</a>
                                    </li>
                                    <li class="breadcrumb-item active">Users Management</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Default Datatable</h4>
                                    <p class="card-text">
                                        This is the most basic example of the datatables with zero
                                        configuration. Use the <code>.datatable</code> class to
                                        initialize datatables.
                                    </p>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="datatable table table-center table-stripped">
                                            <thead>
                                                <tr>
                                                    <th>Name</th>
                                                    <th>Position</th>
                                                    <th>Office</th>
                                                    <th>Age</th>
                                                    <th>Information</th>
                                                    <th>Salary</th>
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
                                                                    src="assets/img/profiles/avatar-16.jpg"
                                                                    alt="User Image"
                                                                    /></a>
                                                            <a href="general.jsp"
                                                               >John Lee <span>#0001</span></a
                                                            >
                                                        </h2>
                                                    </td>
                                                    <td>System Architect</td>
                                                    <td>Edinburgh</td>
                                                    <td>61</td>
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
                                                    <td>
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

        <script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="assets/plugins/datatables/datatables.min.js"></script>

        <script src="assets/js/script.js"></script>
    </body>
</html>

