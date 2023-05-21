<%-- 
    Document   : ui-typography
    Created on : May 21, 2023, 9:59:44 PM
    Author     : Trung Kien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Focus Admin: Collapse</title>

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
                                        <li class="breadcrumb-item active">UI-Accordion</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                        <!-- /# column -->
                    </div>
                    <!-- /# row -->
                    <section id="main-content">
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row justify-content-between">
                                            <div class="col-lg-6">
                                                <h4 class="card-title">Typography</h4>
                                                <div class="card-content">
                                                    <h6 class="card-subtitle">Use tags <code>h1 to h6</code> for get desire heading.</h6>
                                                    <h1>h1. Bootstrap heading</h1>
                                                    <h2>h2. Bootstrap heading</h2>
                                                    <h3>h3. Bootstrap heading</h3>
                                                    <h4>h4. Bootstrap heading</h4>
                                                    <h5>h5. Bootstrap heading</h5>
                                                    <h6>h6. Bootstrap heading</h6>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <h4 class="card-title">Heading with subtitle</h4>
                                                <h6 class="card-subtitle">Use tags <code>h1 to h6</code> for get desire heading.</h6>
                                                <div class="card-content">
                                                    <h1>Heading 1 <small>Sub-heading</small></h1>
                                                    <h2>Heading 2 <small>Sub-heading</small></h2>
                                                    <h3>Heading 3 <small>Sub-heading</small></h3>
                                                    <h4>Heading 4 <small>Sub-heading</small></h4>
                                                    <h5>Heading 5 <small>Sub-heading</small></h5>
                                                    <h6>Heading 6 <small>Sub-heading</small></h6>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <br>
                                                <br>
                                                <hr>
                                                <br>
                                                <br>
                                            </div>
                                            <div class="col-lg-5">
                                                <h4 class="card-title">Paragraph with justify</h4>
                                                <div class="card-content">
                                                    <h6 class="card-subtitle">Use tags <code>text-justify</code> for get desire paragraph.</h6>
                                                    <p class="text-justify">Ambitioni dedisse scripsisse iudicaretur. Cras mattis iudicium purus sit amet fermentum. Donec sed odio operae, eu vulputate felis rhoncus. Praeterea iter est quasdam res quas ex communi. At nos
                                                        hinc posthac, sitientis piros Afros. Petierunt uti sibi concilium totius Galliae in diem certam indicere. Cras mattis iudicium purus sit amet fermentum.</p>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 offset-lg-1">
                                                <h4 class="card-title">Alignment text</h4>
                                                <div class="card-content">
                                                    <h6 class="card-subtitle">Use tags <code>text-left, text-center, text-right</code> for get desire text.</h6>
                                                    <p class="text-left">Left aligned text on all viewport sizes.</p>
                                                    <p class="text-center">Center aligned text on all viewport sizes.</p>
                                                    <p class="text-right">Right aligned text on all viewport sizes.</p>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <br>
                                                <br>
                                                <hr>
                                                <br>
                                                <br>
                                            </div>
                                            <div class="col-lg-6">
                                                <h4 class="card-title">View port text</h4>
                                                <div class="card-content">
                                                    <h6 class="card-subtitle">Use tags <code>text-sm-left, text-md-left, text-lg-left, text-xl-left </code> for get desire text.</h6>
                                                    <p class="text-sm-left">Left aligned text on viewports sized SM (small) or wider.</p>
                                                    <p class="text-md-left">Left aligned text on viewports sized MD (medium) or wider.</p>
                                                    <p class="text-lg-left">Left aligned text on viewports sized LG (large) or wider.</p>
                                                    <p class="text-xl-left">Left aligned text on viewports sized XL (extra-large) or wider.</p>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <h4 class="card-title">Font weight and italics</h4>
                                                <div class="card-content">
                                                    <h6 class="card-subtitle">Use tags <code>font-weight-bold, font-weight-normal, font-weight-italic</code> for get desire text.</h6>
                                                    <p class="font-weight-bold">Bold text.</p>
                                                    <p class="font-weight-normal">Normal weight text.</p>
                                                    <p class="font-italic">Italic text.</p>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <br>
                                                <br>
                                                <hr>
                                                <br>
                                                <br>
                                            </div>
                                            <div class="col-lg-4">
                                                <h4 class="card-title">Text colors</h4>
                                                <div class="card-content">
                                                    <h6 class="card-subtitle">Use tags below class for get desire text.</h6>
                                                    <p class="text-muted">This is an example of muted text. Add class <code>text-muted</code></p>
                                                    <p class="text-primary">This is an example of primary text. Add class <code>text-primary</code></p>
                                                    <p class="text-success">This is an example of success text. Add class <code>text-success</code></p>
                                                    <p class="text-info">This is an example of info text. Add class <code>text-info</code></p>
                                                    <p class="text-warning">This is an example of warning text. Add class <code>text-warning</code></p>
                                                    <p class="text-danger">This is an example of danger text. Add class <code>text-danger</code></p>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <h4 class="card-title">Address</h4>
                                                <div class="card-content">
                                                    <h6 class="card-subtitle">Use <code>address</code> for get desire address.</h6>
                                                    <address>
                                                        <strong>Twitter, Inc.</strong>
                                                        <br> 795 Folsom Ave, Suite 600
                                                        <br> San Francisco, CA 94107
                                                        <br>
                                                        <abbr title="Phone">P:</abbr>(123) 456-7890
                                                    </address>
                                                    <address>
                                                        <strong>George Belly</strong>
                                                        <br>
                                                        <a href="mailto:#">first.last@example.com</a>
                                                    </address>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <h4 class="card-title">Blockquotes</h4>
                                                <h6 class="card-subtitle">Use <code>blockquote</code> for get desire address.</h6>
                                                <blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</blockquote>
                                                <blockquote>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                                                    <small>- Someone famous in <cite title="Source Title">Source Title</cite></small>
                                                </blockquote>
                                            </div>
                                            <div class="col-12">
                                                <br>
                                                <br>
                                                <hr>
                                                <br>
                                                <br>
                                            </div>
                                            <div class="col-lg-4">
                                                <h4 class="card-title">Ol Listing</h4>
                                                <h6 class="card-subtitle">Use tags <code>ol > li</code>for get desire ol list.</h6>
                                                <ol>
                                                    <li>Lorem ipsum dolor sit amet</li>
                                                    <li>Consectetur adipiscing elit</li>
                                                    <li>Integer molestie lorem at massa </li>
                                                </ol>
                                            </div>
                                            <div class="col-lg-4">
                                                <h4 class="card-title">Ul Listing</h4>
                                                <h6 class="card-subtitle">Use tags <code>ul > li</code>for get desire ol list.</h6>
                                                <ul>
                                                    <li>Lorem ipsum dolor sit amet</li>
                                                    <li>Consectetur adipiscing elit</li>
                                                    <li>Integer molestie lorem at massa </li>
                                                </ul>
                                            </div>
                                            <div class="col-lg-4">
                                                <h4 class="card-title">Description Text</h4>
                                                <h6 class="card-subtitle">Use tags <code>dl > dt</code>for get desire ol list.</h6>
                                                <dl>
                                                    <dt>Standard Description List</dt>
                                                    <dd>Description Text</dd>
                                                    <dt>Description List Title</dt>
                                                    <dd>Description List Text</dd>
                                                </dl>
                                            </div>
                                            <div class="col-12">
                                                <br>
                                                <br>
                                                <hr>
                                                <br>
                                                <br>
                                            </div>
                                            <div class="col-lg-4">
                                                <h4 class="card-title">Fancy Listing 1</h4>
                                                <h6 class="card-subtitle">Use class <code>list-icons</code>to ul for get desire ol list.</h6>
                                                <ul class="list-icons">
                                                    <li><i class="ti-angle-right"></i> Lorem ipsum dolor sit amet</li>
                                                    <li><i class="ti-angle-right"></i> Consectetur adipiscing elit</li>
                                                    <li><i class="ti-angle-right"></i> Integer molestie lorem at massa </li>
                                                </ul>
                                            </div>
                                            <div class="col-lg-4">
                                                <h4 class="card-title">Fancy Listing with href</h4>
                                                <h6 class="card-subtitle">Use class <code>list-icons</code>to ul for get desire ol list.</h6>
                                                <ul class="list-icons">
                                                    <li><a href="javascript:void(0)"><i class="fa fa-check text-info"></i> Lorem ipsum dolor sit amet</a></li>
                                                    <li><a href="javascript:void(0)"><i class="fa fa-check text-info"></i> Consectetur adipiscing elit</a></li>
                                                    <li><a href="javascript:void(0)"><i class="fa fa-check text-info"></i> Integer molestie lorem at massa </a></li>
                                                </ul>
                                            </div>
                                            <div class="col-lg-4">
                                                <h4 class="card-title">Fancy Listing with href</h4>
                                                <h6 class="card-subtitle">Use class <code>list-icons</code>to ul for get desire ol list.</h6>
                                                <ul class="list-icons">
                                                    <li><a href="javascript:void(0)"><i class="fa fa-chevron-right"></i> Lorem ipsum dolor sit amet</a></li>
                                                    <li><a href="javascript:void(0)"><i class="fa fa-chevron-right"></i> Consectetur adipiscing elit</a></li>
                                                    <li><a href="javascript:void(0)"><i class="fa fa-chevron-right"></i> Integer molestie lorem at massa </a></li>
                                                </ul>
                                            </div>
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