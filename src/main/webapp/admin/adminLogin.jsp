<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>eBank - Admin Login</title>
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
            border-radius: 20px;
        }
        .logo-container {
            text-align: center;
            margin-bottom: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
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

        <p>Bas your growth and get consulting support!</p>
        <form action="loginServlet" method="post">
            <label for="email">Email Address</label>
            <input type="text" id="email" name="email" placeholder="Enter Email">

            <label for="password">Enter Password</label>
            <input type="password" id="password" name="password" placeholder="Enter Password">

            <div class="checkbox-container">
                <input type="checkbox" id="remember" name="remember">
                <label for="remember">Remember Me</label>
            </div>

            <a href="#" style="font-size: 14px;">Forget Password?</a><br><br>

            <button type="submit" class="btn">Sign In</button>
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
</body>
</html>
