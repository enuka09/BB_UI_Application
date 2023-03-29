<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,400;0,700;0,800;1,400;1,700;1,800&display=swap" rel="stylesheet">

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

        .reg-container {
            position: relative;
            width: 1000px;
            min-width: 1000px;
            min-height: 580px;
            height: 580px;
            padding: 25px;
            background-color: #DBF8F8;
            box-shadow: 10px 10px 10px #D5D8DB, -10px -10px 10px #EDF1F4;
            border-radius: 12px;
            overflow: hidden;
        }

        .reg-form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            position: absolute;
            top: 0;
            width: 600px;
            height: 100%;
            padding: 25px;
            background-color: #DBF8F8;
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
            border-radius: 5px;
            box-shadow: 2px 2px 4px #D5D8DB, inset -2px -2px 4px #EDF1F4;
        }

        .form-input:focus {
            box-shadow: 4px 4px 4px #D5D8DB, inset -4px -4px 4px #EDF1F4;
        }

        .form-span {
            margin-top: 10px;
        }

        .form-button-reg {
            width: 350px;
            height: 50px;
            border-radius: 5px;
            margin-top: 30px;
            margin-bottom: 0px;
            font-weight: 700;
            font-size: 14px;
            letter-spacing: 1.15px;
            background-color: #10D3D4;
            color: #f9f9f9;
            box-shadow: 8px 8px 16px #DBF8F8, -8px -8px 16px #DBF8F8;
            border: none;
            outline: none;
            cursor: pointer;
        }

        .form-link {
            color: #0B9394;
            font-size: 15px;
            line-height: 2;
            cursor: pointer;
        }

        .form-title {
            font-size: 24px;
            font-weight: 700;
            line-height: 3;
            color: #0B9394;
        }

        .reg-img {
            position: absolute;
            top: 0;
            transition: 1.25s;
            overflow: hidden;
            box-shadow: 4px 4px 10px #d1d9e6, -4px -4px 10px #f9f9f9;
            left: calc(100% - 400px);
        }

        .reg-img > img {
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
<div class="reg-container">
    <div class="reg-img">
        <img src="Images/bg-signup.jpg" alt="Sign-Up Image">
    </div>
    <div class="reg-form-container">
        <form class="form" id="registration-form" method="POST" action="${pageContext.request.contextPath}/RegistrationServlet">
            <h2 class="form-title">CREATE NEW ACCOUNT</h2>
            <input type="text" name="CusFirstName" class="form-input" placeholder="First Name" required>
            <input type="text" name="CusLastName" class="form-input" placeholder="Last Name" required>
            <input type="text" name="CusUsername" class="form-input" placeholder="Username" required>
            <input type="password" name="CusPassword" class="form-input" placeholder="Password" required>
            <input type="password" class="form-input" placeholder="Confirm Password" required>
            <input type="text" name="CusNIC" class="form-input" placeholder="NIC Number" required>
            <input type="date" name="CusDOB" id="dob" class="form-input" placeholder="Select DOB" required>
            <button type="submit" name="register" class="form-button-reg">REGISTER</button>
            <span class="form-span">Already have an account? <a href="${pageContext.request.contextPath}/UserLogin.jsp" class="form-link">Login Here</a></span>
        </form>
    </div>
</div>
</body>
</html>
