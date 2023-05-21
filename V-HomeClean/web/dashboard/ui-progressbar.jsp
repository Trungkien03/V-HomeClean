<%-- 
    Document   : ui-progressbar
    Created on : May 21, 2023, 9:56:56 PM
    Author     : Trung Kien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Focus Admin: Progress Bar</title>

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

        <!-- Styles -->
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
                    <div class="logo"><a href="index.jsp"><!-- <img src="images/logo.png" alt="" /> --><span>Focus</span></a></div>
                    <ul>
                        <li class="label">Main</li>
                        <li><a class="sidebar-sub-toggle"><i class="ti-home"></i> Dashboard <span class="badge badge-primary">2</span> <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                            <ul>
                                <li><a href="index.jsp">Dashboard 1</a></li>
                                <li><a href="index.jsp">Dashboard 2</a></li>



                            </ul>
                        </li>

                        <li class="label">Apps</li>
                        <li><a class="sidebar-sub-toggle"><i class="ti-bar-chart-alt"></i>  Charts  <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                            <ul>
                                <li><a href="chart-flot.jsp">Flot</a></li>
                                <li><a href="chart-morris.jsp">Morris</a></li>
                                <li><a href="chartjs.jsp">Chartjs</a></li>
                                <li><a href="chartist.jsp">Chartist</a></li>
                                <li><a href="chart-peity.jsp">Peity</a></li>
                                <li><a href="chart-sparkline.jsp">Sparkle</a></li>
                                <li><a href="chart-knob.jsp">Knob</a></li>
                            </ul>
                        </li>
                        <li><a href="app-event-calender.jsp"><i class="ti-calendar"></i> Calender </a></li>
                        <li><a href="app-email.jsp"><i class="ti-email"></i> Email</a></li>
                        <li><a href="app-profile.jsp"><i class="ti-user"></i> Profile</a></li>
                        <li><a href="app-widget-card.jsp"><i class="ti-layout-grid2-alt"></i> Widget</a></li>
                        <li class="label">Features</li>
                        <li><a class="sidebar-sub-toggle"><i class="ti-layout"></i> UI Elements <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                            <ul>
                                <li><a href="ui-typography.jsp">Typography</a></li>
                                <li><a href="ui-alerts.jsp">Alerts</a></li>

                                <li><a href="ui-button.jsp">Button</a></li>
                                <li><a href="ui-dropdown.jsp">Dropdown</a></li>

                                <li><a href="ui-list-group.jsp">List Group</a></li>

                                <li><a href="ui-progressbar.jsp">Progressbar</a></li>
                                <li><a href="ui-tab.jsp">Tab</a></li>

                            </ul>
                        </li>
                        <li><a class="sidebar-sub-toggle"><i class="ti-panel"></i> Components <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                            <ul>
                                <li><a href="uc-calendar.jsp">Calendar</a></li>
                                <li><a href="uc-carousel.jsp">Carousel</a></li>
                                <li><a href="uc-weather.jsp">Weather</a></li>
                                <li><a href="uc-datamap.jsp">Datamap</a></li>
                                <li><a href="uc-todo-list.jsp">To do</a></li>
                                <li><a href="uc-scrollable.jsp">Scrollable</a></li>
                                <li><a href="uc-sweetalert.jsp">Sweet Alert</a></li>
                                <li><a href="uc-toastr.jsp">Toastr</a></li>
                                <li><a href="uc-range-slider-basic.jsp">Basic Range Slider</a></li>
                                <li><a href="uc-range-slider-advance.jsp">Advance Range Slider</a></li>
                                <li><a href="uc-nestable.jsp">Nestable</a></li>

                                <li><a href="uc-rating-bar-rating.jsp">Bar Rating</a></li>
                                <li><a href="uc-rating-jRate.jsp">jRate</a></li>
                            </ul>
                        </li>
                        <li><a class="sidebar-sub-toggle"><i class="ti-layout-grid4-alt"></i> Table <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                            <ul>
                                <li><a href="table-basic.jsp">Basic</a></li>

                                <li><a href="table-export.jsp">Datatable Export</a></li>
                                <li><a href="table-row-select.jsp">Datatable Row Select</a></li>
                                <li><a href="table-jsgrid.jsp">Editable </a></li>
                            </ul>
                        </li>
                        <li><a class="sidebar-sub-toggle"><i class="ti-heart"></i> Icons <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                            <ul>
                                <li><a href="font-themify.jsp">Themify</a></li>
                            </ul>
                        </li>
                        <li><a class="sidebar-sub-toggle"><i class="ti-map"></i> Maps <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                            <ul>
                                <li><a href="gmaps.jsp">Basic</a></li>
                                <li><a href="vector-map.jsp">Vector Map</a></li>
                            </ul>
                        </li>
                        <li class="label">Form</li>
                        <li><a href="form-basic.jsp"><i class="ti-view-list-alt"></i> Basic Form </a></li>
                        <li class="label">Extra</li>
                        <li><a class="sidebar-sub-toggle"><i class="ti-files"></i> Invoice <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                            <ul>
                                <li><a href="invoice.jsp">Basic</a></li>
                                <li><a href="invoice-editable.jsp">Editable</a></li>
                            </ul>
                        </li>
                        <li><a class="sidebar-sub-toggle"><i class="ti-target"></i> Pages <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                            <ul>
                                <li><a href="page-login.jsp">Login</a></li>
                                <li><a href="page-register.jsp">Register</a></li>
                                <li><a href="page-reset-password.jsp">Forgot password</a></li>
                            </ul>
                        </li>
                        <li><a href="../documentation/index.jsp"><i class="ti-file"></i> Documentation</a></li>
                        <li><a><i class="ti-close"></i> Logout</a></li>
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
                                    <h1>Hello, <span>Welcome Here</span></h1>
                                </div>
                            </div>
                        </div>
                        <!-- /# column -->
                        <div class="col-lg-4 p-l-0 title-margin-left">
                            <div class="page-header">
                                <div class="page-title">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
                                        <li class="breadcrumb-item active">UI-Progressbar</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                        <!-- /# column -->
                    </div>
                    <!-- /# row -->
                    <section id="main-content">
                        <div class="row">
                            <!-- column -->
                            <div class="col-md-4">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Default Progress bars </h4>
                                        <div class="progress m-t-30">
                                            <div class="progress-bar bg-danger" style="width: 60%; height:6px;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- column -->
                            <div class="col-md-4">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Default Progress bars </h4>
                                        <div class="progress m-t-20">
                                            <div class="progress-bar bg-success" style="width: 75%; height:15px;" role="progressbar">75%</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- column -->
                            <div class="col-md-4">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Striped Progress bar </h4>
                                        <div class="progress m-t-20">
                                            <div class="progress-bar bg-info progress-bar-striped" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 85%; height:10px;" role="progressbar"> <span class="sr-only">85% Complete (success)</span> </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- column -->
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-4 p-r-40 m-t-30 m-b-30">
                                                <h4 class="card-title">Colored bars </h4>
                                                <div class="progress m-t-30">
                                                    <div class="progress-bar bg-danger" style="width: 60%; height:6px;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress m-t-30">
                                                    <div class="progress-bar bg-info" style="width: 40%; height:6px;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress m-t-30">
                                                    <div class="progress-bar bg-success" style="width: 20%; height:6px;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress m-t-30">
                                                    <div class="progress-bar bg-primary" style="width: 30%; height:6px;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress m-t-30">
                                                    <div class="progress-bar bg-warning" style="width: 80%; height:6px;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress m-t-30">
                                                    <div class="progress-bar bg-inverse" style="width: 40%; height:6px;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                            </div>
                                            <!-- Column -->
                                            <div class="col-md-4 p-r-40 m-t-30 m-b-30">
                                                <h4 class="card-title">Different bar sizes </h4>
                                                <div class="progress m-t-30">
                                                    <div class="progress-bar bg-danger" style="width: 60%; height:6px;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress m-t-30">
                                                    <div class="progress-bar bg-info" style="width: 40%; height:8px;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress m-t-30">
                                                    <div class="progress-bar bg-success" style="width: 20%; height:10px;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress m-t-30">
                                                    <div class="progress-bar bg-primary" style="width: 30%; height:12px;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress m-t-30">
                                                    <div class="progress-bar bg-warning" style="width: 80%; height:14px;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                            </div>
                                            <!-- Column -->
                                            <div class="col-md-4 p-r-40 m-t-30 m-b-30">
                                                <h4 class="card-title">Animated Striped bar </h4>
                                                <div class="progress m-t-30">
                                                    <div class="progress-bar active progress-bar-striped bg-danger" style="width: 60%; height:6px;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress m-t-30">
                                                    <div class="progress-bar bg-info active progress-bar-striped" style="width: 40%; height:8px;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress m-t-30">
                                                    <div class="progress-bar bg-success active progress-bar-striped" style="width: 20%; height:10px;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress m-t-30">
                                                    <div class="progress-bar bg-primary active progress-bar-striped" style="width: 30%; height:12px;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress m-t-30">
                                                    <div class="progress-bar bg-warning active progress-bar-striped" style="width: 80%; height:14px;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                            </div>
                                            <!-- Column -->
                                            <!-- Column -->
                                            <div class="col-md-4 p-r-40 m-t-30 m-b-30">
                                                <h4 class="card-title">Vertical Progress bars</h4>
                                                <div class="progress progress-vertical m-t-30">
                                                    <div class="progress-bar bg-danger" style="width:4px; height:60%;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress progress-vertical m-t-30">
                                                    <div class="progress-bar bg-info" style="width:4px; height:80%;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress progress-vertical m-t-30">
                                                    <div class="progress-bar bg-success" style="width:4px; height:60%;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress progress-vertical m-t-30">
                                                    <div class="progress-bar bg-primary" style="width:4px; height:40%;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress progress-vertical m-t-30">
                                                    <div class="progress-bar bg-warning" style="width:4px; height:30%;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                            </div>
                                            <!-- Column -->
                                            <!-- Column -->
                                            <div class="col-md-4 p-r-40 m-t-30 m-b-30">
                                                <h4 class="card-title">From bottom</h4>
                                                <div class="progress progress-vertical-bottom m-t-30">
                                                    <div class="progress-bar bg-danger" style="width:4px; height:60%;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress progress-vertical-bottom m-t-30">
                                                    <div class="progress-bar bg-info" style="width:4px; height:80%;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress progress-vertical-bottom m-t-30">
                                                    <div class="progress-bar bg-success" style="width:4px; height:60%;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress progress-vertical-bottom m-t-30">
                                                    <div class="progress-bar bg-primary" style="width:4px; height:40%;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress progress-vertical-bottom m-t-30">
                                                    <div class="progress-bar bg-warning" style="width:4px; height:30%;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                            </div>
                                            <!-- Column -->
                                            <!-- Column -->
                                            <div class="col-md-4 p-r-40 m-t-30 m-b-30">
                                                <h4 class="card-title">Different size Progress bars</h4>
                                                <div class="progress progress-vertical m-t-30">
                                                    <div class="progress-bar bg-danger" style="width:4px; height:60%;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress progress-vertical m-t-30">
                                                    <div class="progress-bar bg-info" style="width:6px; height:80%;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress progress-vertical m-t-30">
                                                    <div class="progress-bar bg-success" style="width:8px; height:60%;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress progress-vertical m-t-30">
                                                    <div class="progress-bar bg-primary" style="width:10px; height:40%;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress progress-vertical m-t-30">
                                                    <div class="progress-bar bg-warning" style="width:14px; height:30%;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                            </div>
                                            <!-- Column -->
                                            <div class="col-md-4 p-r-40 m-t-30 m-b-30">
                                                <h4 class="card-title">Animated bars </h4>
                                                <div class="progress m-t-30">
                                                    <div class="progress-bar bg-danger wow animated progress-animated" style="width: 60%; height:6px;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress m-t-30">
                                                    <div class="progress-bar bg-info wow animated progress-animated" style="width: 40%; height:6px;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress m-t-30">
                                                    <div class="progress-bar bg-success wow animated progress-animated" style="width: 20%; height:6px;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress m-t-30">
                                                    <div class="progress-bar bg-primary wow animated progress-animated" style="width: 30%; height:6px;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress m-t-30">
                                                    <div class="progress-bar bg-warning wow animated progress-animated" style="width: 80%; height:6px;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="progress m-t-30">
                                                    <div class="progress-bar bg-inverse wow animated progress-animated" style="width: 40%; height:6px;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                            </div>
                                            <!-- Column -->
                                            <div class="col-md-4 p-r-40 m-t-30 m-b-30">
                                                <h4 class="card-title">SKILL BARS </h4>
                                                <h5 class="m-t-30">Photoshop<span class="pull-right">85%</span></h5>
                                                <div class="progress ">
                                                    <div class="progress-bar bg-danger wow animated progress-animated" style="width: 85%; height:6px;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <h5 class="m-t-30">Code editor<span class="pull-right">90%</span></h5>
                                                <div class="progress">
                                                    <div class="progress-bar bg-info wow animated progress-animated" style="width: 90%; height:6px;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <h5 class="m-t-30">Illustrator<span class="pull-right">65%</span></h5>
                                                <div class="progress">
                                                    <div class="progress-bar bg-success wow animated progress-animated" style="width: 65%; height:6px;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                            </div>
                                            <!-- Column -->
                                            <div class="col-md-4 p-r-40 m-t-30 m-b-30">
                                                <h4 class="card-title">&nbsp;</h4>
                                                <h5 class="m-t-30">Dreamweaver<span class="pull-right">85%</span></h5>
                                                <div class="progress">
                                                    <div class="progress-bar bg-primary wow animated progress-animated" style="width: 85%; height:6px;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <h5 class="m-t-30">Coral Draw<span class="pull-right">45%</span></h5>
                                                <div class="progress">
                                                    <div class="progress-bar bg-warning wow animated progress-animated" style="width: 45%; height:6px;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <h5 class="m-t-30">Sketch<span class="pull-right">25%</span></h5>
                                                <div class="progress">
                                                    <div class="progress-bar bg-inverse wow animated progress-animated" style="width: 25%; height:6px;" role="progressbar"> <span class="sr-only">60% Complete</span> </div>
                                                </div>
                                            </div>
                                            <!-- Column -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-lg-12">
                                <div class="footer">
                                    <p>2018 © Admin Board. - <a href="#">example.com</a></p>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>



        <!-- jquery vendor -->
        <script src="js/lib/jquery.min.js"></script>
        <script src="js/lib/jquery.nanoscroller.min.js"></script>
        <!-- nano scroller -->
        <script src="js/lib/menubar/sidebar.js"></script>
        <script src="js/lib/preloader/pace.min.js"></script>
        <!-- sidebar -->

        <!-- bootstrap -->


        <script src="js/lib/bootstrap.min.js"></script><script src="js/scripts.js"></script>
        <!-- scripit init-->
    </body>

</html>
