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

        @media (max-width: 450px) {
            .h-custom {
                height: 100%;
            }
        }

        .card {
            margin-top: 20px;
            border-radius: 10px;
        }

        .card-header {
            background-color: #007bff;
            border-radius: 10px 10px 0 0;
        }

        .balance-display {
            font-size: 2rem; /* Increase font size */
            font-weight: 700;
            margin-bottom: 20px;
        }

        #balance {
            color: #28a745; /* Green color for balance */
            font-size: 2.5rem; /* Make balance larger */
        }

        .btn-check {
            background-color: #17a2b8;
            font-size: 1.2rem;
            padding: 10px 30px;
            border-radius: 25px;
            color: white;
        }

        .btn-check:hover {
            background-color: #138496; /* Darken button on hover */
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
                        src="admin/assets/images/error/auth-img-register3.png"
                        class="img-fluid" alt="Sample image">
            </div>
            <div class="card shadow-sm text-center">
                <div class="card-header bg-primary text-white">
                    <h3 class="card-title mb-0">Account Balance</h3>
                </div>
                <div class="card-body">
                    <h4 class="balance-display">Your Current Balance:</h4>
                    <h4 class="balance-display" id="balance">INR <%=session.getAttribute("balance")%></h4>
                    <button class="btn btn-check" onClick="window.location.href='myAccount.jsp'">Go Back</button>
                </div>
            </div>
        </div>
    </div>
    <div
            class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
        therealprasar@gmail.com
        <!-- Social Media Links -->
        <div>
            <a href="#!" class="text-white me-4"> <i
                    class="fab fa-facebook-f"></i>
            </a> <a href="#!" class="text-white me-4"> <i class="fab fa-twitter"></i>
        </a> <a href="#!" class="text-white me-4"> <i class="fab fa-google"></i>
        </a> <a href="#!" class="text-white"> <i class="fab fa-linkedin-in"></i>
        </a>
        </div>
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
