<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
if (session.getAttribute("username") == null || session.getAttribute("username").equals(""))
{
	response.sendRedirect("login.jsp");
}

%>

<!DOCTYPE html>
<html>
<head>
<title> Banking</title>
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
    <style>
	.btn-xl {


    width:100%;
}
</style>
</head>
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">


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

		<br> <br> <br> <br>
		<section >
			<div class="container py-5">


				<div class="row">
					<div class="col-lg-4">
						<div class="card " style="width: 18rem;">
							<div class="d-flex justify-content-center"><img src="admin/assets/costumerImage/<% out.print(request.getSession().getAttribute("userphoto")); %>" class="card-img-top rounded-circle pt-1" style="height:120px;width:120px;" alt="not found "></div>
							<div class="d-flex justify-content-center">
								<h6>Mr.<% out.print(request.getSession().getAttribute("username")); %></h6>

							</div>
							<div class="d-flex justify-content-center">
							   <h6>Account Number : <% out.print(request.getSession().getAttribute("accnumber")); %></h6>
							</div>
							<div class="card-body text-center">

							<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
							  <a class="nav-link active" id="aa" data-toggle="pill" href="#Account" role="tab" aria-controls="a" aria-selected="true">My Account</a>
							  <a class="nav-link" id="bb" data-toggle="pill" href="#Password" role="tab" aria-controls="b" aria-selected="false">Change Password</a>
							  <a class="nav-link" id="cc" data-toggle="pill" href="#Transfer" role="tab" aria-controls="c" aria-selected="false">Transfer</a>
								<a class="nav-link" id="dd" href="confirmuser.jsp" role="tab" aria-controls="d" aria-selected="false">Check Balance</a>
							   <a class="nav-link " id="ee" data-toggle="pill" href="#Lone" role="tab" aria-controls="e" aria-selected="false">Apply Loan</a>
							  <a class="nav-link" id="ff" data-toggle="pill" href="#Credit" role="tab" aria-controls="f" aria-selected="false">Credit Score</a>
							  <a class="nav-link" id="gg" data-toggle="pill" href="#history" role="tab" aria-controls="g" aria-selected="false">History</a>

							</div>

						</div>
						</div>
					</div>
					<div class="col-lg-8">
						<div class="card mb-4" style="width: 800px;">
							<div class="tab-content v-pills-tabContent">
							   <div class="tab-pane fade show active" id="Account" role="tabpanel" aria-labelledby="aa">
								   <div class="container-fluid mt-5">
									   <div class="row">
										   <div class="col-md-12">
											   <div class="p-4 border rounded bg-light shadow-sm">
												   <h3 class="mb-4">Update Account Details</h3>
												   <form id="myaccountEdit">
													   <div class="form-row">
														   <div class="form-group col-md-4">
															   <label for="custFname">First Name</label>
															   <input type="text" name="custFname" readonly class="form-control" id="custFname">
															   <input type="hidden"  class="form-control" name="event" value="updateCustBasicDetails">
														   </div>
														   <div class="form-group col-md-4">
															   <label for="custLname">Last Name</label>
															   <input type="text" name="custLname" readonly class="form-control" id="custLname">
														   </div>
														   <div class="form-group col-md-4">
															   <label for="custEmail">Email</label>
															   <input type="email" name="custEmail" readonly  class="form-control" id="custEmail">
														   </div>
													   </div>
													   <div class="form-row">
														   <div class="form-group col-md-4">
															   <label for="custPhone">Phone</label>
															   <input type="text" name="custPhone" readonly  class="form-control" id="custPhone">
														   </div>
														   <div class="form-group col-md-4">
															   <label for="custAddress">Address</label>
															   <input type="text" name="custAddress" readonly class="form-control" id="custAddress">
														   </div>
														   <div class="form-group col-md-4">
															   <label for="brname">Branch Name</label>
															   <input type="text" readonly class="form-control" id="brname">
														   </div>
													   </div>
													   <div class="form-row">
														   <div class="form-group col-md-4">
															   <label for="bankName">Bank Name</label>
															   <input type="text" readonly class="form-control" id="bankName">
														   </div>
														   <div class="form-group col-md-4">
															   <label for="ifscCode">IFSC Code</label>
															   <input type="text" readonly class="form-control" id="ifscCode">
														   </div>
														   <div class="form-group col-md-4">
															   <label for="balance">Balance</label>
															   <input type="text" readonly class="form-control" id="balance1">
														   </div>
													   </div>
													   <div class="form-row">
														   <div class="form-group col-md-4">
															   <label for="custDOB">Date of Birth</label>
															   <input type="date" name="custDOB" readonly class="form-control" id="custDOB">
														   </div>
														   <div class="form-group col-md-4">
															   <label for="accTypeName">Account Type</label>
															   <input type="text" readonly class="form-control" id="accTypeName">
														   </div>
														   <div class="form-group col-md-4">
															   <label for="acNumber">Account Number</label>
															   <input type="text" readonly class="form-control" id="acNumber">
														   </div>
													   </div>

													   <div class="form-group">
														   <button type="submit" class="btn btn-primary">Request A Update</button>
													   </div>
												   </form>
											   </div>
										   </div>
									   </div>
								   </div>

								</div>
							  <div class="tab-pane fade" id="Password" role="tabpanel" aria-labelledby="bb">
									<div class="p-4">
							  		  <form id="validate">
							  			 <div class="form-group  row">
										    <label for="oldPass" class="col-sm-2 col-form-label">Old Pass</label>
										    <div class="col-sm-10">
										      <input type="password"  class="form-control"  name="oldPass" placeholder="Old Password" id="oldPass" required>
										    </div>
									  </div>
									   <div class="form-group  row">
										    <label for="newPass" class="col-sm-2 col-form-label">New Pass</label>
										    <div class="col-sm-10">
										      <input type="hidden" name="event" value="changePassword">
											  <input type="text" name="newPass"  class="form-control" placeholder="New Password" id="newPass" required>
										    </div>
									  </div>
									  <div class="form-group  row">
									    <label for="confirm" class="col-sm-2 col-form-label">Confirm Pass</label>
									    <div class="col-sm-10">
									      <input type="text"  class="form-control" name="confirm" placeholder="Confirm Password" id="confirm" required>
									    </div>
									  </div>
									  <div class="form-group row pl-1">
									    <input type="Submit"  class="btn btn-primary" value="Change Password" >
									  </div>
								 </form>
							  	</div>
							  </div>
							  <div class="tab-pane fade" id="Transfer" role="tabpanel" aria-labelledby="cc">
									<div class="p-4">
							  		  <form id="billertransfer">
							  			 <div class="form-group  row">
										    <label for="bfname" class="col-sm-2 col-form-label"> Biller First Name</label>
										    <div class="col-sm-10">
										      <input type="text" name="bfname" class="form-control" id="bfname" >
										      <input type="hidden"  class="form-control" name="event"  value="billerTransfer">
										    </div>
									  </div>
									   <div class="form-group  row">
										    <label for="bLname" class="col-sm-2 col-form-label">Biller Last Name</label>
										    <div class="col-sm-10">
										      <input type="text" name="bLname" class="form-control" id="bLname" >
										    </div>
									  </div>
									  <div class="form-group  row">
									    <label for="baccnum" class="col-sm-2 col-form-label">Account Number</label>
									    <div class="col-sm-10">
									      <input type="text" name="baccnum" class="form-control" id="baccnum" >
									    </div>
									  </div>
									   <div class="form-group  row">
										    <label for="mode" class="col-sm-2 col-form-label"></label>
										    <div class="col-sm-5 mb-3 mb-md-0">
										     <select name="mode" id="mode" class="form-control" required>
										       <option>--select--</option>
										     	<option value="online">Online</option>
										     	<option value="offline">Offline</option>
										     	<option value="digital">Digital</option>
										     </select>

										    </div>
									        <label for="type" class=" col-form-label"></label>
										    <div class="col-sm-5  mb-3 mb-md-0">
										        <select name="type" id="type" class="form-control" required>
										        <option>--select--</option>
										     	<option value="Check">Check</option>
										     	<option value="Cash">Cash</option>
										     	<option value="Debit card charges">Debit card charges</option>
										     	<option value="Cash">Cash</option>
										     	<option value="Wire transfer">Wire transfer</option>
										     	<option value="Loan payment">Loan payment</option>
										     </select>
										    </div>
									  </div>
									  <div class="form-group row">
									    <label for="ammount" class="col-sm-2 col-form-label">Ammount</label>
									    <div class="col-sm-10">
									      <input type="text" name="ammount" class="form-control" id="ammount" >
									    </div>
									  </div>
									  <div class="form-group row pl-1">
									    <input type="Submit"  class="btn btn-primary" value="Send Now" >
									  </div>
									  </form>
									  </div>
						     </div>
