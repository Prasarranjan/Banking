<%@ page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="Util.DbConnection" %>
<!doctype html>
<html lang="en" class="minimal-theme">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="assets/images/favicon-32x32.png" type="image/png" />
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
    <!--toast-->
    <link href="assets/jquery-toast/src/jquery.toast.css" rel="stylesheet" />
    <link href="assets/jquery-toast/dist/jquery.toast.min.css" rel="stylesheet" />

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
                        <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
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
            <div class="col-xl-9 mx-auto">
                <h6 class="mb-0 text-uppercase">Add Branch</h6>
                <hr/>
                <div class="card">
                    <div class="card-body">
                        <form id="customerForm"  enctype="multipart/form-data">
                            <!-- Section: Customer Details -->
                            <h5 class="form-label">CUSTOMER DETAILS</h5>

                            <!-- First Row: First Name, Middle Name, Last Name -->
                            <div class="row mb-3">
                                <div class="col-md-4">
                                    <label for="firstName" class="form-label">Customer First Name</label>
                                    <input id="firstName" class="form-control form-control-lg" type="text" name="firstName" placeholder="Enter First Name" required>
                                    <input type="hidden" name="event" value="addaccount">
                                    <input type="hidden" name="latitude" id="latitude" value="">
                                    <input type="hidden" name="longitude" id="longitude" value="">
                                    <input type="hidden" name="branchid" id="branchid" value="10">
                                    <input type="hidden" name="typeId" id="typeId" value="11">
                                </div>

                                <div class="col-md-4">
                                    <label for="lastName" class="form-label">Customer Last Name</label>
                                    <input id="lastName" class="form-control form-control-lg" type="text" name="lastName" placeholder="Enter Last Name" required>
                                </div>
                                <div class="col-md-4">
                                    <label for="email" class="form-label">Customer Email</label>
                                    <input id="email" class="form-control form-control-lg" type="email" name="email" placeholder="Enter Customer Email" required>
                                </div>
                            </div>

                            <!-- Second Row: Email, Password, Date of Birth -->
                            <div class="row mb-3">

                                <div class="col-md-4">
                                    <label for="password" class="form-label">Customer Password</label>
                                    <input id="password" class="form-control form-control-lg" type="password" name="password" placeholder="Enter Customer Password" required>
                                </div>
                                <div class="col-md-4">
                                    <label for="dob" class="form-label">Customer Dob</label>
                                    <input id="dob" class="form-control form-control-lg" type="date" name="dob" placeholder="dd/mm/yyyy" required>
                                </div>
                            </div>

                            <!-- Third Row: Customer Phone, Address -->
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label for="phone" class="form-label">Customer Phone</label>
                                    <input id="phone" class="form-control form-control-lg" type="tel" name="phone" placeholder="Enter Customer Phone" required>
                                </div>
                                <div class="col-md-6">
                                    <label for="address" class="form-label">Customer Address</label>
                                    <input id="address" class="form-control form-control-lg" type="text" name="address" placeholder="Enter Address" required>
                                </div>
                            </div>

                            <!-- Fourth Row: Photo -->
                            <div class="mb-3">
                                <label for="photo" class="form-label">Photo</label>
                                <input id="photo" class="form-control form-control-lg" type="file" name="photo" accept="image/*" required>
                            </div>

                            <!-- Section: Bank & Branch Details -->
                            <h5 class="form-label">BANK & BRANCH DETAILS</h5>

                            <!-- Fifth Row: Bank and Branch Dropdowns -->
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label for="bankSelect" class="form-label">Select Bank</label>
                                    <select id="bankSelect" name="bankId" class="form-select form-control-lg" required>
                                        <option value="">-Select Bank-</option>
                                        <!-- Bank options dynamically generated from database -->
                                        <%
                                            try {
                                                Connection con = DbConnection.getConnection();
                                                String sql1 = "SELECT bankId, bankName FROM Bank";
                                                PreparedStatement ps = con.prepareStatement(sql1);
                                                ResultSet rs = ps.executeQuery();
                                                while (rs.next()) {
                                                    int bankId = rs.getInt("bankId");
                                                    String bankName = rs.getString("bankName");
                                        %>
                                        <option value="<%= bankId %>"><%= bankName %></option>
                                        <%
                                                }
                                            } catch (Exception e) {
                                                e.printStackTrace();
                                            }
                                        %>
                                    </select>
                                </div>
                                <div class="col-md-6">
                                    <label for="branchSelect" class="form-label">Select Branch</label>
                                    <select id="branchSelect" name="branchId" class="form-select form-control-lg" required>
                                        <!-- Branch options will be dynamically populated based on bank selection -->
                                    </select>
                                </div>
                            </div>

                            <!-- Section: Account Details -->
                            <h5 class="form-label">ACCOUNT DETAILS</h5>

                            <!-- Sixth Row: Account Type, Minimum Balance -->
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label for="accountType" class="form-label">Account Type</label>
                                    <select id="accountType" name="accountTypeId" class="form-select form-control-lg" required>
                                        <option value="">-Choose Account Type-</option>
                                        <!-- Account types dynamically generated from database -->
                                        <%
                                            try {
                                                Connection con = DbConnection.getConnection();
                                                String sql1 = "SELECT accTypeId, accTypeName FROM accounttype";
                                                PreparedStatement ps = con.prepareStatement(sql1);
                                                ResultSet rs = ps.executeQuery();
                                                while (rs.next()) {
                                                    int accTypeId = rs.getInt("accTypeId");
                                                    String accTypeName = rs.getString("accTypeName");
                                        %>
                                        <option value="<%= accTypeId %>"><%= accTypeName %></option>
                                        <%
                                                }
                                            } catch (Exception e) {
                                                e.printStackTrace();
                                            }
                                        %>
                                    </select>
                                </div>
                                <div class="col-md-6">
                                    <label for="balance" class="form-label">Minimum Balance</label>
                                    <input id="balance" class="form-control form-control-lg" type="number" name="balance" value="500.00" readonly>
                                </div>
                            </div>

                            <!-- Submit Button -->
                            <input class="form-control btn btn-info" type="submit" value="Create New Account">
                        </form>

                    </div>
                </div>
            </div>
        </div>

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
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="SemiDarkTheme" value="option3" >
                    <label class="form-check-label" for="SemiDarkTheme">Semi Dark</label>
                </div>
                <hr>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="MinimalTheme" value="option3"checked >
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
<script src="assets/jquery-toast/src/jquery.toast.js"></script>
<script src="assets/jquery-toast/dist/jquery.toast.min.js"></script>
<script>
    $(document).ready(function () {
        // Club change handler
        $('#bankSelect').change(function () {
            var bankId = $(this).val();
            $('#bankId').val(bankId);
            console.log("asuchi")
            console.log(bankId);
            $.ajax({
                url: "../BankServlet",
                type: 'POST',
                dataType: 'json',
                data: {
                    bankId: bankId,
                    event: 'getBranchFromBank'
                },
                success: function (response) {
                    var s = '<option value="">Select Branch</option>';

                    // Populate sports dropdown
                    for (var key in response) {
                        if (response.hasOwnProperty(key)) {
                            s += '<option value="' + response[key].branchId + '">' + response[key].branchName + '</option>';
                            s+= ' <input type="hidden" id="branchId" name="branchId" value="10">'
                        }
                    }
                    $('#branchid').append(response[key].branchId)
                    $('#branchSelect').html(s);
                },
                error: function () {
                    alert('No Data Available');
                }
            });
        });
    });

