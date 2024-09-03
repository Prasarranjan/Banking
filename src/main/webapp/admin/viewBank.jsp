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

<!--toast-->
  <link href="assets/jquery-toast/src/jquery.toast.css" rel="stylesheet" />
  <link href="assets/jquery-toast/dist/jquery.toast.min.css" rel="stylesheet" />
 
  
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
                    <li class="breadcrumb-item active" aria-current="page">CMS Dashboard</li>
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

            <div class="card">
                 <div class="card-body">
                   <div class="d-flex align-items-center">
                      <h5 class="mb-0">Bank Details</h5>
                       <form class="ms-auto position-relative">
                         <div class="position-absolute top-50 translate-middle-y search-icon px-3"><i class="bi bi-search"></i></div>
                         <input class="form-control ps-5" type="text" placeholder="search">
                       </form>
                   </div>
                   <div class="table-responsive mt-3">
                     <table class="table align-middle">
                       <thead class="table-secondary">
                         <tr>
                          <th>#</th>
                          <th>Name</th>
                          <th>Email</th>
                          <th>Phone</th>
                          <th>Actions</th>
                         </tr>
                       </thead>
                       <tbody id="viewBank">
                         
                        </tbody>
                     </table>
                   </div>
                 </div>
               </div>
            <div class="modal fade" id="addBankModal2" tabindex="-1" aria-labelledby="addBankModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="addBookModalLabel2">Add New Bank</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                    <form id="updatebank" enctype="multipart/form-data">
                      <div class="mb-3">
                        <label for="bankName1" class="form-label">Bank Name</label>
                        <input type="text" class="form-control" id="bankName1" name="bankName1" required>
                      </div>
                      <div class="mb-3">
                        <label for="bankEmail1" class="form-label">Email</label>
                        <input type="email" class="form-control" id="bankEmail1" name="bankEmail1" required>
                        <input type="hidden" id="bankId2" name="bankId1" value="">
                        <input type="hidden" name="event" value="updateBank1">

                      </div>
                      <div class="mb-3">
                        <label for="bankPhone1" class="form-label">Phone No</label>
                        <input type="text" class="form-control" id="bankPhone1" name="bankPhone1" required>
                      </div>
                      <div class="mb-3">
                        <label for="bankImage1" class="form-label">Upload Image</label>
                        <input type="file" class="form-control" id="bankImage1" name="bankImage1" accept="image/*" required>
                      </div>
                      <button type="submit" class="btn btn-primary">Submit</button>
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
  <script src="assets/jquery-toast/src/jquery.toast.js"></script>
  <script src="assets/jquery-toast/dist/jquery.toast.min.js"></script>
<script type="text/javascript">
		$(document).ready(function() {
				getData();
				function getData(){
	        	let event ="event=getBanks";
	        	$.ajax({
	    			url:"../BankServlet",
	    			data:event,
	    			type:"POST",
	    			dataType:"json",
	    			success:function(data,textStatus,jqXHR){ 					 
	    				console.log(data);	    				
	    				 let s="";
	    				 let i=1;
	    				for (var key in data) {
	    					if (data.hasOwnProperty(key)) {
	    					  s+="<tr>";
	    					  s+="<td>"+i+"</td>";
	    					  s+="<td><div class='d-flex align-items-center gap-3 cursor-pointer'>";
	    					  s+="<img src='assets/bankImg/"+data[key].bankImg+"'class='product-box' width='44' height='44' alt=''>";
	    					  s+="<div class=''><p class='mb-0'>"+data[key].bankName+"</p></div></div> </td>";
	    					  s+="<td>"+data[key].bankEmail+"</td>";
	    					  s+="<td>"+data[key].bankPhone+"</td>";
	    					  s+="<td><div class='table-actions d-flex align-items-center gap-3 fs-6'>";
	    					  s+="<a  class='text-info bank_edit' data-bs-toggle='tooltip' data-bs-placement='bottom' title='Edit' data-id='"+data[key].bankId+"' id='"+data[key].bankId+"'><i class='bi bi-pencil-fill'></i></a>";
	    					  s+="<a  class='text-danger bank_delete' data-bs-toggle='tooltip' data-bs-placement='bottom' title='Delete' data-id='"+data[key].bankId+"' id='"+data[key].bankId+"'><i class='bi bi-trash-fill'></i></a>";
	    					  s+="</div></td></tr>";
	    					}
	    					i++;
	    				}
	    				$('#viewBank').html(s);
	    				console.log("success...")
	    	  		},
	    		error:function(jqXHR,textStatus,errorThrown){
	    			console.log(jqXHR.responseText);
                    alert('error')
	    				console.log("error...")
	    			}
	    	    });
			  }
				 $(document).on('click', '.bank_delete', function() {
					 BankId = $(this).attr('id');
	                 if (confirm('Are you sure you want to delete this?')) {
	              $.ajax({
					    type:'POST',
					    url:'../BankServlet',
						data:{'BankId':BankId,'event':'bank_delete'},
						method:'POST',
						// dataType:'JSON',
                    success:function(data,textStatus,jqXHR){
                      if(data.trim() ==='done'){
                        $.toast({
	  		  					    text: "Successfully Deleted!",
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
		  		  				getData();
	  		  				}else{
	  		  				$.toast({
				  		  	    text: "Something went wrong on code!",
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
						console.log("error...");


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
	              } //confirm end

			  });
	        });
		</script>
<script>$(document).on('click','.bank_edit',function(){
  let id=$(this).attr('id');
  $('#addBankModal2').modal('show');
  $.ajax({
    type:"Post",
    url:'../BankServlet',
    data:{"id":id,"event":"editBank"},
    dataType:"JSON",
    success: function(response) {
      console.log("RES",response);
      $("#bankName1").val(response[0].bankName);
      $("#bankEmail1").val(response[0].bankEmail);
      $("#bankPhone1").val(response[0].bankPhone);
      $("#bankImage1").val(response[0].bankImg);
      $("#bankId2").val(response[0].bankId);
    },
    error: function (jqXHR, textStatus, errorThrown) {
      $.toast({
        text: "Something went to wrong on server! ",
        heading: 'Note',
        icon: 'error',
        showHideTransition: 'fade',
        allowToastClose: true,
        hideAfter: 5000,
        stack: 5,
        position: 'top-center',
        textAlign: 'left',
        loader: true,
        loaderBg: '#9EC600',
      });
    }
  });


})</script>
  <script>

    $(document).ready(function(){
      $("#updatebank").submit(function(event){
        event.preventDefault();
        var formData = $(this).serialize();

        $.ajax({
          url:'../BankServlet',
          type: "post",
          data: formData,
          success: function(response){
            if(response.trim()==="done"){
              alert("Successfully updated");
              window.location.href="viewBank.jsp";
            }else{
              alert("Failed to update !");
            }
          },
          error: function(){
            $.toast({
              text: "Something went to wrong on server! ",
              heading: 'Note',
              icon: 'error',
              showHideTransition: 'fade',
              allowToastClose: true,
              hideAfter: 5000,
              stack: 5,
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