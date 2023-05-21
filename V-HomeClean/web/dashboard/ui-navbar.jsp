<%-- 
    Document   : ui-navbar
    Created on : May 21, 2023, 9:56:16 PM
    Author     : Trung Kien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Focus Admin: Navbar</title>

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
                                        <li class="breadcrumb-item active">UI-Navbar</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                        <!-- /# column -->
                    </div>
                    <!-- /# row -->
                    <section id="main-content">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-title">
                                        <h4>Navigation Bars</h4>
                                    </div>
                                    <div class="card-bady">
                                        <p class="text-muted m-b-15">A standard navigation bar is created with <code>&lt;nav class="navbar navbar-default"&gt;</code>.</p>
                                        <nav class="navbar navbar-default">
                                            <div class="container-fluid">
                                                <div class="navbar-header">
                                                    <a class="navbar-brand" href="#">WebSiteName</a>
                                                </div>
                                                <ul class="nav navbar-nav">
                                                    <li class="breadcrumb-item active"><a href="#">Home</a></li>
                                                    <li><a href="#">Page 1</a></li>
                                                    <li><a href="#">Page 2</a></li>
                                                    <li><a href="#">Page 3</a></li>
                                                </ul>
                                            </div>
                                        </nav>

                                    </div>
                                </div>
                                <!-- /# card -->
                            </div>
                            <!-- /# column -->
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-title">
                                        <h4>Inverted Navigation Bar</h4>
                                    </div>
                                    <div class="card-bady">
                                        <p class="text-muted m-b-15">Just change the <code>.navbar-default</code> class into <code>.navbar-inverse</code>:</p>
                                        <nav class="navbar navbar-inverse">
                                            <div class="container-fluid">
                                                <div class="navbar-header">
                                                    <a class="navbar-brand" href="#">WebSiteName</a>
                                                </div>
                                                <ul class="nav navbar-nav">
                                                    <li class="breadcrumb-item active"><a href="#">Home</a></li>
                                                    <li><a href="#">Page 1</a></li>
                                                    <li><a href="#">Page 2</a></li>
                                                    <li><a href="#">Page 3</a></li>
                                                </ul>
                                            </div>
                                        </nav>

                                    </div>
                                </div>
                                <!-- /# card -->
                            </div>
                            <!-- /# column -->
                        </div>
                        <!-- /# row -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-title">
                                        <h4>Navigation Bar With Dropdown</h4>
                                    </div>
                                    <div class="card-bady">
                                        <p class="text-muted m-b-15">The following example adds a dropdown menu for the "Page 1" button:</p>
                                        <nav class="navbar navbar-inverse">
                                            <div class="container-fluid">
                                                <div class="navbar-header">
                                                    <a class="navbar-brand" href="#">WebSiteName</a>
                                                </div>
                                                <ul class="nav navbar-nav">
                                                    <li class="breadcrumb-item active"><a href="#">Home</a></li>
                                                    <li class="dropdown">
                                                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1
                                                            <span class="caret"></span></a>
                                                        <ul class="dropdown-menu">
                                                            <li><a href="#">Page 1-1</a></li>
                                                            <li><a href="#">Page 1-2</a></li>
                                                            <li><a href="#">Page 1-3</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Page 2</a></li>
                                                    <li><a href="#">Page 3</a></li>
                                                </ul>
                                            </div>
                                        </nav>

                                    </div>
                                </div>
                                <!-- /# card -->
                            </div>
                            <!-- /# column -->
                        </div>
                        <!-- /# row -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-title">
                                        <h4>Right-Aligned Navigation Bar</h4>
                                    </div>
                                    <div class="card-bady">
                                        <p class="text-muted m-b-15">The <code>.navbar-right</code> class is used to right-align navigation bar buttons. </p>
                                        <nav class="navbar navbar-inverse">
                                            <div class="container-fluid">
                                                <div class="navbar-header">
                                                    <a class="navbar-brand" href="#">WebSiteName</a>
                                                </div>
                                                <ul class="nav navbar-nav">
                                                    <li class="breadcrumb-item active"><a href="#">Home</a></li>
                                                    <li><a href="#">Page 1</a></li>
                                                    <li><a href="#">Page 2</a></li>
                                                </ul>
                                                <ul class="nav navbar-nav navbar-right">
                                                    <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                                                    <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                                                </ul>
                                            </div>
                                        </nav>

                                    </div>
                                </div>
                                <!-- /# card -->
                            </div>
                            <!-- /# column -->
                        </div>
                        <!-- /# row -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-title">
                                        <h4>Navbar Buttons</h4>
                                    </div>
                                    <div class="card-bady">
                                        <p class="text-muted m-b-15">To add buttons inside the navbar, add the <code>.navbar-btn</code> class on a Bootstrap button:
                                        </p>
                                        <nav class="navbar navbar-inverse">
                                            <div class="container-fluid">
                                                <div class="navbar-header">
                                                    <a class="navbar-brand" href="#">WebSiteName</a>
                                                </div>
                                                <ul class="nav navbar-nav">
                                                    <li class="breadcrumb-item active"><a href="#">Home</a></li>
                                                    <li><a href="#">Link</a></li>
                                                    <li><a href="#">Link</a></li>
                                                </ul>
                                                <button class="btn btn-danger navbar-btn">Button</button>
                                            </div>
                                        </nav>

                                    </div>
                                </div>
                                <!-- /# card -->
                            </div>
                            <!-- /# column -->
                        </div>
                        <!-- /# row -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-title">
                                        <h4>Navbar Forms</h4>
                                    </div>
                                    <div class="card-bady">
                                        <p class="text-muted m-b-15">To add form elements inside the navbar, add the <code>.navbar-form</code> class to a form element and add an input(s). Note that we have added a <code>.form-group</code> class to the div container holding the input. This adds proper padding if you have more than one inputs (you will learn more about this in the Forms chapter).</p>
                                        <nav class="navbar navbar-inverse">
                                            <div class="container-fluid">
                                                <div class="navbar-header">
                                                    <a class="navbar-brand" href="#">WebSiteName</a>
                                                </div>
                                                <ul class="nav navbar-nav">
                                                    <li class="breadcrumb-item active"><a href="#">Home</a></li>
                                                    <li><a href="#">Page 1</a></li>
                                                    <li><a href="#">Page 2</a></li>
                                                </ul>
                                                <form class="navbar-form navbar-left">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" placeholder="Search">
                                                    </div>
                                                    <button type="submit" class="btn btn-default">Submit</button>
                                                </form>
                                            </div>
                                        </nav>

                                    </div>
                                </div>
                                <!-- /# card -->
                            </div>
                            <!-- /# column -->
                        </div>
                        <!-- /# row -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-title">
                                        <h4>Navbar Input Addons</h4>
                                    </div>
                                    <div class="card-bady">
                                        <p class="text-muted m-b-15">You can also use the <code>.input-group</code> and <code>.input-group-addon</code> classes to attach an icon or help text next to the input field. You will learn more about these classes in the Bootstrap Inputs chapter.</p>
                                        <form class="navbar-form navbar-left">
                                            <div class="input-group">
                                                <input type="text" class="form-control" placeholder="Search">
                                                <div class="input-group-btn">
                                                    <button class="btn btn-default" type="submit">
                                                        <i class="glyphicon glyphicon-search"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </form>

                                    </div>
                                </div>
                                <!-- /# card -->
                            </div>
                            <!-- /# column -->
                        </div>
                        <!-- /# row -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-title">
                                        <h4>Navbar Text</h4>
                                    </div>
                                    <div class="card-bady">
                                        <p class="text-muted m-b-15">Use the <code>.navbar-text</code> class to vertical align any elements inside the navbar that are not links (ensures proper padding and text color).</p>
                                        <nav class="navbar navbar-inverse">
                                            <ul class="nav navbar-nav">
                                                <li><a href="#">Link</a></li>
                                                <li><a href="#">Link</a></li>
                                            </ul>
                                            <p class="navbar-text">Some text</p>
                                        </nav>

                                    </div>
                                </div>
                                <!-- /# card -->
                            </div>
                            <!-- /# column -->
                        </div>
                        <!-- /# row -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-title">
                                        <h4>Fixed Navigation Bar</h4>
                                    </div>
                                    <div class="card-bady">
                                        <p class="text-muted m-b-15">The <code>.navbar-fixed-bottom</code> class makes the navigation bar stay at the bottom:</p>
                                        <nav class="navbar navbar-inverse">
                                            <ul class="nav navbar-nav">
                                                <li><a href="#">Link</a></li>
                                                <li><a href="#">Link</a></li>
                                            </ul>
                                            <p class="navbar-text">Some text</p>
                                        </nav>

                                    </div>
                                </div>
                                <!-- /# card -->
                            </div>
                            <!-- /# column -->
                        </div>
                        <!-- /# row -->

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="footer">
                                    <p>2018 © Admin Board. - <a href="#">example.com</a></p>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section id="main-content">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-title">
                                        <h4>Navigation Bars</h4>
                                    </div>
                                    <div class="card-bady">
                                        <p class="text-muted m-b-15">A standard navigation bar is created with <code>&lt;nav class="navbar navbar-default"&gt;</code>.</p>
                                        <nav class="navbar navbar-default">
                                            <div class="container-fluid">
                                                <div class="navbar-header">
                                                    <a class="navbar-brand" href="#">WebSiteName</a>
                                                </div>
                                                <ul class="nav navbar-nav">
                                                    <li class="breadcrumb-item active"><a href="#">Home</a></li>
                                                    <li><a href="#">Page 1</a></li>
                                                    <li><a href="#">Page 2</a></li>
                                                    <li><a href="#">Page 3</a></li>
                                                </ul>
                                            </div>
                                        </nav>

                                    </div>
                                </div>
                                <!-- /# card -->
                            </div>
                            <!-- /# column -->
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-title">
                                        <h4>Inverted Navigation Bar</h4>
                                    </div>
                                    <div class="card-bady">
                                        <p class="text-muted m-b-15">Just change the <code>.navbar-default</code> class into <code>.navbar-inverse</code>:</p>
                                        <nav class="navbar navbar-inverse">
                                            <div class="container-fluid">
                                                <div class="navbar-header">
                                                    <a class="navbar-brand" href="#">WebSiteName</a>
                                                </div>
                                                <ul class="nav navbar-nav">
                                                    <li class="breadcrumb-item active"><a href="#">Home</a></li>
                                                    <li><a href="#">Page 1</a></li>
                                                    <li><a href="#">Page 2</a></li>
                                                    <li><a href="#">Page 3</a></li>
                                                </ul>
                                            </div>
                                        </nav>

                                    </div>
                                </div>
                                <!-- /# card -->
                            </div>
                            <!-- /# column -->
                        </div>
                        <!-- /# row -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-title">
                                        <h4>Navigation Bar With Dropdown</h4>
                                    </div>
                                    <div class="card-bady">
                                        <p class="text-muted m-b-15">The following example adds a dropdown menu for the "Page 1" button:</p>
                                        <nav class="navbar navbar-inverse">
                                            <div class="container-fluid">
                                                <div class="navbar-header">
                                                    <a class="navbar-brand" href="#">WebSiteName</a>
                                                </div>
                                                <ul class="nav navbar-nav">
                                                    <li class="breadcrumb-item active"><a href="#">Home</a></li>
                                                    <li class="dropdown">
                                                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1
                                                            <span class="caret"></span></a>
                                                        <ul class="dropdown-menu">
                                                            <li><a href="#">Page 1-1</a></li>
                                                            <li><a href="#">Page 1-2</a></li>
                                                            <li><a href="#">Page 1-3</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Page 2</a></li>
                                                    <li><a href="#">Page 3</a></li>
                                                </ul>
                                            </div>
                                        </nav>

                                    </div>
                                </div>
                                <!-- /# card -->
                            </div>
                            <!-- /# column -->
                        </div>
                        <!-- /# row -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-title">
                                        <h4>Right-Aligned Navigation Bar</h4>
                                    </div>
                                    <div class="card-bady">
                                        <p class="text-muted m-b-15">The <code>.navbar-right</code> class is used to right-align navigation bar buttons. </p>
                                        <nav class="navbar navbar-inverse">
                                            <div class="container-fluid">
                                                <div class="navbar-header">
                                                    <a class="navbar-brand" href="#">WebSiteName</a>
                                                </div>
                                                <ul class="nav navbar-nav">
                                                    <li class="breadcrumb-item active"><a href="#">Home</a></li>
                                                    <li><a href="#">Page 1</a></li>
                                                    <li><a href="#">Page 2</a></li>
                                                </ul>
                                                <ul class="nav navbar-nav navbar-right">
                                                    <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                                                    <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                                                </ul>
                                            </div>
                                        </nav>

                                    </div>
                                </div>
                                <!-- /# card -->
                            </div>
                            <!-- /# column -->
                        </div>
                        <!-- /# row -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-title">
                                        <h4>Navbar Buttons</h4>
                                    </div>
                                    <div class="card-bady">
                                        <p class="text-muted m-b-15">To add buttons inside the navbar, add the <code>.navbar-btn</code> class on a Bootstrap button:
                                        </p>
                                        <nav class="navbar navbar-inverse">
                                            <div class="container-fluid">
                                                <div class="navbar-header">
                                                    <a class="navbar-brand" href="#">WebSiteName</a>
                                                </div>
                                                <ul class="nav navbar-nav">
                                                    <li class="breadcrumb-item active"><a href="#">Home</a></li>
                                                    <li><a href="#">Link</a></li>
                                                    <li><a href="#">Link</a></li>
                                                </ul>
                                                <button class="btn btn-danger navbar-btn">Button</button>
                                            </div>
                                        </nav>

                                    </div>
                                </div>
                                <!-- /# card -->
                            </div>
                            <!-- /# column -->
                        </div>
                        <!-- /# row -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-title">
                                        <h4>Navbar Forms</h4>
                                    </div>
                                    <div class="card-bady">
                                        <p class="text-muted m-b-15">To add form elements inside the navbar, add the <code>.navbar-form</code> class to a form element and add an input(s). Note that we have added a <code>.form-group</code> class to the div container holding the input. This adds proper padding if you have more than one inputs (you will learn more about this in the Forms chapter).</p>
                                        <nav class="navbar navbar-inverse">
                                            <div class="container-fluid">
                                                <div class="navbar-header">
                                                    <a class="navbar-brand" href="#">WebSiteName</a>
                                                </div>
                                                <ul class="nav navbar-nav">
                                                    <li class="breadcrumb-item active"><a href="#">Home</a></li>
                                                    <li><a href="#">Page 1</a></li>
                                                    <li><a href="#">Page 2</a></li>
                                                </ul>
                                                <form class="navbar-form navbar-left">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" placeholder="Search">
                                                    </div>
                                                    <button type="submit" class="btn btn-default">Submit</button>
                                                </form>
                                            </div>
                                        </nav>

                                    </div>
                                </div>
                                <!-- /# card -->
                            </div>
                            <!-- /# column -->
                        </div>
                        <!-- /# row -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-title">
                                        <h4>Navbar Input Addons</h4>
                                    </div>
                                    <div class="card-bady">
                                        <p class="text-muted m-b-15">You can also use the <code>.input-group</code> and <code>.input-group-addon</code> classes to attach an icon or help text next to the input field. You will learn more about these classes in the Bootstrap Inputs chapter.</p>
                                        <form class="navbar-form navbar-left">
                                            <div class="input-group">
                                                <input type="text" class="form-control" placeholder="Search">
                                                <div class="input-group-btn">
                                                    <button class="btn btn-default" type="submit">
                                                        <i class="glyphicon glyphicon-search"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </form>

                                    </div>
                                </div>
                                <!-- /# card -->
                            </div>
                            <!-- /# column -->
                        </div>
                        <!-- /# row -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-title">
                                        <h4>Navbar Text</h4>
                                    </div>
                                    <div class="card-bady">
                                        <p class="text-muted m-b-15">Use the <code>.navbar-text</code> class to vertical align any elements inside the navbar that are not links (ensures proper padding and text color).</p>
                                        <nav class="navbar navbar-inverse">
                                            <ul class="nav navbar-nav">
                                                <li><a href="#">Link</a></li>
                                                <li><a href="#">Link</a></li>
                                            </ul>
                                            <p class="navbar-text">Some text</p>
                                        </nav>

                                    </div>
                                </div>
                                <!-- /# card -->
                            </div>
                            <!-- /# column -->
                        </div>
                        <!-- /# row -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-title">
                                        <h4>Fixed Navigation Bar</h4>
                                    </div>
                                    <div class="card-bady">
                                        <p class="text-muted m-b-15">The <code>.navbar-fixed-bottom</code> class makes the navigation bar stay at the bottom:</p>
                                        <nav class="navbar navbar-inverse">
                                            <ul class="nav navbar-nav">
                                                <li><a href="#">Link</a></li>
                                                <li><a href="#">Link</a></li>
                                            </ul>
                                            <p class="navbar-text">Some text</p>
                                        </nav>

                                    </div>
                                </div>
                                <!-- /# card -->
                            </div>
                            <!-- /# column -->
                        </div>
                        <!-- /# row -->

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
