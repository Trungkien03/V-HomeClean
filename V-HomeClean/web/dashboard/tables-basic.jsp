<%-- 
    Document   : tables-basic
    Created on : May 28, 2023, 11:33:36 PM
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
            href="css/assets/img/favicon.png"
            />

        <link rel="stylesheet" href="css/assets/css/bootstrap.min.css" />

        <link rel="stylesheet" href="css/assets/css/font-awesome.min.css" />

        <link rel="stylesheet" href="css/assets/css/feathericon.min.css" />

        <link rel="stylesheet" href="css/assets/plugins/morris/morris.css" />

        <link rel="stylesheet" href="css/assets/css/style.css" />
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
                                <h3 class="page-title">Basic Tables</h3>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="dashboard/index.jsp">Dashboard</a>
                                    </li>
                                    <li class="breadcrumb-item active">Basic Tables</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Basic Table</h4>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table mb-0">
                                            <thead>
                                                <tr>
                                                    <th>Firstname</th>
                                                    <th>Lastname</th>
                                                    <th>Email</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>John</td>
                                                    <td>Doe</td>
                                                    <td>
                                                        <a
                                                            href="/cdn-cgi/l/email-protection"
                                                            class="__cf_email__"
                                                            data-cfemail="5f353037311f3a273e322f333a713c3032"
                                                            >[email&#160;protected]</a
                                                        >
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Mary</td>
                                                    <td>Moe</td>
                                                    <td>
                                                        <a
                                                            href="/cdn-cgi/l/email-protection"
                                                            class="__cf_email__"
                                                            data-cfemail="3954584b40795c41585449555c175a5654"
                                                            >[email&#160;protected]</a
                                                        >
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>July</td>
                                                    <td>Dooley</td>
                                                    <td>
                                                        <a
                                                            href="/cdn-cgi/l/email-protection"
                                                            class="__cf_email__"
                                                            data-cfemail="d8b2adb4a198bda0b9b5a8b4bdf6bbb7b5"
                                                            >[email&#160;protected]</a
                                                        >
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Striped Rows</h4>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped mb-0">
                                            <thead>
                                                <tr>
                                                    <th>Firstname</th>
                                                    <th>Lastname</th>
                                                    <th>Email</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>John</td>
                                                    <td>Doe</td>
                                                    <td>
                                                        <a
                                                            href="/cdn-cgi/l/email-protection"
                                                            class="__cf_email__"
                                                            data-cfemail="72181d1a1c32170a131f021e175c111d1f"
                                                            >[email&#160;protected]</a
                                                        >
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Mary</td>
                                                    <td>Moe</td>
                                                    <td>
                                                        <a
                                                            href="/cdn-cgi/l/email-protection"
                                                            class="__cf_email__"
                                                            data-cfemail="264b47545f66435e474b564a430845494b"
                                                            >[email&#160;protected]</a
                                                        >
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>July</td>
                                                    <td>Dooley</td>
                                                    <td>
                                                        <a
                                                            href="/cdn-cgi/l/email-protection"
                                                            class="__cf_email__"
                                                            data-cfemail="8ae0ffe6f3caeff2ebe7fae6efa4e9e5e7"
                                                            >[email&#160;protected]</a
                                                        >
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Bordered Table</h4>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-bordered mb-0">
                                            <thead>
                                                <tr>
                                                    <th>Firstname</th>
                                                    <th>Lastname</th>
                                                    <th>Email</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>John</td>
                                                    <td>Doe</td>
                                                    <td>
                                                        <a
                                                            href="/cdn-cgi/l/email-protection"
                                                            class="__cf_email__"
                                                            data-cfemail="ee84818680ae8b968f839e828bc08d8183"
                                                            >[email&#160;protected]</a
                                                        >
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Mary</td>
                                                    <td>Moe</td>
                                                    <td>
                                                        <a
                                                            href="/cdn-cgi/l/email-protection"
                                                            class="__cf_email__"
                                                            data-cfemail="a4c9c5d6dde4c1dcc5c9d4c8c18ac7cbc9"
                                                            >[email&#160;protected]</a
                                                        >
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>July</td>
                                                    <td>Dooley</td>
                                                    <td>
                                                        <a
                                                            href="/cdn-cgi/l/email-protection"
                                                            class="__cf_email__"
                                                            data-cfemail="d4bea1b8ad94b1acb5b9a4b8b1fab7bbb9"
                                                            >[email&#160;protected]</a
                                                        >
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Hover Rows</h4>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-hover mb-0">
                                            <thead>
                                                <tr>
                                                    <th>Firstname</th>
                                                    <th>Lastname</th>
                                                    <th>Email</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>John</td>
                                                    <td>Doe</td>
                                                    <td>
                                                        <a
                                                            href="/cdn-cgi/l/email-protection"
                                                            class="__cf_email__"
                                                            data-cfemail="95fffafdfbd5f0edf4f8e5f9f0bbf6faf8"
                                                            >[email&#160;protected]</a
                                                        >
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Mary</td>
                                                    <td>Moe</td>
                                                    <td>
                                                        <a
                                                            href="/cdn-cgi/l/email-protection"
                                                            class="__cf_email__"
                                                            data-cfemail="0b666a79724b6e736a667b676e25686466"
                                                            >[email&#160;protected]</a
                                                        >
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>July</td>
                                                    <td>Dooley</td>
                                                    <td>
                                                        <a
                                                            href="/cdn-cgi/l/email-protection"
                                                            class="__cf_email__"
                                                            data-cfemail="7a100f16033a1f021b170a161f54191517"
                                                            >[email&#160;protected]</a
                                                        >
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Contextual Classes</h4>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table mb-0">
                                            <thead>
                                                <tr>
                                                    <th>Firstname</th>
                                                    <th>Lastname</th>
                                                    <th>Email</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Default</td>
                                                    <td>Defaultson</td>
                                                    <td>
                                                        <a
                                                            href="/cdn-cgi/l/email-protection"
                                                            class="__cf_email__"
                                                            data-cfemail="472322210734282a222a262e2b6924282a"
                                                            >[email&#160;protected]</a
                                                        >
                                                    </td>
                                                </tr>
                                                <tr class="table-primary">
                                                    <td>Primary</td>
                                                    <td>Doe</td>
                                                    <td>
                                                        <a
                                                            href="/cdn-cgi/l/email-protection"
                                                            class="__cf_email__"
                                                            data-cfemail="305a5f585e705548515d405c551e535f5d"
                                                            >[email&#160;protected]</a
                                                        >
                                                    </td>
                                                </tr>
                                                <tr class="table-secondary">
                                                    <td>Secondary</td>
                                                    <td>Moe</td>
                                                    <td>
                                                        <a
                                                            href="/cdn-cgi/l/email-protection"
                                                            class="__cf_email__"
                                                            data-cfemail="bfd2decdc6ffdac7ded2cfd3da91dcd0d2"
                                                            >[email&#160;protected]</a
                                                        >
                                                    </td>
                                                </tr>
                                                <tr class="table-success">
                                                    <td>Success</td>
                                                    <td>Dooley</td>
                                                    <td>
                                                        <a
                                                            href="/cdn-cgi/l/email-protection"
                                                            class="__cf_email__"
                                                            data-cfemail="cba1bea7b28baeb3aaa6bba7aee5a8a4a6"
                                                            >[email&#160;protected]</a
                                                        >
                                                    </td>
                                                </tr>
                                                <tr class="table-danger">
                                                    <td>Danger</td>
                                                    <td>Refs</td>
                                                    <td>
                                                        <a
                                                            href="/cdn-cgi/l/email-protection"
                                                            class="__cf_email__"
                                                            data-cfemail="b4d6dbf4d1ccd5d9c4d8d19ad7dbd9"
                                                            >[email&#160;protected]</a
                                                        >
                                                    </td>
                                                </tr>
                                                <tr class="table-warning">
                                                    <td>Warning</td>
                                                    <td>Activeson</td>
                                                    <td>
                                                        <a
                                                            href="/cdn-cgi/l/email-protection"
                                                            class="__cf_email__"
                                                            data-cfemail="99f8faedd9fce1f8f4e9f5fcb7faf6f4"
                                                            >[email&#160;protected]</a
                                                        >
                                                    </td>
                                                </tr>
                                                <tr class="table-info">
                                                    <td>Info</td>
                                                    <td>Activeson</td>
                                                    <td>
                                                        <a
                                                            href="/cdn-cgi/l/email-protection"
                                                            class="__cf_email__"
                                                            data-cfemail="b7d6d4c3f7d2cfd6dac7dbd299d4d8da"
                                                            >[email&#160;protected]</a
                                                        >
                                                    </td>
                                                </tr>
                                                <tr class="table-light">
                                                    <td>Light</td>
                                                    <td>Activeson</td>
                                                    <td>
                                                        <a
                                                            href="/cdn-cgi/l/email-protection"
                                                            class="__cf_email__"
                                                            data-cfemail="ec8d8f98ac89948d819c8089c28f8381"
                                                            >[email&#160;protected]</a
                                                        >
                                                    </td>
                                                </tr>
                                                <tr class="table-dark">
                                                    <td>Dark</td>
                                                    <td>Activeson</td>
                                                    <td>
                                                        <a
                                                            href="/cdn-cgi/l/email-protection"
                                                            class="__cf_email__"
                                                            data-cfemail="19787a6d597c61787469757c377a7674"
                                                            >[email&#160;protected]</a
                                                        >
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Responsive Tables</h4>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-nowrap mb-0">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Firstname</th>
                                                    <th>Lastname</th>
                                                    <th>Age</th>
                                                    <th>City</th>
                                                    <th>Country</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Anna</td>
                                                    <td>Pitt</td>
                                                    <td>35</td>
                                                    <td>New York</td>
                                                    <td>USA</td>
                                                </tr>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Anna</td>
                                                    <td>Pitt</td>
                                                    <td>35</td>
                                                    <td>New York</td>
                                                    <td>USA</td>
                                                </tr>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Anna</td>
                                                    <td>Pitt</td>
                                                    <td>35</td>
                                                    <td>New York</td>
                                                    <td>USA</td>
                                                </tr>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Anna</td>
                                                    <td>Pitt</td>
                                                    <td>35</td>
                                                    <td>New York</td>
                                                    <td>USA</td>
                                                </tr>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Anna</td>
                                                    <td>Pitt</td>
                                                    <td>35</td>
                                                    <td>New York</td>
                                                    <td>USA</td>
                                                </tr>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Anna</td>
                                                    <td>Pitt</td>
                                                    <td>35</td>
                                                    <td>New York</td>
                                                    <td>USA</td>
                                                </tr>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Anna</td>
                                                    <td>Pitt</td>
                                                    <td>35</td>
                                                    <td>New York</td>
                                                    <td>USA</td>
                                                </tr>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Anna</td>
                                                    <td>Pitt</td>
                                                    <td>35</td>
                                                    <td>New York</td>
                                                    <td>USA</td>
                                                </tr>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Anna</td>
                                                    <td>Pitt</td>
                                                    <td>35</td>
                                                    <td>New York</td>
                                                    <td>USA</td>
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

        <script
            data-cfasync="false"
            src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"
        ></script>
        <script src="css/assets/js/jquery-3.6.0.min.js"></script>

        <script src="css/assets/js/bootstrap.bundle.min.js"></script>

        <script src="css/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

        <script src="css/assets/js/script.js"></script>
    </body>
</html>

