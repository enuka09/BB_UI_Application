<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE-edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User Login</title>
  <link rel="stylesheet" href="Login.css">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,400;0,700;0,800;1,400;1,700;1,800&display=swap" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="form-container">
          <form class="form">
            <h2 class="form-title">SIGN IN</h2>
              <input type="text" class="form-input" placeholder="Username">
              <input type="password" class="form-input" placeholder="Password">
              <span class="form-forgot-password"><a href="#">Forgot your password?</a> </span>
              <button class="form-button sty">LOGIN</button>
              <span class="form-span">Not Registered? <a class="form-link">Sign up now</a></span>
          </form>
        </div>
        <div class="login-img">
          <img src="Images/bg-login.jpg">
        </div>
    </div>
</body>
</html>
