<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.sql.*" %>
<%@ page import="com.otz.util.DbConnection" %>

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
                  <input class="form-control " name="custfname"  type="text" required placeholder="First Name" id="custfname" >
				  <input  type="hidden" name="event" value="addAccount" >
                </div>
                <div class="col-md-6">
                  <label class="text-black" for="custlname">Last Name</label>
                  <input class="form-control " name="custlname"  type="text" required placeholder="Last Name" id="custlname" >
                </div>
              </div>

              <div class="row form-group">
                
                <div class="col-md-6  mb-3 mb-md-0">
                  <label class="text-black" for="custemail">Email</label> 
                  <input class="form-control " name="custemail" type="email" required placeholder="Enter Email" id="custemail" >
                  <span id="emailError" style="color: red;"></span>
                </div>
             

                <div class="col-md-6">
                  <label class="text-black" for="custpass">Password</label> 
                  <input class="form-control " name="custpass"  type="text" required placeholder="Enter Password" id="custpass" >
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-6">
                  <label class="text-black" for="custdob">Date Of Birth</label> 
                  <input class="form-control " name="custdob"  type="date" required placeholder="Enter DOB" id="custdob" >
                </div>
                <div class="col-md-6">
                  <label class="text-black" for="custdob">Phone</label> 
                  <input class="form-control " name="custphone"  type="text" required placeholder="Enter Phone" id="custphone" >
                </div>
              </div>
               <div class="row form-group">
                <div class="col-md-6">
                  <label class="text-black" for="custadd">Address</label> 
                  <textarea class="form-control " name="custadd"  type="text" required placeholder="Enter Address" id="custadd" ></textarea>
                </div>
                <div class="col-md-6">
                  <label class="text-black" for="formFileMultiple">Photo</label> 
                  <input class="form-control" name="custimg" type="file" required id="formFileMultiple" multiple>
                </div>
              </div>
				<h6 class="mb-3  text-uppercase"><b>Bank & Branch Details</b></h6><hr>
				<div class="row form-group">
                <div class="col-md-6">
                  <label for="bankid" class="text-black ">Select Bank </label>
					<select name="bankid" class="form-control" required id="selectbankid">
										
					</select>
                </div>
                <div class="col-md-6">
                  <label for="branchId" class="text-black">Select Branch </label>
						<select name="branchid" class="form-control" required id="branchId">
										
						</select>
				</div>
              </div>
              <h6 class="mb-3  text-uppercase"><b>Account Details</b></h6><hr>
              <div class="row form-group">
                <div class="col-md-6">
                  <label for="typeid" class="text-black">Account Type</label>
						<select name="typeId" class="form-control" required id="typeid">
						<option selected>-Choose Account Type- </option>
						<%
							Connection con1 = DbConnection.getConnection();
							String sql1="SELECT accTypeId,accTypeName  FROM accounttype";
							PreparedStatement ps1=con1.prepareStatement(sql1);  
							ResultSet rs1=ps1.executeQuery();  
							while(rs1.next())
							{
						 %>
								 <option   value="<%=rs1.getInt(1) %>"><%=rs1.getString(2) %></option>
						 <% 
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
		
		$(document).ready(function() {
			
			let event ="event=getBanks";
	        	$.ajax({
	    			url:"bankServlet",
	    			data:event,
	    			type:"POST",
	    			dataType:"json",
	    			success:function(data,textStatus,jqXHR){ 					 
	    				console.log(data);	    				
	    				 let s="<option value='0'>-Select Bank-</option>";
	    				for (var key in data) {
	    					 
	    					if (data.hasOwnProperty(key)) {	  
	    					 s+="<option value='"+data[key].bankId+"'>"+data[key].bankName+"</option>";
	    					}
	    				}
	    				$('#selectbankid').html(s);
	    				console.log("success...")
	    	  		},
	    		error:function(jqXHR,textStatus,errorThrown){
	    			console.log(jqXHR.responseText);
	    				console.log("error...")
	    			}
	    	    });
		  });  
		</script> 		
    <script>
     $(document).ready(function() {
    	  $('#selectbankid').change(function() {
    		 var bankId = $(this).val();
    	   $.ajax({
    	      type: 'POST',
    	      url: 'branchServlet',
    	      data:{'bankId':bankId,'event':'getBranchByBankId'},
			  dataType:"JSON", 
    	     success:function(data,textStatus,jqXHR){ 					     				
 				 let s="<option value='0'>-Select Branch-</option>";
 				for (var key in data) {
 					if (data.hasOwnProperty(key)) {	  
 					 s+="<option    value='"+data[key].branchId+"'  >"+data[key].branchName+"</option>";
 					}
 				}
 				$('#branchId').html(s);
 				console.log("success...")
 	  		},
 			error:function(jqXHR,textStatus,errorThrown){
 			console.log(jqXHR.responseText);
 				console.log("error...")
 			}
    	    });
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
                    var formData = new FormData($('#addAccount')[0]);

                    // Append latitude and longitude to FormData object
                    formData.append('latitude', latitude);
                    formData.append('longitude', longitude);
                    // Send location and form data to Servlet using AJAX
                    $.ajax({
                        url: 'accountServlet',
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
			  					$('#addAccount')[0].reset();		  				
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