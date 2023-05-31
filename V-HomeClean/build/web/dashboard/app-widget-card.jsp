<%-- 
    Document   : app-widget-card
    Created on : May 21, 2023, 9:35:27 PM
    Author     : Trung Kien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Focus Admin Dashboard</title>

        <!-- ================= Favicon ================== -->
        <!-- Standard -->
        <link rel="shortcut icon" href="http://placehold.it/64.png/000/fff">
        <!-- Retina iPad Touch Icon-->
        <link rel="apple-touch-icon" sizes="144x144" href="http://placehold.it/144.png/000/fff">
        <!-- Retina iPhone Touch Icon-->
        <link rel="apple-touch-icon" sizes="114x114" href="http://placehold.it/114.png/000/fff">
        <!-- Standard iPad Touch Icon-->
        <link rel="apple-touch-icon" sizes="72x72" href="http://placehold.it/72.png/000/fff">
        <!-- Standard iPhone Touch Icon-->
        <link rel="apple-touch-icon" sizes="57x57" href="http://placehold.it/57.png/000/fff">


        <!-- Common -->
        <link href="css/lib/font-awesome.min.css" rel="stylesheet">
        <link href="css/lib/themify-icons.css" rel="stylesheet">
        <link href="css/lib/menubar/sidebar.css" rel="stylesheet">
        <link href="css/lib/bootstrap.min.css" rel="stylesheet">
        <link href="css/lib/helper.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
    </head>

    <body>

        <div class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
            <div class="nano">
                <div class="nano-content">
                    <div class="logo">
                        <a href="index.jsp">
                            <!-- <img src="images/logo.png" alt="" /> -->
                            <span>Focus</span>
                        </a>
                    </div>
                    <ul>
                        <li class="label">Main</li>
                        <li>
                            <a class="sidebar-sub-toggle">
                                <i class="ti-home"></i> Dashboard
                                <span class="badge badge-primary">2</span>
                                <span class="sidebar-collapse-icon ti-angle-down"></span>
                            </a>
                            <ul>
                                <li>
                                    <a href="index.jsp">Dashboard 1</a>
                                </li>
                                <li>
                                    <a href="index.jsp">Dashboard 2</a>
                                </li>



                            </ul>
                        </li>

                        <li class="label">Apps</li>
                        <li>
                            <a class="sidebar-sub-toggle">
                                <i class="ti-bar-chart-alt"></i> Charts
                                <span class="sidebar-collapse-icon ti-angle-down"></span>
                            </a>
                            <ul>
                                <li>
                                    <a href="chart-flot.jsp">Flot</a>
                                </li>
                                <li>
                                    <a href="chart-morris.jsp">Morris</a>
                                </li>
                                <li>
                                    <a href="chartjs.jsp">Chartjs</a>
                                </li>
                                <li>
                                    <a href="chartist.jsp">Chartist</a>
                                </li>
                                <li>
                                    <a href="chart-peity.jsp">Peity</a>
                                </li>
                                <li>
                                    <a href="chart-sparkline.jsp">Sparkle</a>
                                </li>
                                <li>
                                    <a href="chart-knob.jsp">Knob</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="app-event-calender.jsp">
                                <i class="ti-calendar"></i> Calender </a>
                        </li>
                        <li>
                            <a href="app-email.jsp">
                                <i class="ti-email"></i> Email</a>
                        </li>
                        <li>
                            <a href="app-profile.jsp">
                                <i class="ti-user"></i> Profile</a>
                        </li>
                        <li>
                            <a href="app-widget-card.jsp">
                                <i class="ti-layout-grid2-alt"></i> Widget</a>
                        </li>
                        <li class="label">Features</li>
                        <li>
                            <a class="sidebar-sub-toggle">
                                <i class="ti-layout"></i> UI Elements
                                <span class="sidebar-collapse-icon ti-angle-down"></span>
                            </a>
                            <ul>
                                <li>
                                    <a href="ui-typography.jsp">Typography</a>
                                </li>
                                <li>
                                    <a href="ui-alerts.jsp">Alerts</a>
                                </li>

                                <li>
                                    <a href="ui-button.jsp">Button</a>
                                </li>
                                <li>
                                    <a href="ui-dropdown.jsp">Dropdown</a>
                                </li>

                                <li>
                                    <a href="ui-list-group.jsp">List Group</a>
                                </li>

                                <li>
                                    <a href="ui-progressbar.jsp">Progressbar</a>
                                </li>
                                <li>
                                    <a href="ui-tab.jsp">Tab</a>
                                </li>

                            </ul>
                        </li>
                        <li>
                            <a class="sidebar-sub-toggle">
                                <i class="ti-panel"></i> Components
                                <span class="sidebar-collapse-icon ti-angle-down"></span>
                            </a>
                            <ul>
                                <li>
                                    <a href="uc-calendar.jsp">Calendar</a>
                                </li>
                                <li>
                                    <a href="uc-carousel.jsp">Carousel</a>
                                </li>
                                <li>
                                    <a href="uc-weather.jsp">Weather</a>
                                </li>
                                <li>
                                    <a href="uc-datamap.jsp">Datamap</a>
                                </li>
                                <li>
                                    <a href="uc-todo-list.jsp">To do</a>
                                </li>
                                <li>
                                    <a href="uc-scrollable.jsp">Scrollable</a>
                                </li>
                                <li>
                                    <a href="uc-sweetalert.jsp">Sweet Alert</a>
                                </li>
                                <li>
                                    <a href="uc-toastr.jsp">Toastr</a>
                                </li>
                                <li>
                                    <a href="uc-range-slider-basic.jsp">Basic Range Slider</a>
                                </li>
                                <li>
                                    <a href="uc-range-slider-advance.jsp">Advance Range Slider</a>
                                </li>
                                <li>
                                    <a href="uc-nestable.jsp">Nestable</a>
                                </li>

                                <li>
                                    <a href="uc-rating-bar-rating.jsp">Bar Rating</a>
                                </li>
                                <li>
                                    <a href="uc-rating-jRate.jsp">jRate</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a class="sidebar-sub-toggle">
                                <i class="ti-layout-grid4-alt"></i> Table
                                <span class="sidebar-collapse-icon ti-angle-down"></span>
                            </a>
                            <ul>
                                <li>
                                    <a href="table-basic.jsp">Basic</a>
                                </li>

                                <li>
                                    <a href="table-export.jsp">Datatable Export</a>
                                </li>
                                <li>
                                    <a href="table-row-select.jsp">Datatable Row Select</a>
                                </li>
                                <li>
                                    <a href="table-jsgrid.jsp">Editable </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a class="sidebar-sub-toggle">
                                <i class="ti-heart"></i> Icons
                                <span class="sidebar-collapse-icon ti-angle-down"></span>
                            </a>
                            <ul>
                                <li>
                                    <a href="font-themify.jsp">Themify</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a class="sidebar-sub-toggle">
                                <i class="ti-map"></i> Maps
                                <span class="sidebar-collapse-icon ti-angle-down"></span>
                            </a>
                            <ul>
                                <li>
                                    <a href="gmaps.jsp">Basic</a>
                                </li>
                                <li>
                                    <a href="vector-map.jsp">Vector Map</a>
                                </li>
                            </ul>
                        </li>
                        <li class="label">Form</li>
                        <li>
                            <a href="form-basic.jsp">
                                <i class="ti-view-list-alt"></i> Basic Form </a>
                        </li>
                        <li class="label">Extra</li>
                        <li>
                            <a class="sidebar-sub-toggle">
                                <i class="ti-files"></i> Invoice
                                <span class="sidebar-collapse-icon ti-angle-down"></span>
                            </a>
                            <ul>
                                <li>
                                    <a href="invoice.jsp">Basic</a>
                                </li>
                                <li>
                                    <a href="invoice-editable.jsp">Editable</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a class="sidebar-sub-toggle">
                                <i class="ti-target"></i> Pages
                                <span class="sidebar-collapse-icon ti-angle-down"></span>
                            </a>
                            <ul>
                                <li>
                                    <a href="page-login.jsp">Login</a>
                                </li>
                                <li>
                                    <a href="page-register.jsp">Register</a>
                                </li>
                                <li>
                                    <a href="page-reset-password.jsp">Forgot password</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="../documentation/index.jsp">
                                <i class="ti-file"></i> Documentation</a>
                        </li>
                        <li>
                            <a>
                                <i class="ti-close"></i> Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- /# sidebar -->


        <div class="header">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="float-left">
                            <div class="hamburger sidebar-toggle">
                                <span class="line"></span>
                                <span class="line"></span>
                                <span class="line"></span>
                            </div>
                        </div>
                        <div class="float-right">
                            <div class="dropdown dib">
                                <div class="header-icon" data-toggle="dropdown">
                                    <i class="ti-bell"></i>
                                    <div class="drop-down dropdown-menu dropdown-menu-right">
                                        <div class="dropdown-content-heading">
                                            <span class="text-left">Recent Notifications</span>
                                        </div>
                                        <div class="dropdown-content-body">
                                            <ul>
                                                <li>
                                                    <a href="#">
                                                        <img class="pull-left m-r-10 avatar-img" src="images/avatar/3.jpg" alt="" />
                                                        <div class="notification-content">
                                                            <small class="notification-timestamp pull-right">02:34 PM</small>
                                                            <div class="notification-heading">Mr. John</div>
                                                            <div class="notification-text">5 members joined today </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <img class="pull-left m-r-10 avatar-img" src="images/avatar/3.jpg" alt="" />
                                                        <div class="notification-content">
                                                            <small class="notification-timestamp pull-right">02:34 PM</small>
                                                            <div class="notification-heading">Mariam</div>
                                                            <div class="notification-text">likes a photo of you</div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <img class="pull-left m-r-10 avatar-img" src="images/avatar/3.jpg" alt="" />
                                                        <div class="notification-content">
                                                            <small class="notification-timestamp pull-right">02:34 PM</small>
                                                            <div class="notification-heading">Tasnim</div>
                                                            <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <img class="pull-left m-r-10 avatar-img" src="images/avatar/3.jpg" alt="" />
                                                        <div class="notification-content">
                                                            <small class="notification-timestamp pull-right">02:34 PM</small>
                                                            <div class="notification-heading">Mr. John</div>
                                                            <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="text-center">
                                                    <a href="#" class="more-link">See All</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="dropdown dib">
                                <div class="header-icon" data-toggle="dropdown">
                                    <i class="ti-email"></i>
                                    <div class="drop-down dropdown-menu dropdown-menu-right">
                                        <div class="dropdown-content-heading">
                                            <span class="text-left">2 New Messages</span>
                                            <a href="email.jsp">
                                                <i class="ti-pencil-alt pull-right"></i>
                                            </a>
                                        </div>
                                        <div class="dropdown-content-body">
                                            <ul>
                                                <li class="notification-unread">
                                                    <a href="#">
                                                        <img class="pull-left m-r-10 avatar-img" src="images/avatar/1.jpg" alt="" />
                                                        <div class="notification-content">
                                                            <small class="notification-timestamp pull-right">02:34 PM</small>
                                                            <div class="notification-heading">Michael Qin</div>
                                                            <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="notification-unread">
                                                    <a href="#">
                                                        <img class="pull-left m-r-10 avatar-img" src="images/avatar/2.jpg" alt="" />
                                                        <div class="notification-content">
                                                            <small class="notification-timestamp pull-right">02:34 PM</small>
                                                            <div class="notification-heading">Mr. John</div>
                                                            <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <img class="pull-left m-r-10 avatar-img" src="images/avatar/3.jpg" alt="" />
                                                        <div class="notification-content">
                                                            <small class="notification-timestamp pull-right">02:34 PM</small>
                                                            <div class="notification-heading">Michael Qin</div>
                                                            <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <img class="pull-left m-r-10 avatar-img" src="images/avatar/2.jpg" alt="" />
                                                        <div class="notification-content">
                                                            <small class="notification-timestamp pull-right">02:34 PM</small>
                                                            <div class="notification-heading">Mr. John</div>
                                                            <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="text-center">
                                                    <a href="#" class="more-link">See All</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="dropdown dib">
                                <div class="header-icon" data-toggle="dropdown">
                                    <span class="user-avatar">John
                                        <i class="ti-angle-down f-s-10"></i>
                                    </span>
                                    <div class="drop-down dropdown-profile dropdown-menu dropdown-menu-right">
                                        <div class="dropdown-content-heading">
                                            <span class="text-left">Upgrade Now</span>
                                            <p class="trial-day">30 Days Trail</p>
                                        </div>
                                        <div class="dropdown-content-body">
                                            <ul>
                                                <li>
                                                    <a href="#">
                                                        <i class="ti-user"></i>
                                                        <span>Profile</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#">
                                                        <i class="ti-email"></i>
                                                        <span>Inbox</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="ti-settings"></i>
                                                        <span>Setting</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#">
                                                        <i class="ti-lock"></i>
                                                        <span>Lock Screen</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="ti-power-off"></i>
                                                        <span>Logout</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <div class="content-wrap">
            <div class="main">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-8 p-r-0 title-margin-right">
                            <div class="page-header">
                                <div class="page-title">
                                    <h1>Hello,
                                        <span>Welcome Here</span>
                                    </h1>
                                </div>
                            </div>
                        </div>
                        <!-- /# column -->
                        <div class="col-lg-4 p-l-0 title-margin-left">
                            <div class="page-header">
                                <div class="page-title">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item">
                                            <a href="#">Dashboard</a>
                                        </li>
                                        <li class="breadcrumb-item active">App-Widget-Card</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                        <!-- /# column -->
                    </div>
                    <!-- /# row -->
                    <div id="main-content">
                        <div class="row">
                            <div class="col-lg-3">
                                <div class="card">
                                    <div class="stat-widget-one">
                                        <div class="stat-icon dib">
                                            <i class="ti-money color-success border-success"></i>
                                        </div>
                                        <div class="stat-content dib">
                                            <div class="stat-text">Total Profit</div>
                                            <div class="stat-digit">1,012</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card">
                                    <div class="stat-widget-one">
                                        <div class="stat-icon dib">
                                            <i class="ti-user color-primary border-primary"></i>
                                        </div>
                                        <div class="stat-content dib">
                                            <div class="stat-text">New Customer</div>
                                            <div class="stat-digit">961</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card">
                                    <div class="stat-widget-one">
                                        <div class="stat-icon dib">
                                            <i class="ti-layout-grid2 color-pink border-pink"></i>
                                        </div>
                                        <div class="stat-content dib">
                                            <div class="stat-text">Active Projects</div>
                                            <div class="stat-digit">770</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card">
                                    <div class="stat-widget-one">
                                        <div class="stat-icon dib">
                                            <i class="ti-link color-danger border-danger"></i>
                                        </div>
                                        <div class="stat-content dib">
                                            <div class="stat-text">Referral</div>
                                            <div class="stat-digit">2,781</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3">
                                <div class="card">
                                    <div class="stat-widget-two">
                                        <div class="stat-content">
                                            <div class="stat-text">Today Expenses </div>
                                            <div class="stat-digit">
                                                <i class="fa fa-usd"></i>8500</div>
                                        </div>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-success w-85" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card">
                                    <div class="stat-widget-two">
                                        <div class="stat-content">
                                            <div class="stat-text">Income Detail</div>
                                            <div class="stat-digit">
                                                <i class="fa fa-usd"></i>7800</div>
                                        </div>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-primary w-75" role="progressbar" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card">
                                    <div class="stat-widget-two">
                                        <div class="stat-content">
                                            <div class="stat-text">Task Completed</div>
                                            <div class="stat-digit">
                                                <i class="fa fa-usd"></i> 500</div>
                                        </div>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-warning w-50" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card">
                                    <div class="stat-widget-two">
                                        <div class="stat-content">
                                            <div class="stat-text">Task Completed</div>
                                            <div class="stat-digit">
                                                <i class="fa fa-usd"></i>650</div>
                                        </div>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-danger w-65" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /# card -->
                            </div>
                            <!-- /# column -->
                        </div>
                        <!-- /# row -->
                        <div class="row">
                            <div class="col-lg-3">
                                <div class="card p-0">
                                    <div class="stat-widget-three">
                                        <div class="stat-icon bg-primary">
                                            <i class="ti-user"></i>
                                        </div>
                                        <div class="stat-content">
                                            <div class="stat-digit">123</div>
                                            <div class="stat-text">New User</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card p-0">
                                    <div class="stat-widget-three">
                                        <div class="stat-icon bg-success">
                                            <i class="ti-user"></i>
                                        </div>
                                        <div class="stat-content">
                                            <div class="stat-digit">123</div>
                                            <div class="stat-text">New User</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card p-0">
                                    <div class="stat-widget-three">
                                        <div class="stat-icon bg-warning">
                                            <i class="ti-user"></i>
                                        </div>
                                        <div class="stat-content">
                                            <div class="stat-digit">123</div>
                                            <div class="stat-text">New User</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card p-0">
                                    <div class="stat-widget-three">
                                        <div class="stat-icon bg-danger">
                                            <i class="ti-user"></i>
                                        </div>
                                        <div class="stat-content">
                                            <div class="stat-digit">123</div>
                                            <div class="stat-text">New User</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /# row -->
                        <div class="row">
                            <div class="col-lg-3">
                                <div class="card">
                                    <div class="stat-widget-four">
                                        <div class="stat-icon">
                                            <i class="ti-server"></i>
                                        </div>
                                        <div class="stat-content">
                                            <div class="text-left dib">
                                                <div class="stat-heading">Database</div>
                                                <div class="stat-text">Total: 765</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card">
                                    <div class="stat-widget-four">
                                        <div class="stat-icon">
                                            <i class="ti-user"></i>
                                        </div>
                                        <div class="stat-content">
                                            <div class="text-left dib">
                                                <div class="stat-heading">Users</div>
                                                <div class="stat-text">Total: 24720</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card">
                                    <div class="stat-widget-four">
                                        <div class="stat-icon">
                                            <i class="ti-stats-up"></i>
                                        </div>
                                        <div class="stat-content">
                                            <div class="text-left dib">
                                                <div class="stat-heading">Daily sales</div>
                                                <div class="stat-text">Total: 765</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card">
                                    <div class="stat-widget-four">
                                        <div class="stat-icon">
                                            <i class="ti-pulse"></i>
                                        </div>
                                        <div class="stat-content">
                                            <div class="text-left dib">
                                                <div class="stat-heading">Bandwidth</div>
                                                <div class="stat-text">Total: 24720</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3">
                                <div class="card">
                                    <div class="stat-widget-five">
                                        <div class="stat-icon">
                                            <i class="ti-home bg-primary"></i>
                                        </div>
                                        <div class="stat-content">
                                            <div class="stat-heading color-primary">New User</div>
                                            <div class="stat-text">2700</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card">
                                    <div class="stat-widget-five">
                                        <div class="stat-icon">
                                            <i class="ti-file bg-success"></i>
                                        </div>
                                        <div class="stat-content">
                                            <div class="stat-heading color-success">Profit</div>
                                            <div class="stat-text">3600000</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card">
                                    <div class="stat-widget-five">
                                        <div class="stat-icon">
                                            <i class="ti-info bg-danger"></i>
                                        </div>
                                        <div class="stat-content">
                                            <div class="stat-heading color-primary">Growth</div>
                                            <div class="stat-text">200%</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card">
                                    <div class="stat-widget-five">
                                        <div class="stat-icon bg-warning">
                                            <i class="ti-world"></i>
                                        </div>
                                        <div class="stat-content">
                                            <div class="stat-heading color-primary">Revenue</div>
                                            <div class="stat-text">226000</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3">
                                <div class="card bg-warning">
                                    <div class="stat-widget-six">
                                        <div class="stat-icon">
                                            <i class="ti-stats-up"></i>
                                        </div>
                                        <div class="stat-content">
                                            <div class="text-left dib">
                                                <div class="stat-heading">Daily sales</div>
                                                <div class="stat-text">Total: 765</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card bg-primary">
                                    <div class="stat-widget-six">
                                        <div class="stat-icon">
                                            <i class="ti-bolt-alt"></i>
                                        </div>
                                        <div class="stat-content">
                                            <div class="text-left dib">
                                                <div class="stat-heading">Bandwidth</div>
                                                <div class="stat-text">167.32 GB/s</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card bg-warning">
                                    <div class="stat-widget-six">
                                        <div class="stat-icon">
                                            <i class="ti-stats-up"></i>
                                        </div>
                                        <div class="stat-content">
                                            <div class="text-left dib">
                                                <div class="stat-heading">Progress</div>
                                                <div class="stat-text">Total: 765</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card bg-primary">
                                    <div class="stat-widget-six">
                                        <div class="stat-icon">
                                            <i class="ti-bolt-alt"></i>
                                        </div>
                                        <div class="stat-content">
                                            <div class="text-left dib">
                                                <div class="stat-heading">Connection</div>
                                                <div class="stat-text">167.32 GB/s</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="footer">
                                    <p>2018 © Admin Board. -
                                        <a href="#">example.com</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>




        <!-- Common -->
        <script src="js/lib/jquery.min.js"></script>
        <script src="js/lib/jquery.nanoscroller.min.js"></script>
        <script src="js/lib/menubar/sidebar.js"></script>
        <script src="js/lib/preloader/pace.min.js"></script>
        <script src="js/lib/bootstrap.min.js"></script>
        <script src="js/scripts.js"></script>
    </body>

</html>