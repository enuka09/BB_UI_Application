<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    <link rel="stylesheet" href="Register.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,400;0,700;0,800;1,400;1,700;1,800&display=swap" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="login-img">
        <img src="Images/bg-signup.jpg" alt="Sign-Up Image">
    </div>
    <div class="form-container">
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
            <span class="form-span">Already have an account? <a href="${pageContext.request.contextPath}/login.jsp" class="form-link">Login Here</a></span>
        </form>
    </div>
</div>
</body>
</html>
