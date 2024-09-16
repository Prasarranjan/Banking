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
						src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
						class="img-fluid" alt="Sample image">
				</div>
				<div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
					<form id="cust_login" onsubmit="getLocationAndSubmitForm(event)" >
						<div
							class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
							
							
						</div>

						<div class="divider d-flex align-items-center my-4">
							<p style="font-size: 40px;!important" class="  text-center  mx-3 mb-0">Login Here!</p>
						</div>

						<!-- Email input -->
						<div data-mdb-input-init class="form-outline mb-4">
							<input type="text" name="userid" id="form3Example3"
								class="form-control form-control-lg"
								placeholder="Enter a valid user id" /> <label
								class="form-label" for="form3Example3">User Id</label>
							 <input type="hidden" name="event" value="userlogin">
						</div>

						<!-- Password input -->
						<div data-mdb-input-init class="form-outline mb-3">
							<input type="password" name="password" id="form3Example4"
								class="form-control form-control-lg"
								placeholder="Enter password" /> <label class="form-label"
								for="form3Example4">Password</label>
						</div>

						<div class="d-flex justify-content-between align-items-center">
							<!-- Checkbox -->
							
						
						</div>

						<div class="text-center text-lg-start mt-4 pt-2">
							<input type="submit" data-mdb-button-init data-mdb-ripple-init
								class="btn btn-primary btn-lg"
								style="padding-left: 2.5rem; padding-right: 2.5rem;" value="Submit">
							<p class="small fw-bold mt-2 pt-1 mb-0">
								Don't have an account? <a href="createNewAccount.jsp" class="link-danger">Open New Account</a>
							</p>
						</div>

					</form>
				</div>
			</div>
		</div>
		<div
			class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
			email<!-- Copyright -->
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
   <script src="assets/jquery-toast/src/jquery.toast.js"></script>
  <script src="assets/jquery-toast/dist/jquery.toast.min.js"></script>
  
  <script>
        function getLocationAndSubmitForm(event) {
            // Prevent the default form submission
            event.preventDefault();

            // Get the current location
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function(position) {
                    var latitude = position.coords.latitude;
                    var longitude = position.coords.longitude;

                    // Serialize form data
                    var formData = $('#cust_login').serialize();

                    // Add latitude and longitude to form data
                    formData += '&latitude=' + latitude + '&longitude=' + longitude;

                    // Send location and form data to Servlet using AJAX
                    $.ajax({
                        url: 'custLogin',
                        type: 'POST',
                        data: formData,
                        success: function(data,textStatus,jqXHR) {
                        	if(data.trim()=="done"){
          		  				alert("login Successful!");
          		  			    window.location.href = 'myAccount.jsp';
          		  			}else if(data.trim()=="notConfirm"){
          		  				$.toast({
        			  		  	    text: "Your Account is Not Activated!", 
        			  		  	    heading: 'Failed...', 
        			  		  	    icon: 'error', 
        			  		  	    showHideTransition: 'slide', 
        			  		  	    allowToastClose: true, 
        			  		  	    hideAfter: 5000, 
        			  		  	    stack: 10, 
        			  		  	    position: 'top-center',         
        			  		  	    textAlign: 'left',  
        			  		  	    loader: true,
        			  		  	    loaderBg: '#9EC600', 
        			  		  	});
          		  			}else{
          		  			$.toast({
        		  		  	    text: "Login Failed !", 
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
                        error: function(jqXHR,textStatus,errorThrown) {
                        	$.toast({
        		  		  	    text: "Login Failed !", 
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
                });
            } else {
                alert("Geolocation is not supported by this browser.");
            }
        }
    </script>
   
</body>
</html>