<%--							 <div class="tab-pane fade" id="Balance" role="tabpanel" aria-labelledby="dd">--%>
<%--									<div class="pt-3 p-5" style="font-size:30px; color:blue;">--%>
<%--										<h1>Available Balance INR <b><%=session.getAttribute("balance")%></b></h1>--%>
<%--									</div>--%>
<%--							 </div>--%>
						      <div class="tab-pane fade" id="Lone" role="tabpanel" aria-labelledby="ee">

						     </div>
							 <div class="tab-pane fade" id="Credit" role="tabpanel" aria-labelledby="ff">
									<div class="pt-3 p-5" style="font-size:30px; color:blue;">
										<h1>Your Credit Score is : <b>650</b> </h1>
									</div>
							</div>
							<div class="tab-pane fade " id="history" role="tabpanel" aria-labelledby="gg">


							  <table id="example" class="table table-striped table-bordered" style="width:100%">
							    <thead>
							      <tr>
							        <th>#</th>
							         <th>Transaction Number</th>
							        <th>BillerName</th>
							        <th>Biller Account</th>
							        <th>Date</th>
							        <th>Amount</th>
							         <th>Mode</th>
							         <th>Type</th>
							        <th>Status</th>
							      </tr>
							    </thead>
							    <tbody id="viewTranscation">


							      <!-- Add more rows as needed -->
							    </tbody>
							  </table>

							</div>
							</div>
						</div>

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
	<script
		src="assets/jquery-validation/dist/additional-methods.js"></script>
	<script src="assets/jquery-validation/dist/jquery.validate.js"></script>
	<!--  toast -->
   <script src="assets/jquery-toast/src/jquery.toast.js"></script>
  <script src="assets/jquery-toast/dist/jquery.toast.min.js"></script>

	<script src="https://cdn.datatables.net/1.13.5/js/jquery.dataTables.min.js"></script>
		<script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
		<script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>
		<script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.print.min.js"></script>
		<script>
		$(document).ready(function() {
		    $('#example').DataTable( {
		        dom: 'Bfrtip',
		        buttons: [
		             'excel', 'pdf', 'print'
		        ]
		    } );
		} );
		</script>
		<script type="text/javascript">
		$(document).ready(function() {

	        	let event ="event=getAllTransactionCustID";
	        	$.ajax({
	    			url:"transServlet",
	    			data:event,
	    			type:"POST",
	    			dataType:"json",
	    			success:function(data,textStatus,jqXHR){
	    				console.log(data);

	    				 let s="";
	    				 let i=1;
	    				for (var key in data) {
	    					if (data.hasOwnProperty(key)) {
	    						var status=data[0].transStatus;
	    					    if(status==1){

		    						  s+="<tr>";
			    					  s+="<td>"+i+"</td>";
			    					  s+="<td>";
			    					  s+="<div class=''><p class='mb-0'>"+data[0].transNum+"</p></div> </td>";
			    					  s+="<td>"+data[0].bFname+" "+data[0].bLname+"</td>";
			    					  s+="<td>"+data[0].bAccNum+"</td>";
			    					  s+="<td>"+data[0].transDate+"</td>";
			    					  s+="<td>"+data[0].amount+"</td>";
			    					  s+="<td>"+data[0].transMode+"</td>";
			    					  s+="<td>"+data[0].transType+"</td>";
			    					  s+="<td><span class='badge bg-success'>Success</span></td>";
			    					  s+="</tr>";
		    					 }else{
		    						  s+="<tr>";
			    					  s+="<td>"+i+"</td>";
			    					  s+="<td>";
			    					  s+="<div class=''><p class='mb-0'>"+data[0].transNum+"</p></div> </td>";
			    					  s+="<td>"+data[0].bFname+" "+data[0].bLname+"</td>";
			    					  s+="<td>"+data[0].bAccNum+"</td>";
			    					  s+="<td>"+data[0].transDate+"</td>";
			    					  s+="<td>"+data[0].amount+"</td>";
			    					  s+="<td>"+data[0].transMode+"</td>";
			    					  s+="<td>"+data[0].transType+"</td>";
			    					  s+="<td><span class='badge bg-warning'>Pending</span></td>";
			    					  s+="</tr>";
		    					 }
	    					}
	    					i++;
	    				}
	    				$('#viewTranscation').html(s);
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
		  	$(document).ready(function(){
		  		console.log("page is ready .....");
		  		$("#billertransfer").on('submit',function(event){
		  			event.preventDefault();
					var f=$(this).serialize();
					$.ajax({
		  				url:"billerServlet",
		  				data:f,
		  				type:'POST',

		  				success:function(data,textStatus,jqXHR){
		  					if(data.trim()=='done'){
			  					$.toast({
			  					    text: "Sent Successfully !",
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
			  					$('#billertransfer')[0].reset();
			  		  		}else if(data.trim() ==='failed'){
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
			  		  		}else if(data.trim() ==='insuficientBalance'){
					  		  		$.toast({
					  		  	    text: "Insuficient Balance",
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
		  		});
		  	});
		  </script>
	<script type="text/javascript">
		$(document).ready(function() {
				jQuery.validator.addMethod("notEqual", function(value, element, param) {
					 return this.optional(element) || value != $(param).val();
					}, "This has to be different...");
		   		$("#validate").validate({

			      	rules: {
			      		oldPass: 'required',
			      		newPass: {
			            	required: true,
			            	notEqual : "#oldPass",
			         	},
			         	confirm: {
			            	required: true,
			            	equalTo : "#newPass",
			         	},
			      	},
			      	messages: {
			      		oldPass: 'Current Password is required *',
					   	newPass: {
					   		required : 'Confirm Password is required *',
					   		notEqual : 'New password should not match with old one *',
					   	},
					   	confirm: {
					   		required : 'Confirm Password is required *',
					   		equalTo : 'Password not matching *',
					   	}
					},
			   });
			});
		</script>
		<script>
		  	$(document).ready(function(){
		  		console.log("page is ready .....");
		  		$("#validate").on('submit',function(event){
		  			event.preventDefault();
					var f=$(this).serialize();
					$.ajax({
		  				url:"custServlet",
		  				data:f,
		  				type:'POST',
		  				dataType:"json",
		  				success:function(data,textStatus,jqXHR){
		  					if(data.trim() =='done'){
			  					$.toast({
			  					    text: "Password Successfully Changed!",
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
			  					$('#validate')[0].reset();
			  		  		}else if(data.trim() ==='error1'){
					  		  		$.toast({
					  		  	    text: "Old Password & New Password Should not Be Same!",
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
			  		  		}else if(data.trim() ==='error2'){
					  		  		$.toast({
					  		  	    text: "New Password & Confirm Password Should Be Same!",
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
			  		  		}else if(data.trim() ==='error3'){
					  		  		$.toast({
					  		  	    text: "Old Password Not Matched!",
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
		  		});
		  	});
		  </script>
	<script type="text/javascript">
		$(document).ready(function() {

	        	let event ="event=getAccountDetails";
	        	$.ajax({
	    			url:"AccountServlet",
	    			data:event,
	    			type:"POST",
	    			dataType:"json",
	    			success:function(data,textStatus,jqXHR){
	    				for (var key in data) {
	    				  if (data.hasOwnProperty(key)) {
                           console.log(data[key])
							  console.log(data[key].branchName)
	    				    $("#custFname").val(data[key].custFname);
		    				 $("#custLname").val(data[key].custLname);
		    				$("#custEmail").val(data[key].custEmail);
		    				$("#custDOB").val(data[key].custDOB);
		    				$("#custAddress").val(data[key].custAddress);
		    				$("#custPhone").val(data[key].custPhone);
		    				$("#bankName").val(data[key].bankName);
		    				$("#brname").val(data[key].branchName);
		    				$("#balance1").val(data[key].balance);
		    				$("#accTypeName").val(data[key].accTypeName);
		    				$("#ifscCode").val(data[key].ifscCode);
		    				$("#acNumber").val(data[key].acNumber);


	    				  }
	    				}
	    			},
	    		error:function(jqXHR,textStatus,errorThrown){
	    			console.log(jqXHR.responseText);
	    				console.log("error...")
	    			}
	    	    });
			  });
		</script>
		<script>
		  	$(document).ready(function(){
		  		console.log("page is ready .....");
		  		$("#myaccountEdit").on('submit',function(event){
		  			event.preventDefault();
					var f=$(this).serialize();
					$.ajax({
		  				url:"custServlet",
		  				data:f,
		  				type:'POST',

		  				success:function(data,textStatus,jqXHR){
		  					alert(data)
		  					if(data.trim() =='done'){
			  					$.toast({
			  					    text: "Update Successfully!",
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

			  		  		}
		  				},
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
		  		});
		  	});
		  </script>

</body>
</html>