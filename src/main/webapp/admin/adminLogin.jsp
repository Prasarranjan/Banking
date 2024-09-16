<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>eBank - Admin Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/jquery-toast/dist/jquery.toast.min.css" rel="stylesheet" />
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .login-container {
            display: flex;
            width: 70%;
            height: 80vh;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
            border-radius: 20px;
            overflow: hidden;
        }
        .image-container {
            width: 70%;
            background-image: url('assets/images/error/login-img.jpg');
            background-size: cover;
            background-position: center;
        }
        .form-container {
            width: 30%;
            padding: 50px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            background-color: white;
        }
        .logo-container {
            text-align: center;
            margin-bottom: 20px;
        }
        .logo-container img {
            width: 60px;
            height: auto;
            margin-right: 10px;
        }
        h2 {
            font-size: 28px;
            color: #007bff;
            text-align: center;
        }
        p {
            font-size: 14px;
            margin-bottom: 30px;
            color: #555;
            text-align: center;
        }
        label {
            font-size: 14px;
            color: #007bff;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px 15px;
            margin-bottom: 20px;
            border: 1px solid #007bff;
            border-radius: 25px;
            outline: none;
            font-size: 16px;
            color: #333;
            transition: border-color 0.3s ease;
        }
        input[type="text"]:focus, input[type="password"]:focus {
            border-color: #0056b3;
        }
        .btn {
            background-color: #007bff;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
            width: 100%;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        .checkbox-container {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }
        .checkbox-container input {
            margin-right: 10px;
        }
        .footer {
            margin-top: 20px;
            font-size: 14px;
            color: #555;
            text-align: center;
        }
        .footer a {
            color: #007bff;
            text-decoration: none;
        }
        .footer a:hover {
            text-decoration: underline;
        }
        .social-login {
            text-align: center;
            margin-top: 20px;
        }
        .social-login p {
            font-size: 16px;
            color: #333;
        }
        .social-login img {
            width: 30px;
            height: auto;
            margin: 0 10px;
            cursor: pointer;
        }
    </style>

</head>

<body>

<div class="login-container">
    <div class="image-container"></div>
    <div class="form-container">
        <div class="logo-container">
            <img src="assets/images/error/llooggoo.jpg" alt="eBank Logo">
            <h2>eBank Admin Login</h2>
        </div>

        <p>Boost your growth and get consulting support!</p>
        <form id="myform">
            <div class="mb-3">
                <label for="email" class="form-label">Email Address</label>
                <input type="text" class="form-control" id="email" name="email" placeholder="Enter Email">
            </div>

            <div class="mb-3">
                <label for="password" class="form-label">Enter Password</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password">
            </div>

            <input type="hidden" name="event" value="login">

            <div class="form-check mb-3">
                <input type="checkbox" class="form-check-input" id="remember" name="remember">
                <label class="form-check-label" for="remember">Remember Me</label>
            </div>

            <div class="mb-3">
                <a href="#" style="font-size: 14px;">Forget Password?</a>
            </div>

            <button type="submit" class="btn btn-primary">Sign In</button>
        </form>

        <div class="social-login">
            <p>Login with:</p>
            <img src="assets/images/error/google.png" alt="Google Login">
            <img src="assets/images/error/fb.png" alt="Facebook Login">
            <img src="assets/images/error/gmail.png" alt="Gmail Login">
        </div>

        <div class="footer">
            <p>Don't have an account yet? <a href="signup.jsp">Sign up here</a></p>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/jquery-toast/dist/jquery.toast.min.js"></script>
<script>
    $(document).ready(function() {
        $('#myform').on('submit', function(event) {
            event.preventDefault();

            var formData = {
                email: $('#email').val(),
                password: $('#password').val(),
                event: 'login'
            };

            $.ajax({
                url: '../AdminLoginServlet',
                type: 'POST',
                data: formData,
                success: function(response) {
                    if (response === 'done') {
                        $.toast({
                            heading: 'Success',
                            text: 'Login successful! Redirecting...',
                            icon: 'success',
                            position: 'top-right',
                            loaderBg: '#007bff',
                            hideAfter: 3000
                        });

                        setTimeout(function() {
                            window.location.href = 'index.jsp';
                        }, 3000);
                    } else {
                        $.toast({
                            heading: 'Error',
                            text: 'Invalid email or password. Please try again.',
                            icon: 'error',
                            position: 'top-right',
                            loaderBg: '#ff0000',
                            hideAfter: 5000
                        });
                    }
                },
                error: function() {
                    $.toast({
                        heading: 'Error',
                        text: 'An error occurred while processing your request.',
                        icon: 'error',
                        position: 'top-right',
                        loaderBg: '#ff0000',
                        hideAfter: 5000
                    });
                }
            });
        });
    });
</script>
</body>
</html>
