<!DOCTYPE html>

<html lang="en">
<head>
    <title>Loan Details</title>
    <script src="https://kit.fontawesome.com/e8fa2e31b4.js" crossorigin="anonymous"></script>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css" rel="stylesheet"/>
    <style>

        @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap");

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Poppins", sans-serif;
        }

        body {
            min-height: 100%;
            background: #DBF8F8;
        }

        .grid-container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            grid-gap: 40px;
            margin-top: -400px;
            margin-left: 300px;
            padding: 20px 200px;

        }

        nav {
            position: fixed;
            overflow: hidden;
            z-index: 999;
            top: 0;
            left: 0;
            height: 70px;
            width: 100%;
            display: flex;
            align-items: center;
            background: #0B9394;
            box-shadow: 0 0 1px rgba(0, 0, 0, 0.1);
        }

        nav .logo {
            width: 200px;
            height: 150px;
            display: flex;

            margin: 0 35px;
        }

        .navbar-b {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .profile {
            display: flex;
            justify-content: space-between;
            margin-left: 1100px;
            padding: 7px 10px;
            border-radius: 3px;
            width: 100px;
            font-size: 30px;
        }

        .profile p {
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            margin-left: 10px;
        }

        .sidebar {
            position: fixed;
            top: 70px;
            left: 0;
            height: 100%;
            width: 250px;
            background-color: #54B3B4;
            padding: 20px;
        }

        .sidebar-content {
            margin-top: 50px;
            height: calc(100% - 80px);
        }

        .selected-icon {
            color: #000000;
            background: #fff;
            border-radius: 5px;
            width: 200px;
        }

        .lists {
            list-style-type: none;
            padding: 0;
        }

        .list {
            margin-bottom: 15px;
        }

        .nav-link {
            display: flex;
            align-items: center;
            text-decoration: none;
            color: #333;
            padding: 10px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .icon {
            font-size: 1.5rem;
            margin-right: 10px;
        }

        .link {
            font-size: 1.2rem;
            letter-spacing: 1px;
        }

        .bottom-cotent {
            margin-top: 180px;
        }

        .Top-cotent {
            margin-top: -20px;
            margin-bottom: 40px;
            color: #F7F7F7;
        }

        .nav-link:hover {
            background-color: #ddd;
        }

        @media (max-width: 768px) {
            .sidebar {
                width: 100%;
                height: auto;
                padding: 10px;
            }
        }


        :root {
            --bodyBack: #DBF8F8;
            --textColor: #1b2741;
            --starColor: #DBF8F8;
            --sectionBack: #f7f6f9;
        }

        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
            font-family: 'Raleway', sans-serif;
        }

        body {
            background-color: #DBF8F8;
            min-height: 100vh;
            display: grid;
            place-content: center;
        }

        .container {
            margin-left: 250px;
            width: 80vw;
            height: 80vh;
            display: flex;
            flex-direction: column;
            justify-content: space-around;
        }

        .header {
            background-color: #54B3B4;
            width: 80%;
            margin-top: -300px;
            margin-left: 120px;
        }

        .header h2 {
            font-size: 2em;
            text-transform: uppercase;
            text-align: center;
            color: #ffffff;
        }

        .loan-table {
            margin-top: -100px;
        }

        .loan-table th {
            background: #a0a5a8;
            height: 50px;
        }

        .remaining-table{
            margin-top: -100px;
        }

        table {
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
            margin-top: -200px;
            margin-left: 480px;
            border-collapse: collapse;
            width: 50%;
            font-family: Arial, sans-serif;
            font-size: 14px;
            color: #333333;
            text-align: center;
        }

        th, td {
            text-align: center;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
            height: 50px;
        }

        td {
            padding-top: 50px;
            background: #ffffff;
        }
    </style>
</head>
<body onload="loadPurchases()">
<nav>
    <div class="logo">
        <img src="Images/logo-front.png">
    </div>

    <div class="navbar-b">
        <div class="profile"><i class="fa-solid fa-circle-user" style="color: #ffffff;"></i>
            <p><%=session.getAttribute("username")%>
            </p></div>
    </div>
    </div>

    <div class="sidebar">
        <div class="sidebar-content">
            <ul class="lists">
                <div class="Top-cotent">
                    <li class="list">
                        <span class="link">Settings</span>
                        </a>
                    </li>
                </div>
                <li class="list">
                    <a href="CustomerDashboard.jsp" class="nav-link">
                        &nbsp<i class="fa fa-home"></i>&nbsp&nbsp&nbsp&nbsp
                        <span class="link">Home</span>
                    </a>
                </li>
                <li class="list">
                    <a href="ViewOwnPurchases(Customer).jsp" class="nav-link">
                        <i class="bx bx-bar-chart-alt-2 icon"></i>
                        <span class="link">Purchases</span>
                    </a>
                </li>
                <div class="selected-icon">
                    <li class="list">
                        <a href="#" class="nav-link">
                            &nbsp<i class="fa-solid fa-dollar-sign"></i>&nbsp&nbsp&nbsp&nbsp
                            <span class="link">Loan Details</span>
                        </a>
                    </li>
                </div>
                <li class="list">
                    <a href="#" class="nav-link">
                        <i class="bx bx-message-rounded icon"></i>
                        <span class="link">Ask Questions</span>
                    </a>
                </li>
                <li class="list">
                    <a href="#" class="nav-link">
                        <i class="bx bx-pie-chart-alt-2 icon"></i>
                        <span class="link">Reports</span>
                    </a>
                </li>

                <div class="bottom-cotent">
                    <li class="list">
                        <a href="#" onclick="logout()" class="nav-link">
                            <i class="bx bx-log-out icon"></i>
                            <span class="link">Logout</span>
                        </a>
                    </li>
                </div>
            </ul>
        </div>
    </div>
</nav>

<div class="container">

    <div class="header">
        <h2>LOAN DETAILS</h2>
    </div>
</div>

<div class="loan-table">
    <table>
        <tr>
            <th>Loan Amount</th>
            <th>LKR 15,000</th>
        </tr>
    </table>
</div>

<div style="padding: 20px;">
    <div class="remaining-table">
        <table>
            <thead>
            <tr class="border-bottom border-top">
                <th class="border-right">Remaining Loan Balance</th>
                <th></th>
            </tr>
            </thead>
            <tbody id="purchaseTable"></tbody>
        </table>
    </div>
</div>

<script>
    var username = "<%=session.getAttribute("username")%>";

    function loadPurchases() {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var purchaseData = JSON.parse(this.responseText);
                var purchaseTable = document.getElementById("purchaseTable");
                purchaseTable.innerHTML = "";
                for (var i = 0; i < purchaseData.length; i++) {
                    var row = purchaseTable.insertRow(i);
                    var loanBalanceCell = row.insertCell(0);
                    loanBalanceCell.innerHTML = 'LKR ' + purchaseData[i].loan_balance.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,');
                }
            }
        };
        xhttp.open("GET", "http://localhost:8080/BB_REST_APP-1.0-SNAPSHOT/api/purchase?username=" + username, true);
        xhttp.send();
    }


    function confirmLogout() {
        var confirmed = confirm("Are you sure you want to exit?");
        if (confirmed) {
            window.location.href = "UserLogin.jsp";
        }
    }

    function logout() {
        window.location.href = "UserLogin.jsp";
    }

</script>

</body>
</html>


