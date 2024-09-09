<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page Under Maintenance</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f8f9fa;
            margin: 0;
        }
        .maintenance-container {
            text-align: center;
            padding: 20px;
            border-radius: 10px;
            background-color: #ffffff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .maintenance-container h1 {
            font-size: 2.5rem;
            color: #dc3545;
        }
        .maintenance-container p {
            font-size: 1.2rem;
            color: #6c757d;
        }
    </style>
</head>
<body>
<div class="maintenance-container">
    <h1>Page Under Maintenance</h1>
    <p>We are currently performing maintenance on this page. Please check back later.</p>
    <a href="javascript:history.back()" class="btn btn-primary">Go Back</a>
    <!-- Alternatively, you can link to the home page or another relevant page -->
    <!-- <a href="index.jsp" class="btn btn-secondary">Back to Home</a> -->
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
