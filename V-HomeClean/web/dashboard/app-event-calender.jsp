<%-- 
    Document   : app-event-calender
    Created on : May 21, 2023, 9:33:37 PM
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

        <!-- Toastr -->
        <link href="css/lib/toastr/toastr.min.css" rel="stylesheet">
        <!-- Sweet Alert -->
        <link href="css/lib/sweetalert/sweetalert.css" rel="stylesheet">
        <!-- Range Slider -->
        <link href="css/lib/rangSlider/ion.rangeSlider.css" rel="stylesheet">
        <link href="css/lib/rangSlider/ion.rangeSlider.skinFlat.css" rel="stylesheet">
        <!-- Bar Rating -->
        <link href="css/lib/barRating/barRating.css" rel="stylesheet">
        <!-- Nestable -->
        <link href="css/lib/nestable/nestable.css" rel="stylesheet">
        <!-- JsGrid -->
        <link href="css/lib/jsgrid/jsgrid-theme.min.css" rel="stylesheet" />
        <link href="css/lib/jsgrid/jsgrid.min.css" type="text/css" rel="stylesheet" />
        <!-- Datatable -->
        <link href="css/lib/datatable/dataTables.bootstrap.min.css" rel="stylesheet" />
        <link href="css/lib/data-table/buttons.bootstrap.min.css" rel="stylesheet" />
        <!-- Calender 2 -->
        <link href="css/lib/calendar2/pignose.calendar.min.css" rel="stylesheet">
        <!-- Weather Icon -->
        <link href="css/lib/weather-icons.css" rel="stylesheet" />
        <!-- Owl Carousel -->
        <link href="css/lib/owl.carousel.min.css" rel="stylesheet" />
        <link href="css/lib/owl.theme.default.min.css" rel="stylesheet" />
        <!-- Select2 -->
        <link href="css/lib/select2/select2.min.css" rel="stylesheet">
        <!-- Chartist -->
        <link href="css/lib/chartist/chartist.min.css" rel="stylesheet">
        <!-- Calender -->
        <link href="css/lib/calendar/fullcalendar.css" rel="stylesheet" />

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
                                        <li class="breadcrumb-item active">App-Event-Calender</li>
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
                                        <h4>Calendar</h4>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-lg-3">
                                                <a href="#" data-toggle="modal" data-target="#add-category" class="btn btn-lg btn-success btn-block waves-effect waves-light">
                                                    <i class="fa fa-plus"></i> Create New
                                                </a>
                                                <div id="external-events" class="m-t-20">
                                                    <br>
                                                    <p>Drag and drop your event or click in the calendar</p>
                                                    <div class="external-event bg-primary" data-class="bg-primary">
                                                        <i class="fa fa-move"></i>New Theme Release
                                                    </div>
                                                    <div class="external-event bg-pink" data-class="bg-pink">
                                                        <i class="fa fa-move"></i>My Event
                                                    </div>
                                                    <div class="external-event bg-warning" data-class="bg-warning">
                                                        <i class="fa fa-move"></i>Meet manager
                                                    </div>
                                                    <div class="external-event bg-dark" data-class="bg-dark">
                                                        <i class="fa fa-move"></i>Create New theme
                                                    </div>
                                                </div>

                                                <!-- checkbox -->
                                                <div class="checkbox m-t-40">
                                                    <input id="drop-remove" type="checkbox">
                                                    <label for="drop-remove">
                                                        Remove after drop
                                                    </label>
                                                </div>

                                            </div>
                                            <div class="col-md-9">
                                                <div class="card-box">
                                                    <div id="calendar"></div>
                                                </div>
                                            </div>
                                            <!-- end col -->
                                            <!-- BEGIN MODAL -->
                                            <div class="modal fade none-border" id="event-modal">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                            <h4 class="modal-title">
                                                                <strong>Add New Event</strong>
                                                            </h4>
                                                        </div>
                                                        <div class="modal-body"></div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button>
                                                            <button type="button" class="btn btn-success save-event waves-effect waves-light">Create event</button>
                                                            <button type="button" class="btn btn-danger delete-event waves-effect waves-light" data-dismiss="modal">Delete</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Modal Add Category -->
                                            <div class="modal fade none-border" id="add-category">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                            <h4 class="modal-title">
                                                                <strong>Add a category </strong>
                                                            </h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <form>
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <label class="control-label">Category Name</label>
                                                                        <input class="form-control form-white" placeholder="Enter name" type="text" name="category-name" />
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <label class="control-label">Choose Category Color</label>
                                                                        <select class="form-control form-white" data-placeholder="Choose a color..." name="category-color">
                                                                            <option value="success">Success</option>
                                                                            <option value="danger">Danger</option>
                                                                            <option value="info">Info</option>
                                                                            <option value="pink">Pink</option>
                                                                            <option value="primary">Primary</option>
                                                                            <option value="warning">Warning</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </form>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button>
                                                            <button type="button" class="btn btn-danger waves-effect waves-light save-category" data-dismiss="modal">Save</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- END MODAL -->
                                        </div>
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





        <!-- jquery vendor -->
        <script src="js/lib/jquery.min.js"></script>
        <script src="js/lib/jquery.nanoscroller.min.js"></script>
        <script src="js/lib/menubar/sidebar.js"></script>
        <script src="js/lib/preloader/pace.min.js"></script>
        <script src="js/lib/bootstrap.min.js"></script>
        <script src="js/scripts.js"></script>

        <script src="js/lib/jquery-ui/jquery-ui.min.js"></script>
        <script src="js/lib/moment/moment.js"></script>
        <script src="js/lib/calendar/fullcalendar.min.js"></script>
        <script src="js/lib/calendar/fullcalendar-init.js"></script>
        <!-- scripit init-->
    </body>

</html>