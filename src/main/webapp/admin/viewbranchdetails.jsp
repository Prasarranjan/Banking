<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Branch Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/jquery-qrcode@1.0/jquery.qrcode.min.js"></script>

    <style>
        .card-header {
            background-color: #28a745;
            color: white;
        }
        .card-body {
            background-color: #f8f9fa;
        }
        .profile-image-container {
            width: 100px;
            height: 100px;
            border-radius: 10px;
            overflow: hidden;
            border: 1px solid #ddd;
            margin-right: 15px;
            float: left;
        }
        .profile-image {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .branch-name {
            font-size: 30px;
            font-weight: bold;
            color: blue; /* Green color for branch name */
            margin-top: 15px;
        }
        .stamp {
            position: absolute;
            right: 20px;
            bottom: 20px;
            text-align: center;
            font-size: 0.9rem;
            color: #333;
        }
        .stamp img {
            width: 100px;
            height: auto;
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <div class="card">
        <div class="card-header">
            <h4 class="card-title">Branch Details</h4>
        </div>
        <div class="card-body">
            <div class="row">
                <!-- Profile Image -->
                <div class="col-md-12">
                    <div class="profile-image-container">
                        <img src="assets/bankImg/default.png" id="profileImage" class="profile-image" alt="Branch Image">
                    </div>
                    <!-- Branch Name -->
                    <div class="branch-name" id="branchName"></div>
                </div>

                <div class="col-md-12">
                    <div id="branchDetails">
                        <!-- Details will be injected here -->
                    </div>
                </div>
            </div>
            <div class="stamp">
                <img src="assets/bankImg/sign.png" alt="Signature">
                <p>Approved by eBank</p>

            </div>
        </div>
        <div class="card-footer text-center">
            <a href="ViewBranch.jsp" class="btn btn-secondary">Back to List</a>
        </div>

    </div>
    <div class="note">
        Note: If the bank is deactivated, you can go to edit and click on "Active" with the date. Ignore if active.
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-qrcode@1.0/jquery.qrcode.min.js"></script>

<script>
    $(document).ready(function() {
        // Get branchId from URL parameters
        var urlParams = new URLSearchParams(window.location.search);
        var branchId = urlParams.get('branchId'); // Get branchId from the URL parameter

        if (branchId) {
            loadBranchDetails(branchId);
        } else {
            alert('Branch ID is missing in the URL');
        }

        // Function to load branch details
        function loadBranchDetails(branchId) {
            $.ajax({
                url: "../BankServlet",
                type: 'POST',
                dataType: "json",
                data: { branchId: branchId, "event": 'branchdetails' },
                success: function(response) {
                    console.log(response);

                    // Display branch name in bold and green color
                    $('#branchName').html(response[0].branchName);

                    // Assuming the response is a JSON object with branch details
                    var s = "";
                    s += "<div class='row'>";
                    s += "<div class='col-md-6'><h5>Branch Name</h5><p>" + response[0].branchName + "</p></div>";
                    s += "<div class='col-md-6'><h5>Location</h5><p>" + response[0].location + "</p></div>";
                    s += "<div class='col-md-6'><h5>Created Date</h5><p>" + response[0].createdDate + "</p></div>";
                    s += "<div class='col-md-6'><h5>Created By</h5><p>" + response[0].createdBy + "</p></div>";
                    s += "<div class='col-md-6'><h5>Updated Date</h5><p>" + response[0].updatedDate + "</p></div>";
                    s += "<div class='col-md-6'><h5>Updated By</h5><p>" + response[0].updatedBy + "</p></div>";
                    s += "<div class='col-md-6'><h5>Status</h5><p><span class='badge bg-" + (response[0].isActive ? 'success' : 'danger') + "'>" + (response[0].isActive ? 'Active' : 'Deactive') + "</span></p></div>";
                    s += "<div class='col-md-6'><h5>Bank Name</h5><p>" + response[0].bankName + "</p></div>";
                    s += "<div class='col-md-6'><h5>Branch Id</h5><p>" + branchId + "</p></div>";
                    s += "<div class='col-md-6'><h5>Bank Id</h5><p>" + response[0].bankId + "</p></div>";
                    s += "</div>";

                    // Update the content of branchDetails div
                    $('#branchDetails').html(s);

                    // Update image src
                    $('#profileImage').attr('src', 'assets/bankImg/' + response[0].bankImg);
                },
                error: function() {
                    alert('Error loading branch details');
                }
            });
        }
    });
</script>
</body>
</html>
