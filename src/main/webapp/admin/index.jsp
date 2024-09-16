<%
    String name= (String) session.getAttribute("adminName");
    if(name==null){
        response.sendRedirect("adminLogin.jsp");
    }
%>
<!doctype html>
<html lang="en" class="minimal-theme">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="zicon" href="assets/images/favicon-32x32.png" type="image/png" />
    <!--plugins-->
    <link href="assets/plugins/simplebar/css/simplebar.css" rel="stylesheet" />
    <link href="assets/plugins/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet" />
    <link href="assets/plugins/metismenu/css/metisMenu.min.css" rel="stylesheet" />
    <!-- Bootstrap CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/bootstrap-extended.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/icons.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">

    <!-- loader-->
    <link href="assets/css/pace.min.css" rel="stylesheet" />


    <!--Theme Styles-->
    <link href="assets/css/dark-theme.css" rel="stylesheet" />
    <link href="assets/css/light-theme.css" rel="stylesheet" />
    <link href="assets/css/semi-dark.css" rel="stylesheet" />
    <link href="assets/css/header-colors.css" rel="stylesheet" />

    <title>Banking</title>
</head>

<body>


<!--start wrapper-->
<div class="wrapper">
    <%@include file="include/header.jsp" %>

    <%@include file="include/sidebar.jsp" %>

    <!--start content-->
    <main class="page-content">
        <!--breadcrumb-->
        <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
            <div class="breadcrumb-title pe-3">Dashboards</div>
            <div class="ps-3">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0 p-0">
                        <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">Admin Dashboard</li>
                    </ol>
                </nav>
            </div>
            <div class="ms-auto">
                <div class="btn-group">
                    <button type="button" class="btn btn-primary">Settings</button>
                    <button type="button" class="btn btn-primary split-bg-primary dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown">	<span class="visually-hidden">Toggle Dropdown</span>
                    </button>
                    <div class="dropdown-menu dropdown-menu-right dropdown-menu-lg-end">	<a class="dropdown-item" href="javascript:;">Action</a>
                        <a class="dropdown-item" href="javascript:;">Another action</a>
                        <a class="dropdown-item" href="javascript:;">Something else here</a>
                        <div class="dropdown-divider"></div>	<a class="dropdown-item" href="javascript:;">Separated link</a>
                    </div>
                </div>
            </div>
        </div>
        <!--end breadcrumb-->


        <div class="row">
            <div class="col-12 col-lg-12 col-xl-6 d-flex">
                <div class="card radius-10 w-100">
                    <div class="card-body">
                        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-xl-3 row-cols-xxl-3 g-3">
                            <div class="col">
                                <div class="card radius-10 bg-tiffany mb-0">
                                    <div class="card-body text-center">
                                        <div class="widget-icon mx-auto mb-3 bg-white-1 text-white">
                                            <i class="bi bi-file-earmark-break-fill"></i>
                                        </div>
                                        <h3 class="text-white">25</h3>
                                        <p class="mb-0 text-white">Pages</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="card radius-10 bg-danger mb-0">
                                    <div class="card-body text-center">
                                        <div class="widget-icon mx-auto mb-3 bg-white-1 text-white">
                                            <i class="bi bi-hdd-fill"></i>
                                        </div>
                                        <h3 class="text-white">35</h3>
                                        <p class="mb-0 text-white">Posts</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="card radius-10 bg-success mb-0">
                                    <div class="card-body text-center">
                                        <div class="widget-icon mx-auto mb-3 bg-white-1 text-white">
                                            <i class="bi bi-people-fill"></i>
                                        </div>
                                        <h3 class="text-white">16</h3>
                                        <p class="mb-0 text-white">Users</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="card radius-10 bg-dark mb-0">
                                    <div class="card-body text-center">
                                        <div class="widget-icon mx-auto mb-3 bg-white-1 text-white">
                                            <i class="bi bi-file-earmark-check-fill"></i>
                                        </div>
                                        <h3 class="text-white">18</h3>
                                        <p class="mb-0 text-white">Files</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="card radius-10 bg-purple mb-0">
                                    <div class="card-body text-center">
                                        <div class="widget-icon mx-auto mb-3 bg-white-1 text-white">
                                            <i class="bi bi-tags-fill"></i>
                                        </div>
                                        <h3 class="text-white">22</h3>
                                        <p class="mb-0 text-white">Categories</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="card radius-10 bg-orange mb-0">
                                    <div class="card-body text-center">
                                        <div class="widget-icon mx-auto mb-3 bg-white-1 text-white">
                                            <i class="bi bi-chat-left-quote-fill"></i>
                                        </div>
                                        <h3 class="text-white">45</h3>
                                        <p class="mb-0 text-white">Comments</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12 col-lg-12 col-xl-6 d-flex">
                <div class="card radius-10 w-100">
                    <div class="card-header bg-transparent">
                        <div class="row g-3 align-items-center">
                            <div class="col">
                                <h5 class="mb-0">User Status</h5>
                            </div>
                            <div class="col">
                                <div class="d-flex align-items-center justify-content-end gap-3 cursor-pointer">
                                    <div class="dropdown">
                                        <a class="dropdown-toggle dropdown-toggle-nocaret" href="#" data-bs-toggle="dropdown" aria-expanded="false"><i class="bx bx-dots-horizontal-rounded font-22 text-option"></i>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="javascript:;">Action</a>
                                            </li>
                                            <li><a class="dropdown-item" href="javascript:;">Another action</a>
                                            </li>
                                            <li>
                                                <hr class="dropdown-divider">
                                            </li>
                                            <li><a class="dropdown-item" href="javascript:;">Something else here</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div id="chart1"></div>
                    </div>
                </div>
            </div>
        </div><!--end row-->

        <div class="row">
            <div class="col-12 col-lg-12 col-xl-12 col-xxl-6 d-flex">
                <div class="card radius-10 w-100">
                    <div class="card-header bg-transparent">
                        <div class="row g-3 align-items-center">
                            <div class="col">
                                <h5 class="mb-0">Statistics</h5>
                            </div>
                            <div class="col">
                                <div class="d-flex align-items-center justify-content-end gap-3 cursor-pointer">
                                    <div class="dropdown">
                                        <a class="dropdown-toggle dropdown-toggle-nocaret" href="#" data-bs-toggle="dropdown" aria-expanded="false"><i class="bx bx-dots-horizontal-rounded font-22 text-option"></i>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="javascript:;">Action</a>
                                            </li>
                                            <li><a class="dropdown-item" href="javascript:;">Another action</a>
                                            </li>
                                            <li>
                                                <hr class="dropdown-divider">
                                            </li>
                                            <li><a class="dropdown-item" href="javascript:;">Something else here</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="d-lg-flex align-items-center justify-content-center gap-4">
                            <div id="chart3"></div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item"><i class="bi bi-circle-fill text-primary me-1"></i> Visitors: <span class="me-1">89</span></li>
                                <li class="list-group-item"><i class="bi bi-circle-fill text-danger me-1"></i> Subscribers: <span class="me-1">45</span></li>
                                <li class="list-group-item"><i class="bi bi-circle-fill text-success me-1"></i> Contributor: <span class="me-1">35</span></li>
                                <li class="list-group-item"><i class="bi bi-circle-fill text-orange me-1"></i> Author: <span class="me-1">62</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12 col-lg-12 col-xl-12 col-xxl-6 d-flex">
                <div class="card radius-10 w-100">
                    <div class="card-header bg-transparent">
                        <div class="row g-3 align-items-center">
                            <div class="col">
                                <h5 class="mb-0">Site Speed</h5>
                            </div>
                            <div class="col">
                                <div class="d-flex align-items-center justify-content-end gap-3 cursor-pointer">
                                    <div class="dropdown">
                                        <a class="dropdown-toggle dropdown-toggle-nocaret" href="#" data-bs-toggle="dropdown" aria-expanded="false"><i class="bx bx-dots-horizontal-rounded font-22 text-option"></i>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="javascript:;">Action</a>
                                            </li>
                                            <li><a class="dropdown-item" href="javascript:;">Another action</a>
                                            </li>
                                            <li>
                                                <hr class="dropdown-divider">
                                            </li>
                                            <li><a class="dropdown-item" href="javascript:;">Something else here</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row align-items-center justify-content-center">
                            <div class="col-12 col-lg-6 col-xl-6">
                                <div id="chart4"></div>
                            </div>
                            <div class="col-12 col-lg-6 col-xl-6">
                                <div class="row row-cols-1 row-cols-lg-2 row-cols-xl-2 g-3">
                                    <div class="col">
                                        <div class="card radius-10 mb-0 shadow-none bg-light-purple">
                                            <div class="card-body p-4">
                                                <div class="text-center">
                                                    <h5 class="mb-0 text-purple">75</h5>
                                                    <p class="mb-0 text-purple">Grade</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="card radius-10 mb-0 shadow-none bg-light-orange">
                                            <div class="card-body p-4">
                                                <div class="text-center">
                                                    <h5 class="mb-0 text-orange">1.9mb</h5>
                                                    <p class="mb-0 text-orange">Page Size</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="card radius-10 mb-0 shadow-none bg-light-success">
                                            <div class="card-body p-4">
                                                <div class="text-center">
                                                    <h5 class="mb-0 text-success">634 mc</h5>
                                                    <p class="mb-0 text-success">Load Time</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="card radius-10 mb-0 shadow-none bg-light-primary">
                                            <div class="card-body p-4">
                                                <div class="text-center">
                                                    <h5 class="mb-0 text-primary">48</h5>
                                                    <p class="mb-0 text-primary">Requests</p>
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
        </div><!--end row-->

        <div class="row">
            <div class="col-12 col-lg-12 col-xl-6 d-flex">
                <div class="card radius-10 w-100">
                    <div class="card-header bg-transparent p-3">
                        <div class="row row-cols-1 row-cols-lg-2 g-3 align-items-center">
                            <div class="col">
                                <h5 class="mb-0">Posts vs Comments</h5>
                            </div>
                            <div class="col">
                                <div class="d-flex align-items-center justify-content-sm-end gap-3 cursor-pointer">
                                    <div class="font-13"><i class="bi bi-circle-fill text-info"></i><span class="ms-2">Posts</span></div>
                                    <div class="font-13"><i class="bi bi-circle-fill text-orange"></i><span class="ms-2">Comments</span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div id="chart5"></div>
                    </div>
                </div>
            </div>
            <div class="col-12 col-lg-12 col-xl-6 d-flex">
                <div class="card radius-10 w-100">
                    <div class="card-header bg-transparent">
                        <div class="row g-3 align-items-center">
                            <div class="col">
                                <h5 class="mb-0">Statistics</h5>
                            </div>
                            <div class="col">
                                <div class="d-flex align-items-center justify-content-end gap-3 cursor-pointer">
                                    <div class="dropdown">
                                        <a class="dropdown-toggle dropdown-toggle-nocaret" href="#" data-bs-toggle="dropdown" aria-expanded="false"><i class="bx bx-dots-horizontal-rounded font-22 text-option"></i>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="javascript:;">Action</a>
                                            </li>
                                            <li><a class="dropdown-item" href="javascript:;">Another action</a>
                                            </li>
                                            <li>
                                                <hr class="dropdown-divider">
                                            </li>
                                            <li><a class="dropdown-item" href="javascript:;">Something else here</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div id="chart2"></div>
                    </div>
                </div>
            </div>
        </div><!--end row-->


    </main>
    <!--end page main-->


    <!--start overlay-->
    <div class="overlay nav-toggle-icon"></div>
    <!--end overlay-->

    <!--Start Back To Top Button-->
    <a href="javaScript:;" class="back-to-top"><i class='bx bxs-up-arrow-alt'></i></a>
    <!--End Back To Top Button-->

    <!--start switcher-->
    <div class="switcher-body">
        <button class="btn btn-primary btn-switcher shadow-sm" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling" aria-controls="offcanvasScrolling"><i class="bi bi-paint-bucket me-0"></i></button>
        <div class="offcanvas offcanvas-end shadow border-start-0 p-2" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling">
            <div class="offcanvas-header border-bottom">
                <h5 class="offcanvas-title" id="offcanvasScrollingLabel">Theme Customizer</h5>
                <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas"></button>
            </div>
            <div class="offcanvas-body">
                <h6 class="mb-0">Theme Variation</h6>
                <hr>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="LightTheme" value="option1">
                    <label class="form-check-label" for="LightTheme">Light</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="DarkTheme" value="option2">
                    <label class="form-check-label" for="DarkTheme">Dark</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="SemiDarkTheme" value="option3">
                    <label class="form-check-label" for="SemiDarkTheme">Semi Dark</label>
                </div>
                <hr>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="MinimalTheme" value="option3" checked>
                    <label class="form-check-label" for="MinimalTheme">Minimal Theme</label>
                </div>
                <hr/>
                <h6 class="mb-0">Header Colors</h6>
                <hr/>
                <div class="header-colors-indigators">
                    <div class="row row-cols-auto g-3">
                        <div class="col">
                            <div class="indigator headercolor1" id="headercolor1"></div>
                        </div>
                        <div class="col">
                            <div class="indigator headercolor2" id="headercolor2"></div>
                        </div>
                        <div class="col">
                            <div class="indigator headercolor3" id="headercolor3"></div>
                        </div>
                        <div class="col">
                            <div class="indigator headercolor4" id="headercolor4"></div>
                        </div>
                        <div class="col">
                            <div class="indigator headercolor5" id="headercolor5"></div>
                        </div>
                        <div class="col">
                            <div class="indigator headercolor6" id="headercolor6"></div>
                        </div>
                        <div class="col">
                            <div class="indigator headercolor7" id="headercolor7"></div>
                        </div>
                        <div class="col">
                            <div class="indigator headercolor8" id="headercolor8"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--end switcher-->

</div>
<!--end wrapper-->


<!-- Bootstrap bundle JS -->
<script src="assets/js/bootstrap.bundle.min.js"></script>
<!--plugins-->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/plugins/simplebar/js/simplebar.min.js"></script>
<script src="assets/plugins/metismenu/js/metisMenu.min.js"></script>
<script src="assets/plugins/perfect-scrollbar/js/perfect-scrollbar.js"></script>
<script src="assets/js/pace.min.js"></script>
<script src="assets/plugins/apexcharts-bundle/js/apexcharts.min.js"></script>
<!--app-->
<script src="assets/js/app.js"></script>
<script src="assets/js/index5.js"></script>


</body>

</html>