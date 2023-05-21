<%-- 
    Document   : app-profile
    Created on : May 21, 2023, 9:34:05 PM
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
                                        <li class="breadcrumb-item active">App-Profile</li>
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
                                    <div class="card-body">
                                        <div class="user-profile">
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <div class="user-photo m-b-30">
                                                        <img class="img-fluid" src="images/user-profile.jpg" alt="" />
                                                    </div>
                                                    <div class="user-work">
                                                        <h4>work</h4>
                                                        <div class="work-content">
                                                            <h3>It Solution </h3>
                                                            <p>123, South Mugda</p>
                                                            <p>New York, 1214</p>
                                                        </div>
                                                        <div class="work-content">
                                                            <h3>Unix</h3>
                                                            <p>123, South Mugda</p>
                                                            <p>New York, 1214</p>
                                                        </div>
                                                    </div>
                                                    <div class="user-skill">
                                                        <h4>Skill</h4>
                                                        <ul>
                                                            <li>
                                                                <a href="#">Branding</a>
                                                            </li>
                                                            <li>
                                                                <a href="#">UI/UX</a>
                                                            </li>
                                                            <li>
                                                                <a href="#">Web Design</a>
                                                            </li>
                                                            <li>
                                                                <a href="#">Wordpress</a>
                                                            </li>
                                                            <li>
                                                                <a href="#">Magento</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="col-lg-8">
                                                    <div class="user-profile-name">john doe</div>
                                                    <div class="user-Location">
                                                        <i class="ti-location-pin"></i> New York, New York</div>
                                                    <div class="user-job-title">Product Designer</div>
                                                    <div class="ratings">
                                                        <h4>Ratings</h4>
                                                        <div class="rating-star">
                                                            <span>8.9</span>
                                                            <i class="ti-star color-primary"></i>
                                                            <i class="ti-star color-primary"></i>
                                                            <i class="ti-star color-primary"></i>
                                                            <i class="ti-star color-primary"></i>
                                                            <i class="ti-star"></i>
                                                        </div>
                                                    </div>
                                                    <div class="user-send-message">
                                                        <button class="btn btn-primary btn-addon" type="button">
                                                            <i class="ti-email"></i>Send Message</button>
                                                    </div>
                                                    <div class="custom-tab user-profile-tab">
                                                        <ul class="nav nav-tabs" role="tablist">
                                                            <li role="presentation" class="active">
                                                                <a href="#1" aria-controls="1" role="tab" data-toggle="tab">About</a>
                                                            </li>
                                                        </ul>
                                                        <div class="tab-content">
                                                            <div role="tabpanel" class="tab-pane active" id="1">
                                                                <div class="contact-information">
                                                                    <h4>Contact information</h4>
                                                                    <div class="phone-content">
                                                                        <span class="contact-title">Phone:</span>
                                                                        <span class="phone-number">+8801629599859</span>
                                                                    </div>
                                                                    <div class="address-content">
                                                                        <span class="contact-title">Address:</span>
                                                                        <span class="mail-address">123, Rajar Goli, South Mugda</span>
                                                                    </div>
                                                                    <div class="email-content">
                                                                        <span class="contact-title">Email:</span>
                                                                        <span class="contact-email">hello@Admin Board.com</span>
                                                                    </div>
                                                                    <div class="website-content">
                                                                        <span class="contact-title">Website:</span>
                                                                        <span class="contact-website">www.Admin Board.com</span>
                                                                    </div>
                                                                    <div class="skype-content">
                                                                        <span class="contact-title">Skype:</span>
                                                                        <span class="contact-skype">Admin Board</span>
                                                                    </div>
                                                                </div>
                                                                <div class="basic-information">
                                                                    <h4>Basic information</h4>
                                                                    <div class="birthday-content">
                                                                        <span class="contact-title">Birthday:</span>
                                                                        <span class="birth-date">January 31, 1990 </span>
                                                                    </div>
                                                                    <div class="gender-content">
                                                                        <span class="contact-title">Gender:</span>
                                                                        <span class="gender">Male</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /# row -->
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-title">
                                        <h4>Recent Project </h4>

                                    </div>
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-hover ">
                                                <thead>
                                                    <tr>
                                                        <th>Name</th>
                                                        <th>Status</th>
                                                        <th>Date</th>
                                                        <th>Price</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>Kolor Tea Shirt For Man</td>
                                                        <td>
                                                            <span class="badge badge-primary">Ongoing</span>
                                                        </td>
                                                        <td>January 22</td>
                                                        <td class="color-primary">$21.56</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Kolor Tea Shirt For Women</td>
                                                        <td>
                                                            <span class="badge badge-success">Complete</span>
                                                        </td>
                                                        <td>January 30</td>
                                                        <td class="color-success">$55.32</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Blue Backpack For Baby</td>
                                                        <td>
                                                            <span class="badge badge-danger">Rejected</span>
                                                        </td>
                                                        <td>January 25</td>
                                                        <td class="color-danger">$14.85</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Kolor Tea Shirt For Man</td>
                                                        <td>
                                                            <span class="badge badge-primary">Ongoing</span>
                                                        </td>
                                                        <td>January 22</td>
                                                        <td class="color-primary">$21.56</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Kolor Tea Shirt For Women</td>
                                                        <td>
                                                            <span class="badge badge-success">Complete</span>
                                                        </td>
                                                        <td>January 30</td>
                                                        <td class="color-success">$55.32</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Blue Backpack For Baby</td>
                                                        <td>
                                                            <span class="badge badge-danger">Rejected</span>
                                                        </td>
                                                        <td>January 25</td>
                                                        <td class="color-danger">$14.85</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /# column -->
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-title">
                                        <h4>Recent Comments </h4>

                                    </div>
                                    <div class="recent-comment">
                                        <div class="media">
                                            <div class="media-left">
                                                <a href="#">
                                                    <img class="media-object" src="images/avatar/1.jpg" alt="...">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">john doe</h4>
                                                <p>Cras sit amet nibh libero, in gravida nulla. </p>
                                                <div class="comment-action">
                                                    <div class="badge badge-success">Approved</div>
                                                    <span class="m-l-10">
                                                        <a href="#">
                                                            <i class="ti-check color-success"></i>
                                                        </a>
                                                        <a href="#">
                                                            <i class="ti-close color-danger"></i>
                                                        </a>
                                                        <a href="#">
                                                            <i class="fa fa-reply color-primary"></i>
                                                        </a>
                                                    </span>
                                                </div>
                                                <p class="comment-date">October 21, 2017</p>
                                            </div>
                                        </div>
                                        <div class="media">
                                            <div class="media-left">
                                                <a href="#">
                                                    <img class="media-object" src="images/avatar/2.jpg" alt="...">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Mr. John</h4>
                                                <p>Cras sit amet nibh libero, in gravida nulla. </p>
                                                <div class="comment-action">
                                                    <div class="badge badge-warning">Pending</div>
                                                    <span class="m-l-10">
                                                        <a href="#">
                                                            <i class="ti-check color-success"></i>
                                                        </a>
                                                        <a href="#">
                                                            <i class="ti-close color-danger"></i>
                                                        </a>
                                                        <a href="#">
                                                            <i class="fa fa-reply color-primary"></i>
                                                        </a>
                                                    </span>
                                                </div>
                                                <p class="comment-date">October 21, 2017</p>
                                            </div>
                                        </div>
                                        <div class="media no-border">
                                            <div class="media-left">
                                                <a href="#">
                                                    <img class="media-object" src="images/avatar/3.jpg" alt="...">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Mr. John</h4>
                                                <p>Cras sit amet nibh libero, in gravida nulla. </p>
                                                <div class="comment-action">
                                                    <div class="badge badge-danger">Rejected</div>
                                                    <span class="m-l-10">
                                                        <a href="#">
                                                            <i class="ti-check color-success"></i>
                                                        </a>
                                                        <a href="#">
                                                            <i class="ti-close color-danger"></i>
                                                        </a>
                                                        <a href="#">
                                                            <i class="fa fa-reply color-primary"></i>
                                                        </a>
                                                    </span>
                                                </div>
                                                <div class="comment-date">October 21, 2017</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /# card -->
                            </div>
                            <!-- /# column -->
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
                    </section>
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
