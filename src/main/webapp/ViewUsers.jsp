<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Details</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap");
        *{
            margin: 0;
            padding: 0;
            border: none;
            outline: none;
            text-decoration: none;
            box-sizing: border-box;
            font-family: "Poppins", sans-serif;
        }
        body{
            background: #DBF8F8;
        }
        .header{
            width: 100%;
            margin-top: -10px;
            position: fixed;
            z-index: 999;
            display: flex;
            align-items: center;
            justify-content: space-between;
            height: 60px;
            padding: 20px;
            background: #fff;
        }
        .logo{
            margin-left: 20px;
            display: flex;
            align-items: center;
        }

        .logo img {
            width: 100px;
            height: auto;
            margin-right: 1rem;
        }

        .search_box{
            margin-left: 110px;
            display: flex;
            align-items: center;
        }
        .search_box input{
            padding: 9px;
            width: 250px;
            background: #DBF8F8;
            border-top-left-radius: 5px;
            border-bottom-left-radius: 5px;
        }
        .search_box i{
            padding: 0.66rem;
            cursor: pointer;
            color: #fff;
            background: #0B9394;
            border-top-right-radius: 5px;
            border-bottom-right-radius: 5px;
        }
        .header-icons{
            margin-right: 30px;
            display: flex;
            align-items: center;
        }
        .header-icons i{
            margin-right: 2rem;
            cursor: pointer;
        }
        .header-icons .account{
            width: 130px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .header-icons .account img{
            width: 35px;
            height: 35px;
            cursor: pointer;
            border-radius: 50%;
        }
        .container{
            margin-top: 10px;
            display: flex;
            justify-content: space-between;
        }

        .sidebarnew {
            margin-top: 70px;
            height: 100%;
            width: 230px;
            position: fixed;
            z-index: 1;
            top: 0;
            left: 0;
            background-color: #fff;
            overflow-x: hidden;
            padding-top: 16px;
            border-radius: 5px;
        }

        .bottom-icon{
            margin-top: 150px;
        }

        .sidebarnew span {
            font-weight: 500;
            font-size: 15px;
            padding: 6px 8px 6px 16px;
            margin-left: 10px;
            margin-bottom: 35px;
            text-decoration: none;
            color: #0B9394;
            display: block;
        }

        .sidebarnew a {
            font-weight: 500;
            font-size: 15px;
            padding: 6px 8px 6px 16px;
            margin-left: 10px;
            margin-bottom: -20px;
            text-decoration: none;
            color: #0B9394;
            display: block;
        }

        .selected-icon{
            color: #ffffff;
            background: #0b9394;
            margin-left: 10px;
            border-radius: 10px;
            width: 200px;
        }

        .sidebarnew a:hover {
            border-radius: 10px;
            background: #EDFBFB;
            padding: 6px 4px 6px 12px;
        }

        .main-body{
            margin-top: 80px;
            margin-left: 270px;
            width: 70%;
            padding: 1rem;
        }


        table {
            margin-left: 280px;
            margin-top: 10px;
            width: 70%;
            border-collapse: collapse;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
            margin-bottom: 20px;
        }

        th, td {
            padding: 12px 15px;
            text-align: center;
            border-right: 1px solid #dee2e6;
            border-bottom: 1px solid #dee2e6;
            font-size: 14px;
        }

        th:last-child, td:last-child {
            border-right: none;
        }

        thead {
            background-color: #f1f1f1;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

        tbody:last-child {
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
            border-bottom: 2px solid #dee2e6;
        }
    </style>
</head>

<body onload="loadCustomer()">


<header class="header">
    <div class="logo">
        <img src="Images/logo.png" alt="logo">
        <div class="search_box">
            <input type="text" placeholder="Search Here">
            <i class="fa-sharp fa-solid fa-magnifying-glass"></i>
        </div>
    </div>

    <div class="header-icons">
        <span style='color: #0B9394;'><i class="fas fa-bell"></i></span>
        <div class="account">
            <a href="AdminProfile.jsp"><img src="Images/admin-profile.jpg" alt="admin-img"></a>
            <h4>&nbsp&nbspEnuka&nbsp&nbspPinsara</h4>
        </div>
    </div>
</header>
<div class="container">
    <div class="sidebarnew">
        <span style="color: #9DD3D4">Menu</span>
        <a href="AdminDashboard.jsp"><i class='fa fa-home'></i><span style='display:inline-block; margin-left: 10px;'>Home</span></a>
        <a href="ManageProducts.jsp"><i class='fa-solid fa-bag-shopping'></i><span style='display:inline-block; margin-left: 10px;'>Manage Products</span></a>
        <a href="ManageBrands.jsp"><i class="fa-solid fa-ring"></i><span style='display:inline-block; margin-left: 10px;'>Manage Brands</span></a>
        <a href="ManageCategories.jsp"><i class='fa-solid fa-store'></i><span style='display:inline-block; margin-left: 10px;'>Manage Category</span></a>
        <div class="selected-icon">
            <i class='fa-solid fa-people-roof' style="margin-left: 20px; margin-top: 30px"></i><span style='display:inline-block; margin-left: 10px; color: #ffffff;'>Manage Users</span>
        </div>
        <div class="bottom-icon">
            <a href="#profile"><i class="fa-solid fa-right-from-bracket"></i><span style='display:inline-block; margin-left: 10px;'>Logout</span></a>
        </div>
    </div>
</div>
<div class="main-body">

    <div class="promo_card">
        <h2>Customer Details</h2>
    </div>
</div>
<table>
    <thead>
    <tr class="border-bottom border-top">
        <th class="border-right">ID</th>
        <th class="border-right">First Name</th>
        <th class="border-right">Last Name</th>
        <th class="border-right">Username</th>
        <th class="border-right">Password</th>
        <th class="border-right">NIC</th>
        <th class="border-right">Birth Date</th>
    </tr>
    </thead>
    <tbody id="customerTable"></tbody>
</table>

<script>
    function loadCustomer() {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                var customerData = JSON.parse(this.responseText);
                var customerTable = document.getElementById("customerTable");
                customerTable.innerHTML = "";
                for (var i = 0; i < customerData.length; i++) {
                    var row = customerTable.insertRow(i);
                    var idCell = row.insertCell(0);
                    var firstNameCell = row.insertCell(1);
                    var lastNameCell = row.insertCell(2);
                    var usernameCell = row.insertCell(3);
                    var passwordCell = row.insertCell(4);
                    var nicCell = row.insertCell(5);
                    var dobCell = row.insertCell(6);
                    idCell.innerHTML = customerData[i].id;
                    firstNameCell.innerHTML = customerData[i].firstName;
                    lastNameCell.innerHTML = customerData[i].lastName;
                    usernameCell.innerHTML = customerData[i].username;
                    passwordCell.innerHTML = customerData[i].password;
                    nicCell.innerHTML = customerData[i].nic;
                    dobCell.innerHTML = customerData[i].dob;
                }
            }
        };
        xhttp.open("GET", "http://localhost:8080/BB_REST_APP-1.0-SNAPSHOT/api/customer", true);
        xhttp.send();
    }
</script>

</body>
</html>
