<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Finances &mdash; Banking</title>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link
            href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700"
            rel="stylesheet">
    <link rel="stylesheet" href="assets/fonts/icomoon/style.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/jquery-ui.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="assets/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="assets/css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="assets/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="assets/fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="assets/css/aos.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <!--toast-->
    <link href="assets/jquery-toast/src/jquery.toast.css" rel="stylesheet" />
    <link href="assets/jquery-toast/dist/jquery.toast.min.css" rel="stylesheet" />
    <style type="text/css">
        .divider:after, .divider:before {
            content: "";
            flex: 1;
            height: 1px;
            background: #eee;
        }

        .h-custom {
            height: calc(100% - 73px);
        }

        @media ( max-width : 450px) {
            .h-custom {
                height: 100%;
            }
        }
    </style>
</head>
<body>
<%@include file="include/header.jsp"%>
<section class="vh-100">
    <div class="container-fluid h-custom">
        <div
                class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-md-9 col-lg-6 col-xl-5">
                <img
                        src="admin/assets/images/error/forgot-password-frent-img.jpg"
                        class="img-fluid" alt="Sample image">
            </div>
            <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                <form id="cust_login" onsubmit="getLocationAndSubmitForm(event)" >
                    <div
                            class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">


                    </div>
                    <%
                        String enteredPassword = request.getParameter("password");
                        String sessionPassword = (String) session.getAttribute("password");

                        if (enteredPassword != null) {
                            if (enteredPassword.equals(sessionPassword)) {
                                response.sendRedirect("cheakbalance.jsp");
                                return;
                            } else {
                                // Password mismatch message
                                out.println("<div class='alert alert-danger text-center'>Incorrect password. Please try again.</div>");
                            }
                        }
                    %>
                    <div class="divider d-flex align-items-center my-4">
                        <p style="font-size: 40px;!important" class="  text-center  mx-3 mb-0">Cheak Balance!</p>
                    </div>

                    <!-- Password input -->
                    <div data-mdb-input-init class="form-outline mb-3">
                        <label class="form-label"
                               for="form3Example4">Password</label>
                        <input type="password" name="password" id="form3Example4"
                               class="form-control form-control-lg"
                               placeholder="Enter password" />
                    </div>

                    <div class="d-flex justify-content-between align-items-center">
                        <!-- Checkbox -->


                    </div>

                    <div class="text-center text-lg-start mt-4 pt-2">
                        <input type="submit" data-mdb-button-init data-mdb-ripple-init
                               class="btn btn-primary btn-lg"
                               style="padding-left: 2.5rem; padding-right: 2.5rem;" value="Submit">
                        <p class="small fw-bold mt-2 pt-1 mb-0">
                             <a href="createNewAccount.jsp" class="link-danger">Forget Password</a>
                        </p>
                    </div>

                </form>

            </div>
        </div>
    </div>
    <div
            class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
        therealprasar@gmail.com<!-- Copyright -->
        <div class="text-white mb-3 mb-md-0"></div>
        <!-- Copyright -->

        <!-- Right -->
        <div>
            <a href="#!" class="text-white me-4"> <i
                    class="fab fa-facebook-f"></i>
            </a> <a href="#!" class="text-white me-4"> <i class="fab fa-twitter"></i>
        </a> <a href="#!" class="text-white me-4"> <i class="fab fa-google"></i>
        </a> <a href="#!" class="text-white"> <i class="fab fa-linkedin-in"></i>
        </a>
        </div>
        <!-- Right -->
    </div>
</section>

<%@include file="include/footer.jsp"%>
<script src="assets/js/jquery-3.3.1.min.js"></script>
<script src="assets/js/jquery-ui.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/jquery.countdown.min.js"></script>
<script src="assets/js/jquery.easing.1.3.js"></script>
<script src="assets/js/aos.js"></script>
<script src="assets/js/jquery.fancybox.min.js"></script>
<script src="assets/js/jquery.sticky.js"></script>
<script src="assets/js/isotope.pkgd.min.js"></script>
<script src="assets/js/main.js"></script>
<!--  toast -->



</body>
</html>