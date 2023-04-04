<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE-edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,400;0,700;0,800;1,400;1,700;1,800&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <style type="text/css">
        *, *::after, *::before {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            user-select: none;
            font-family: "Montserrat", sans-serif;
        }
        body{
            width: 100%;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 14px;
            background-color: #ecf0f3;
            color: #a0a5a8;
        }
        .container {
            position: relative;
            width: 1000px;
            min-width: 1000px;
            min-height: 580px;
            height: 580px;
            padding: 25px;
            background-color: #FBE1C3;
            box-shadow: 10px 10px 10px #D5D8DB, -10px -10px 10px #EDF1F4;
            border-radius: 12px;
            overflow: hidden;
        }
        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            position: absolute;
            top: 0;
            width: 600px;
            height: 100%;
            padding: 25px;
            background-color: #FBE1C3;
            transition: 1.25s;
        }
        .form {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            width: 100%;
            height: 100%;
        }
        .form-input {
            width: 350px;
            height: 40px;
            margin: 6px 0;
            padding-left: 25px;
            font-size: 13px;
            letter-spacing: 0.15px;
            border: none;
            outline: none;
            transition: 0.25s ease;
            border-radius: 20px;
            box-shadow: 2px 2px 4px #D5D8DB, inset -2px -2px 4px #EDF1F4;
        }
        .form-input:focus {
            box-shadow: 4px 4px 4px #D5D8DB, inset -4px -4px 4px #EDF1F4;
        }

        .view-pass-icon{
            position: absolute;
            margin-right: -300px;
            transform: translate(0, -50%);
            cursor: pointer;
        }

        .form-forgot-password {
            width: 350px;
            text-align: right;
            margin-top: 5px;
            padding-right: 5px;
            color: #BDBDBD;
        }
        .form-forgot-password > a {
            text-decoration: none;
            color: #7B7B7B;
        }
        .form-span {
            margin-top: 10px;
            color: #5B5B5B;
        }
        .form-button {
            width: 350px;
            height: 50px;
            border-radius: 25px;
            margin-top: 30px;
            margin-bottom: 0px;
            font-weight: 700;
            font-size: 14px;
            letter-spacing: 1.15px;
            background-color: #F39E39;
            color: #f9f9f9;
            box-shadow: 4px 4px 10px #FBE1C3, -4px -4px 10px #F7C488;
            border: none;
            outline: none;
            cursor: pointer;
        }
        .form-link {
            color: #ed6c00;
            font-size: 15px;
            line-height: 2;
            cursor: pointer;
        }
        .form-title {
            font-size: 24px;
            font-weight: 700;
            line-height: 3;
            color: #EB860E;
        }
        .login-img {
            position: absolute;
            top: 0;
            transition: 1.25s;
            overflow: hidden;
            box-shadow: 4px 4px 10px #FBE1C3, -4px -4px 10px #F7C488;
            left: calc(100% - 400px);
        }
        .login-img > img {
            height: 100%;
            width: 100%;
        }
        /* Responsive */
        @media (max-width: 1200px) {
            .container {
                transform: scale(0.7);
            }
        }
        @media (max-width: 1000px) {
            .container {
                transform: scale(0.6);
            }
        }
        @media (max-width: 800px) {
            .container {
                transform: scale(0.5);
            }
        }
        @media (max-width: 600px) {
            .container {
                transform: scale(0.4);
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="form-container">
          <form class="form" action="${pageContext.request.contextPath}/user-login" method="post">
            <h2 class="form-title">SIGN IN</h2>
              <input type="text" name="username" id="txtloginusername" class="form-input" placeholder="Username" required>
              <input type="password" name="password" id="txtloginpassword" class="form-input" placeholder="Password" required>
              <span class="view-pass-icon"><i class="fa fa-eye" aria-hidden="true" id="eye" onclick="toggle()"></i></span>
              <span class="form-forgot-password"><a href="#">Forgot your password?</a> </span>
              <button type="submit" id="idLogin" class="form-button">LOGIN</button>
              <span class="form-span">Not Registered? <a href="${pageContext.request.contextPath}/UserRegistration.jsp" class="form-link">Sign up now</a></span>
          </form>
        </div>
        <div class="login-img">
          <img src="Images/bg-login.jpg">
        </div>
    </div>

    <script>
    var state = false;
    function toggle(){
    if (state){
    document.getElementById("txtloginpassword").setAttribute("type", "password");
    state = false;

    }
    else{
    document.getElementById("txtloginpassword").setAttribute("type", "text");
    state = true;
    }
    }

    function validateForm() {
    var x = document.forms["form"]["username"].value;
    var y = document.forms["form"]["password"].value;
    if (x == "" || y == "") {
    document.getElementById("errorMessage").style.display = "block";
    return false;
    }
    }
    </script>
</body>
</html>
