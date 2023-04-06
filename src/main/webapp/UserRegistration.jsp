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
        <form class="form" action="#">
            <h2 class="form-title">CREATE NEW ACCOUNT</h2>
            <input type="text" name="firstname" id="txtfirstName" class="form-input" placeholder="First Name" required>
            <input type="text" name="lastname" id="txtlastName" class="form-input" placeholder="Last Name" required>
            <input type="text" name="username" id="txtusername" class="form-input" placeholder="Username" required>
            <input type="password" name="password" id="txtpassword" class="form-input" placeholder="Password" required>
            <input type="password" id="txtconfirmpassword" class="form-input" placeholder="Confirm Password" required>
            <input type="text" name="nic" id="txtnic" class="form-input" placeholder="NIC Number" required>
            <input type="date" name="dob"  id="txtdob" class="form-input" placeholder="Select DOB" required>
            <button id="idAdd" name="register" class="form-button-reg" onclick="submitForm()">REGISTER</button>
            <span class="form-span">Already have an account? <a href="${pageContext.request.contextPath}/UserLogin.jsp" class="form-link">Login Here</a></span>
        </form>
    </div>
</div>

<script>

    const url = 'http://localhost:8080/BB_REST_APP-1.0-SNAPSHOT/api/customer';
    function submitForm() {
        event.preventDefault();

        const firstName = document.getElementById("txtfirstName").value;
        const lastName = document.getElementById("txtlastName").value;
        const username = document.getElementById("txtusername").value;
        const password = document.getElementById("txtpassword").value;
        const confirmPassword = document.getElementById("txtconfirmpassword").value;
        const nic = document.getElementById("txtnic").value;
        const dob = document.getElementById("txtdob").value;
        const minAge = 18;

        // Check if all required fields are filled
        if (!firstName || !lastName || !username || !password || !confirmPassword || !nic || !dob) {
            alert("Please fill in all required fields.");
            return;
        }

        if (password !== confirmPassword) {
            alert("Password and confirm password fields do not match.");
            return;
        }

        // Check if user is at least minAge years old
        const today = new Date();
        const birthDate = new Date(dob);
        let age = today.getFullYear() - birthDate.getFullYear();
        const monthDiff = today.getMonth() - birthDate.getMonth();
        if (monthDiff < 0 || (monthDiff === 0 && today.getDate() < birthDate.getDate())) {
            age--;
        }
        if (age < minAge) {
            alert("You must be at least " + minAge + " years old to register.");
            return;
        }

        const customer = {
            firstName: firstName,
            lastName: lastName,
            username: username,
            password: password,
            nic: nic,
            dob: dob,
        };

        fetch(url, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(customer)
        })
            .then(response => {
                if (response.ok) {
                    console.log('Customer registration successful!');
                    alert("Registration successful!");
                    location.reload();
                } else {
                    console.error('Error registering customer.');
                    alert("Registration Not successful!");
                    location.reload();
                }
            })
            .catch(error =>
                console.error('Error registering customer:', error));
    }

</script>

</body>
</html>