</script>
<script>
    $(document).ready(function(){

        console.log("page is ready .....")
        $("#customerForm").on('submit',function(event){
            event.preventDefault();
            var selectedBranchId = $('#branchSelect').val();
            var selectedTypeId = $('#accountType').val();

            var formData = new FormData($(this)[0]);
            formData.append('branchId', selectedBranchId);
            formData.append('typeId', selectedTypeId);
            $.ajax({
                url:"../AccountServlet",
                data:formData,
                type:'POST',
                async: false,
                success:function(data,textStatus,jqXHR){
                    if(data.trim() ==='done'){
                        $.toast({
                            text: "Successfully insert!",
                            heading: 'Success...',
                            icon: 'success',
                            showHideTransition: 'slide',
                            allowToastClose: true,
                            hideAfter: 3000,
                            stack: 10,
                            position: 'top-center',
                            textAlign: 'left',
                            loader: true,
                            loaderBg: '#24ffb6',
                        });
                        $('#myform')[0].reset();
                    }else{
                        $.toast({
                            text: "Something went wrong on server!",
                            heading: 'Failed...',
                            icon: 'error',
                            showHideTransition: 'slide',
                            allowToastClose: true,
                            hideAfter: 3000,
                            stack: 10,
                            position: 'top-center',
                            textAlign: 'left',
                            loader: true,
                            loaderBg: '#9EC600',
                        });
                    }
                },
                cache: false,
                contentType: false,
                processData: false,

                error:function(jqXHR,textStatus,errorThrown){
                    console.log("error...")
                    $.toast({
                        text: "Something went wrong on server!",
                        heading: 'Failed...',
                        icon: 'error',
                        showHideTransition: 'slide',
                        allowToastClose: true,
                        hideAfter: 3000,
                        stack: 10,
                        position: 'top-center',
                        textAlign: 'left',
                        loader: true,
                        loaderBg: '#9EC600',
                    });
                }
            });
            return false;
        });
    });
