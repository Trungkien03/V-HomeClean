<%-- 
    Document   : ui-tab
    Created on : May 21, 2023, 9:58:41 PM
    Author     : Trung Kien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Focus Admin: Tab</title>

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
                                                        <img class="pull-left m-r-10 avatar-img"
                                                             src="images/avatar/3.jpg" alt="" />
                                                        <div class="notification-content">
                                                            <small class="notification-timestamp pull-right">02:34
                                                                PM</small>
                                                            <div class="notification-heading">Mr. John</div>
                                                            <div class="notification-text">5 members joined today </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <img class="pull-left m-r-10 avatar-img"
                                                             src="images/avatar/3.jpg" alt="" />
                                                        <div class="notification-content">
                                                            <small class="notification-timestamp pull-right">02:34
                                                                PM</small>
                                                            <div class="notification-heading">Mariam</div>
                                                            <div class="notification-text">likes a photo of you</div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <img class="pull-left m-r-10 avatar-img"
                                                             src="images/avatar/3.jpg" alt="" />
                                                        <div class="notification-content">
                                                            <small class="notification-timestamp pull-right">02:34
                                                                PM</small>
                                                            <div class="notification-heading">Tasnim</div>
                                                            <div class="notification-text">Hi Teddy, Just wanted to let you
                                                                ...</div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <img class="pull-left m-r-10 avatar-img"
                                                             src="images/avatar/3.jpg" alt="" />
                                                        <div class="notification-content">
                                                            <small class="notification-timestamp pull-right">02:34
                                                                PM</small>
                                                            <div class="notification-heading">Mr. John</div>
                                                            <div class="notification-text">Hi Teddy, Just wanted to let you
                                                                ...</div>
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
                                                        <img class="pull-left m-r-10 avatar-img"
                                                             src="images/avatar/1.jpg" alt="" />
                                                        <div class="notification-content">
                                                            <small class="notification-timestamp pull-right">02:34
                                                                PM</small>
                                                            <div class="notification-heading">Michael Qin</div>
                                                            <div class="notification-text">Hi Teddy, Just wanted to let you
                                                                ...</div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="notification-unread">
                                                    <a href="#">
                                                        <img class="pull-left m-r-10 avatar-img"
                                                             src="images/avatar/2.jpg" alt="" />
                                                        <div class="notification-content">
                                                            <small class="notification-timestamp pull-right">02:34
                                                                PM</small>
                                                            <div class="notification-heading">Mr. John</div>
                                                            <div class="notification-text">Hi Teddy, Just wanted to let you
                                                                ...</div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <img class="pull-left m-r-10 avatar-img"
                                                             src="images/avatar/3.jpg" alt="" />
                                                        <div class="notification-content">
                                                            <small class="notification-timestamp pull-right">02:34
                                                                PM</small>
                                                            <div class="notification-heading">Michael Qin</div>
                                                            <div class="notification-text">Hi Teddy, Just wanted to let you
                                                                ...</div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <img class="pull-left m-r-10 avatar-img"
                                                             src="images/avatar/2.jpg" alt="" />
                                                        <div class="notification-content">
                                                            <small class="notification-timestamp pull-right">02:34
                                                                PM</small>
                                                            <div class="notification-heading">Mr. John</div>
                                                            <div class="notification-text">Hi Teddy, Just wanted to let you
                                                                ...</div>
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
                                        <li class="breadcrumb-item active">UI-Tab</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                        <!-- /# column -->
                    </div>
                    <!-- /# row -->
                    <section id="main-content">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Default Tab</h4>
                                        <!-- Nav tabs -->
                                        <ul class="nav nav-tabs" role="tablist">
                                            <li class="nav-item"> <a class="nav-link active" data-toggle="tab" href="#home" role="tab"><span class="hidden-sm-up"><i class="ti-home"></i></span> <span class="hidden-xs-down">Home</span></a> </li>
                                            <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#profile" role="tab"><span class="hidden-sm-up"><i class="ti-user"></i></span> <span class="hidden-xs-down">Profile</span></a> </li>
                                            <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#messages" role="tab"><span class="hidden-sm-up"><i class="ti-email"></i></span> <span class="hidden-xs-down">Messages</span></a> </li>
                                        </ul>
                                        <!-- Tab panes -->
                                        <div class="tab-content tabcontent-border">
                                            <div class="tab-pane active" id="home" role="tabpanel">
                                                <div class="p-20">
                                                    <h5>Best Clean Tab ever</h5>
                                                    <h6>you can use it with the small code</h6>
                                                    <p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a.</p>
                                                </div>
                                            </div>
                                            <div class="tab-pane  p-20" id="profile" role="tabpanel">2</div>
                                            <div class="tab-pane p-20" id="messages" role="tabpanel">3</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="card">
                                    <div class="card-body p-b-0">
                                        <h4 class="card-title">Customtab Tab</h4>
                                        <!-- Nav tabs -->
                                        <ul class="nav nav-tabs customtab" role="tablist">
                                            <li class="nav-item"> <a class="nav-link active" data-toggle="tab" href="#home2" role="tab"><span class="hidden-sm-up"><i class="ti-home"></i></span> <span class="hidden-xs-down">Home</span></a> </li>
                                            <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#profile2" role="tab"><span class="hidden-sm-up"><i class="ti-user"></i></span> <span class="hidden-xs-down">Profile</span></a> </li>
                                            <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#messages2" role="tab"><span class="hidden-sm-up"><i class="ti-email"></i></span> <span class="hidden-xs-down">Messages</span></a> </li>
                                        </ul>
                                        <!-- Tab panes -->
                                        <div class="tab-content">
                                            <div class="tab-pane active" id="home2" role="tabpanel">
                                                <div class="p-20">
                                                    <h5>Best Clean Tab ever</h5>
                                                    <h6>you can use it with the small code</h6>
                                                    <p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a.</p>
                                                </div>
                                            </div>
                                            <div class="tab-pane  p-20" id="profile2" role="tabpanel">2</div>
                                            <div class="tab-pane p-20" id="messages2" role="tabpanel">3</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- row -->
                            <!-- row -->
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="card">
                                        <div class="card-body">
                                            <h4 class="card-title">Vertical Tab</h4>
                                            <!-- Nav tabs -->
                                            <div class="vtabs">
                                                <ul class="nav nav-tabs tabs-vertical" role="tablist">
                                                    <li class="nav-item"> <a class="nav-link active" data-toggle="tab" href="#home4" role="tab"><span class="hidden-sm-up"><i class="ti-home"></i></span> <span class="hidden-xs-down">Home</span> </a> </li>
                                                    <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#profile4" role="tab"><span class="hidden-sm-up"><i class="ti-user"></i></span> <span class="hidden-xs-down">Profile</span></a> </li>
                                                    <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#messages4" role="tab"><span class="hidden-sm-up"><i class="ti-email"></i></span> <span class="hidden-xs-down">Messages</span></a> </li>
                                                </ul>
                                                <!-- Tab panes -->
                                                <div class="tab-content">
                                                    <div class="tab-pane active" id="home4" role="tabpanel">
                                                        <div class="p-20">
                                                            <h5>Best Clean Tab ever</h5>
                                                            <h6>you can use it with the small code</h6>
                                                            <p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a.</p>
                                                        </div>
                                                    </div>
                                                    <div class="tab-pane p-20" id="profile4" role="tabpanel">2</div>
                                                    <div class="tab-pane p-20" id="messages4" role="tabpanel">3</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="card">
                                        <div class="card-body">
                                            <h4 class="card-title">Customtab vertical Tab</h4>
                                            <!-- Nav tabs -->
                                            <div class="vtabs customvtab">
                                                <ul class="nav nav-tabs tabs-vertical" role="tablist">
                                                    <li class="nav-item"> <a class="nav-link active" data-toggle="tab" href="#home3" role="tab"><span class="hidden-sm-up"><i class="ti-home"></i></span> <span class="hidden-xs-down">Home</span> </a> </li>
                                                    <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#profile3" role="tab"><span class="hidden-sm-up"><i class="ti-user"></i></span> <span class="hidden-xs-down">Profile</span></a> </li>
                                                    <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#messages3" role="tab"><span class="hidden-sm-up"><i class="ti-email"></i></span> <span class="hidden-xs-down">Messages</span></a> </li>
                                                </ul>
                                                <!-- Tab panes -->
                                                <div class="tab-content">
                                                    <div class="tab-pane active" id="home3" role="tabpanel">
                                                        <div class="p-20">
                                                            <h5>Best Clean Tab ever</h5>
                                                            <h6>you can use it with the small code</h6>
                                                            <p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a.</p>
                                                        </div>
                                                    </div>
                                                    <div class="tab-pane  p-20" id="profile3" role="tabpanel">2</div>
                                                    <div class="tab-pane p-20" id="messages3" role="tabpanel">3</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- row -->
                            <!-- row -->
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="card">
                                        <div class="card-body">
                                            <h4 class="card-title m-b-40">Tab with dropdown</h4>
                                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                                <li class="nav-item"> <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home5" role="tab" aria-controls="home5" aria-expanded="true"><span class="hidden-sm-up"><i class="ti-home"></i></span> <span class="hidden-xs-down">Home</span></a> </li>
                                                <li class="nav-item"> <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile5" role="tab" aria-controls="profile"><span class="hidden-sm-up"><i class="ti-user"></i></span> <span class="hidden-xs-down">Profile</span></a></li>
                                                <li class="nav-item dropdown">
                                                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                                                        <span class="hidden-sm-up"><i class="ti-email"></i></span> <span class="hidden-xs-down">Dropdown</span>
                                                    </a>
                                                    <div class="dropdown-menu"> <a class="dropdown-item" id="dropdown1-tab" href="#dropdown1" role="tab" data-toggle="tab" aria-controls="dropdown1">@fat</a> <a class="dropdown-item" id="dropdown2-tab" href="#dropdown2" role="tab" data-toggle="tab" aria-controls="dropdown2">@mdo</a> </div>
                                                </li>
                                            </ul>
                                            <div class="tab-content tabcontent-border p-20" id="myTabContent">
                                                <div role="tabpanel" class="tab-pane fade show active" id="home5" aria-labelledby="home-tab">
                                                    <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
                                                </div>
                                                <div class="tab-pane fade" id="profile5" role="tabpanel" aria-labelledby="profile-tab">
                                                    <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr, vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean shorts beard ut DIY ethical culpa terry richardson biodiesel. Art party scenester stumptown, tumblr butcher vero sint qui sapiente accusamus tattooed echo park.</p>
                                                </div>
                                                <div class="tab-pane fade" id="dropdown1" role="tabpanel" aria-labelledby="dropdown1-tab">
                                                    <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
                                                </div>
                                                <div class="tab-pane fade" id="dropdown2" role="tabpanel" aria-labelledby="dropdown2-tab">
                                                    <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="card">
                                        <div class="card-body p-b-0">
                                            <h4 class="card-title">Customtab2 Tab</h4>
                                            <!-- Nav tabs -->
                                            <ul class="nav nav-tabs customtab2" role="tablist">
                                                <li class="nav-item"> <a class="nav-link active" data-toggle="tab" href="#home7" role="tab"><span class="hidden-sm-up"><i class="ti-home"></i></span> <span class="hidden-xs-down">Home</span></a> </li>
                                                <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#profile7" role="tab"><span class="hidden-sm-up"><i class="ti-user"></i></span> <span class="hidden-xs-down">Profile</span></a> </li>
                                                <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#messages7" role="tab"><span class="hidden-sm-up"><i class="ti-email"></i></span> <span class="hidden-xs-down">Messages</span></a> </li>
                                            </ul>
                                            <!-- Tab panes -->
                                            <div class="tab-content">
                                                <div class="tab-pane active" id="home7" role="tabpanel">
                                                    <div class="p-20">
                                                        <h5>Best Clean Tab ever</h5>
                                                        <h6>you can use it with the small code</h6>
                                                        <p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a.</p>
                                                    </div>
                                                </div>
                                                <div class="tab-pane  p-20" id="profile7" role="tabpanel">2</div>
                                                <div class="tab-pane p-20" id="messages7" role="tabpanel">3</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- row -->
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="card">
                                        <div class="card-body">
                                            <h4 class="card-title">Nav Pills Tabs</h4>
                                            <ul class="nav nav-pills m-t-30 m-b-30">
                                                <li class=" nav-item"> <a href="#navpills-1" class="nav-link active" data-toggle="tab" aria-expanded="false">Tab One</a> </li>
                                                <li class="nav-item"> <a href="#navpills-2" class="nav-link" data-toggle="tab" aria-expanded="false">Tab Two</a> </li>
                                                <li class="nav-item"> <a href="#navpills-3" class="nav-link" data-toggle="tab" aria-expanded="true">Tab Three</a> </li>
                                            </ul>
                                            <div class="tab-content br-n pn">
                                                <div id="navpills-1" class="tab-pane active">
                                                    <div class="row">
                                                        <div class="col-md-4"> <img src="images/c1.jpg" class="img-fluid thumbnail m-r-15"> </div>
                                                        <div class="col-md-8"> Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica.
                                                            <p>
                                                                <br/> Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="navpills-2" class="tab-pane">
                                                    <div class="row">
                                                        <div class="col-md-8"> Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica.
                                                            <p>
                                                                <br/> Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid.</p>
                                                        </div>
                                                        <div class="col-md-4"> <img src="images/c1.jpg" class="img-fluid thumbnail mr25"> </div>
                                                    </div>
                                                </div>
                                                <div id="navpills-3" class="tab-pane">
                                                    <div class="row">
                                                        <div class="col-md-4"> <img src="images/c1.jpg" class="img-fluid thumbnail mr25"> </div>
                                                        <div class="col-md-8"> Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica.
                                                            <p>
                                                                <br/> Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="card">
                                        <div class="card-body">
                                            <h4 class="card-title">Nav Pills Tabs</h4>
                                            <ul class="nav nav-pills m-t-30 justify-content-end m-b-30">
                                                <li class=" nav-item"> <a href="#navpills2-1" class="nav-link active" data-toggle="tab" aria-expanded="false">Tab One</a> </li>
                                                <li class="nav-item"> <a href="#navpills2-2" class="nav-link" data-toggle="tab" aria-expanded="false">Tab Two</a> </li>
                                                <li class="nav-item"> <a href="#navpills2-3" class="nav-link" data-toggle="tab" aria-expanded="true">Tab Three</a> </li>
                                            </ul>
                                            <div class="tab-content br-n pn">
                                                <div id="navpills2-1" class="tab-pane active">
                                                    <div class="row">
                                                        <div class="col-md-4"> <img src="images/c1.jpg" class="img-fluid thumbnail m-r-15"> </div>
                                                        <div class="col-md-8"> Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica.
                                                            <p>
                                                                <br/> Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="navpills2-2" class="tab-pane">
                                                    <div class="row">
                                                        <div class="col-md-8"> Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica.
                                                            <p>
                                                                <br/> Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid.</p>
                                                        </div>
                                                        <div class="col-md-4"> <img src="images/c1.jpg" class="img-fluid thumbnail mr25"> </div>
                                                    </div>
                                                </div>
                                                <div id="navpills2-3" class="tab-pane">
                                                    <div class="row">
                                                        <div class="col-md-4"> <img src="images/c1.jpg" class="img-fluid thumbnail mr25"> </div>
                                                        <div class="col-md-8"> Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica.
                                                            <p>
                                                                <br/> Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Tab with icon</h4>
                                        <!-- Nav tabs -->
                                        <ul class="nav nav-tabs" role="tablist">
                                            <li class="nav-item"> <a class="nav-link active" data-toggle="tab" href="#home8" role="tab"><span><i class="ti-home"></i></span></a> </li>
                                            <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#profile8" role="tab"><span><i class="ti-user"></i></span></a> </li>
                                            <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#messages8" role="tab"><span><i class="ti-email"></i></span></a> </li>
                                        </ul>
                                        <!-- Tab panes -->
                                        <div class="tab-content tabcontent-border">
                                            <div class="tab-pane active" id="home8" role="tabpanel">
                                                <div class="p-20">
                                                    <h5>Best Clean Tab ever</h5>
                                                    <h6>you can use it with the small code</h6>
                                                    <p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a.</p>
                                                </div>
                                            </div>
                                            <div class="tab-pane  p-20" id="profile8" role="tabpanel">2</div>
                                            <div class="tab-pane p-20" id="messages8" role="tabpanel">3</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Customtab vertical Tab</h4>
                                        <!-- Nav tabs -->
                                        <div class="vtabs ">
                                            <ul class="nav nav-tabs tabs-vertical" role="tablist">
                                                <li class="nav-item"> <a class="nav-link active" data-toggle="tab" href="#home9" role="tab"><span><i class="ti-home"></i></span></a> </li>
                                                <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#profile9" role="tab"><span><i class="ti-user"></i></span></a> </li>
                                                <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#messages9" role="tab"><span><i class="ti-email"></i></span></a> </li>
                                            </ul>
                                            <!-- Tab panes -->
                                            <div class="tab-content">
                                                <div class="tab-pane active" id="home9" role="tabpanel">
                                                    <div class="p-20">
                                                        <h5>Best Clean Tab ever</h5>
                                                        <h6>you can use it with the small code</h6>
                                                        <p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a.</p>
                                                    </div>
                                                </div>
                                                <div class="tab-pane  p-20" id="profile9" role="tabpanel">2</div>
                                                <div class="tab-pane p-20" id="messages9" role="tabpanel">3</div>
                                            </div>
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
