<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.sql.*" %>
<%@ page import="Util.DbConnection" %>

<!DOCTYPE html>
<html>
<head>
<title>Banking</title>
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
<script src="https://cdn.tailwindcss.com"></script>
<!--toast-->
  <link href="assets/jquery-toast/src/jquery.toast.css" rel="stylesheet" />
  <link href="assets/jquery-toast/dist/jquery.toast.min.css" rel="stylesheet" />
</head>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">


  <div id="overlayer"></div>
  <div class="loader">
    <div class="spinner-border text-primary" role="status">
      <span class="sr-only">Loading...</span>
    </div>
  </div>


  <div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
	<%@include file="include/header.jsp"%>
	<section class="site-section bg-light" id="contact-section" data-aos="fade">
      <div class="container">
      	<div class="row">
          <div class="col-md-12 mb-5">



            <form id="addAccount"  onsubmit="getLocationAndSubmitForm(event)" class="p-5 bg-white" >

              <h2 class="h4 text-black mb-5">OPEN NEW ACCOUNT</h2>
			<h6 class="mb-3 text-uppercase"><b>Customer Details</b></h6><hr>
              <div class="row form-group pt-2">

                <div class="col-md-6  ">
                  <label class="text-black" for="custfname">First Name</label>
                  <input class="form-control " name="firstName"  type="text" required placeholder="First Name" id="custfname" >
				  <input  type="hidden" name="event" value="addaccount" >
                </div>
                <div class="col-md-6">
                  <label class="text-black" for="custlname">Last Name</label>
                  <input class="form-control " name="lastName"  type="text" required placeholder="Last Name" id="custlname" >
                </div>
              </div>

              <div class="row form-group">

                <div class="col-md-6  mb-3 mb-md-0">
                  <label class="text-black" for="custemail">Email</label>
                  <input class="form-control " name="email" type="email" required placeholder="Enter Email" id="custemail" >
                  <span id="emailError" style="color: red;"></span>
                </div>


                <div class="col-md-6">
                  <label class="text-black" for="custpass">Password</label>
                  <input class="form-control " name="password"  type="text" required placeholder="Enter Password" id="custpass" >
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-6">
                  <label class="text-black" for="custdob">Date Of Birth</label>
                  <input class="form-control " name="dob"  type="date" required placeholder="Enter DOB" id="custdob" >
                </div>
                <div class="col-md-6">
                  <label class="text-black" for="custdob">Phone</label>
                  <input class="form-control " name="phone"  type="text" required placeholder="Enter Phone" id="custphone" >
                </div>
              </div>
               <div class="row form-group">
                <div class="col-md-6">
                  <label class="text-black" for="custadd">Address</label>
                  <textarea class="form-control " name="address"  type="text" required placeholder="Enter Address" id="custadd" ></textarea>
                </div>
                <div class="col-md-6">
                  <label class="text-black" for="formFileMultiple">Photo</label>
                  <input class="form-control" name="photo" type="file" required id="formFileMultiple" multiple>
                </div>
              </div>
				<h6 class="mb-3  text-uppercase"><b>Bank & Branch Details</b></h6><hr>
				<div class="row form-group">
                <div class="col-md-6">
                  <label for="bankSelect" class="text-black ">Select Bank </label>
                    <select id="bankSelect" name="bankId" class="form-control" required>
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
                  <label for="branchselect" class="text-black">Select Branch </label>
						<select id="branchselect" name="branchId" class="form-control" required >

						</select>
				</div>
              </div>
              <h6 class="mb-3  text-uppercase"><b>Account Details</b></h6><hr>
              <div class="row form-group">
                <div class="col-md-6">
                  <label for="typeid" class="text-black">Account Type</label>
						<select name="accountTypeId" class="form-control" required id="typeid">
						<option selected>-Choose Account Type- </option>
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
                  <label for="minBalance" class="form-label">Minimum Balance</label>
				  <input class="form-control" value="500.00" name="balance" type="text" readonly required id="minBalance" >
				</div>
              </div>
              <div class="row form-group">
                <div class="col-md-6">
                  <input type="submit" value="Create new account" class="btn btn-primary btn-md text-white">
                </div>
              </div>


            </form>
          </div>

        </div>

	</div>
   </section>
	<%@include file="include/footer.jsp"%>
	</div>
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
$(document).ready(function(){
    $('#custemail').on('input', function() {
        var email = $(this).val();
        if (isValidEmail(email)) {
            $('#emailError').text('');
        } else {
            $('#emailError').text('Please enter a valid email address');
        }
    });

    function isValidEmail(email) {
        // Regular expression for email validation
        var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        return emailPattern.test(email);
    }
});
</script>


  <script>
      $(document).ready(function () {
          // Club change handler
          $('#bankSelect').change(function () {
              var bankId = $(this).val();
              $('#bankId').val(bankId);
              console.log("asuchi")
              console.log(bankId);
              $.ajax({

                  url: "BankServlet",
                  type: 'POST',
                  dataType: 'json',
                  data: {
                      bankId: bankId,
                      event: 'getBranchFromBank'
                  },
                  success: function (response) {
                      console.log("auchi")
                      var s = '<option value="">Select Branch</option>';

                      // Populate sports dropdown
                      for (var key in response) {
                          console.log(response[key])
                          if (response.hasOwnProperty(key)) {
                              s += '<option value="' + response[key].branchId + '">' + response[key].branchName + '</option>';
                              console.log(s)
                          }
                      }
                     // $('#branchId').append(response[key].branchId)
                      $('#branchselect').html(s);
                  },
                  error: function () {
                      alert('No Data Available');
                  }
              });
          });
      });

  </script>
  <script>
      $(document).ready(function() {
          console.log("page is ready .....");

          $("#addAccount").on('submit', function(event) {
              event.preventDefault();
              getLocationAndSubmitForm(event);  // Call the function to handle form submission with geolocation data
          });

          function getLocationAndSubmitForm(event) {
              // Prevent the default form submission
              event.preventDefault();

              // Get the current location
              if (navigator.geolocation) {
                  navigator.geolocation.getCurrentPosition(function(position) {
                      var latitude = position.coords.latitude;
                      var longitude = position.coords.longitude;
                      var formData = new FormData($('#addAccount')[0]);

                      // Append latitude and longitude to FormData object
                      formData.append('latitude',latitude);
                      formData.append('longitude',longitude);

                      $.ajax({
                          url: "AccountServlet",
                          type: 'POST',
                          data: formData,
                          async: false,
                          success: function(data, textStatus, jqXHR) {
                              if (data.trim() === 'done') {
                                  $.toast({
                                      text: "Successfully inserted!",
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
                                  $('#addAccount')[0].reset();
                              } else {
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
                          error: function(jqXHR, textStatus, errorThrown) {
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
                  }, function(error) {
                      console.error('Geolocation error:', error);
                      $.toast({
                          text: "Could not retrieve geolocation!",
                          heading: 'Error...',
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
                  });
              } else {
                  alert("Geolocation is not supported by this browser.");
              }
          }
      });

  </script>
</body>
</html>