</script>
<script>
    function getLocationAndSubmitForm(event) {
        // Prevent the default form submission
        event.preventDefault();

        // Get the current location
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function(position) {
                var latitude = position.coords.latitude;
                var longitude = position.coords.longitude;
                console.log(latitude)
                console.log(longitude)
                var formData = new FormData(document.getElementById('customerForm'));

                // Append latitude and longitude to FormData object
                formData.append('latitude', latitude);
                formData.append('longitude', longitude);
                // Send location and form data to Servlet using AJAX
                $.ajax({
                    url: '../AccountServlet',
                    type: 'POST',
                    data: formData,
                    async: false,
                    success: function(data,textStatus,jqXHR){
                        if(data.trim() ==='done'){
                            $.toast({
                                text: "Account Create Successfully !",
                                heading: 'Success...',
                                icon: 'success',
                                showHideTransition: 'slide',
                                allowToastClose: true,
                                hideAfter: 3000,
                                stack: 10,
                                position: 'top-center',
                                textAlign: 'left',
                                loader: true,
                                loaderBg: '#24ffb6',
                            });
                            $('#customerForm')[0].reset();
                        }else{
                            $.toast({
                                text: "Something went wrong on server!",
                                heading: 'Failed...',
                                icon: 'error',
                                showHideTransition: 'slide',
                                allowToastClose: true,
                                hideAfter: 3000,
                                stack: 10,
                                position: 'top-center',
                                textAlign: 'left',
                                loader: true,
                                loaderBg: '#9EC600',
                            });
                        }
                    },
                    cache: false,
                    contentType: false,
                    processData: false,
                    error: function(jqXHR,textStatus,errorThrown){
                        $.toast({
                            text: "Something went wrong on server!",
                            heading: 'Failed...',
                            icon: 'error',
                            showHideTransition: 'slide',
                            allowToastClose: true,
                            hideAfter: 3000,
                            stack: 10,
                            position: 'top-center',
                            textAlign: 'left',
                            loader: true,
                            loaderBg: '#9EC600',
                        });
                    }
                });
                return false;
            });
        } else {
            alert("Geolocation is not supported by this browser.");
        }
    }
</script>
</body>

</html>
