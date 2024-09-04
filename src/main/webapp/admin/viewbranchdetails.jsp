<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Branch Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .card-header {
            background-color: #28a745;
            color: white;
        }
        .card-body {
            background-color: #f8f9fa;
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
            <%-- Sample branch data --%>
            <div class="row">
                <div class="col-md-6">
                    <h5>Branch Name</h5>
                    <p id="branchName">Axis Bank</p>
                </div>
                <div class="col-md-6">
                    <h5>Location</h5>
                    <p id="location">TriSulia, Cuttack</p>
                </div>
                <div class="col-md-6">
                    <h5>Created Date</h5>
                    <p id="createdDate">2024-09-04</p>
                </div>
                <div class="col-md-6">
                    <h5>Created By</h5>
                    <p id="createdBy">Prasar Ranjan</p>
                </div>
                <div class="col-md-6">
                    <h5>Updated Date</h5>
                    <p id="updatedDate">2024-09-09</p>
                </div>
                <div class="col-md-6">
                    <h5>Updated By</h5>
                    <p id="updatedBy">Me</p>
                </div>
                <div class="col-md-6">
                    <h5>Status</h5>
                    <p id="status">
                        <span class="badge bg-success">Active</span>
                    </p>
                </div>
                <div class="col-md-6">
                    <h5>Bank ID</h5>
                    <p id="bankId">30</p>
                </div>
            </div>
        </div>
        <div class="card-footer text-center">
            <a href="ViewBranch.jsp" class="btn btn-secondary">Back to List</a>
        </div>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
