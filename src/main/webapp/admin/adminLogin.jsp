<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin Login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1>Admin Login</h1>
    <p>See your growth and get consulting support!</p>

    <form action="loginServlet" method="post">
        <div class="mb-3">
            <label for="email" class="form-label">Email Address:</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>

        <div class="mb-3">
            <label for="password" class="form-label">Enter Password:</label>
            <input type="password" class="form-control" id="password" name="password" required>
        </div>

        <div class="mb-3 form-check">
            <input type="checkbox" class="form-check-input" id="rememberMe" name="rememberMe">
            <label class="form-check-label" for="rememberMe">Remember Me</label>
        </div>

        <a href="#">Forgot Password?</a>

        <button type="submit" class="btn btn-primary">Sign In</button>

        <div class="social-login mt-3">
            <button type="button" class="btn btn-outline-secondary">Sign In with Google</button>
            <button type="button" class="btn btn-outline-secondary">Sign In with Facebook</button>
        </div>
    </form>

    <p class="mt-3">Don't have an account yet? <a href="signup.jsp">Sign up here</a></p>
</div>

<p class="mt-3">&copy; 2024 All rights reserved.</p>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>