<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Purchases & Loan Details</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"/>
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap");

        * {
            margin: 0;
            padding: 0;
            border: none;
            outline: none;
            text-decoration: none;
            box-sizing: border-box;
            font-family: "Poppins", sans-serif;
        }

        body {
            background: #DBF8F8;
        }

        .header {
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

        .logo {
            margin-left: 20px;
            display: flex;
            align-items: center;
        }

        .logo img {
            width: 100px;
            height: auto;
            margin-right: 1rem;
        }

        .search_box {
            margin-left: 900px;
            margin-top: -70px;
            display: flex;
            align-items: center;
        }

        .search_box input {
            padding: 9px;
            width: 550px;
            background: #ffffff;
            border-top-left-radius: 5px;
            border-bottom-left-radius: 5px;
        }

        .search_box i {
            padding: 0.66rem;
            cursor: pointer;
            color: #fff;
            background: #0B9394;
            border-top-right-radius: 5px;
            border-bottom-right-radius: 5px;
        }

        .header-icons {
            margin-right: 30px;
            display: flex;
            align-items: center;
        }

        .header-icons i {
            margin-right: 2rem;
            cursor: pointer;
        }

        .header-icons .account {
            width: 130px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .header-icons .account img {
            width: 35px;
            height: 35px;
            cursor: pointer;
            border-radius: 50%;
        }

        .container {
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

        .bottom-icon {
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

        .selected-icon {
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

        .control-btn {
            margin-top: 20px;
            margin-left: -10px;
        }

        .back-view {
            display: inline-block;
            padding: 10px 20px;
            background-color: #0B9394;
            color: white;
            text-align: center;
            font-size: 16px;
            margin: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .back-view:hover {
            background-color: #087576;
        }

        .main-body {
            margin-top: 80px;
            margin-left: 270px;
            width: 70%;
            padding: 1rem;
        }


        table {
            margin-left: 280px;
            margin-top: 30px;
            width: 80%;
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
<body onload="loadPurchases()">
<header class="header">
    <div class="logo">
        <img src="Images/logo.png" alt="logo">
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
        <a href="ManageProducts.jsp"><i class='fa-solid fa-bag-shopping'></i><span
                style='display:inline-block; margin-left: 10px;'>Manage Products</span></a>
        <a href="ManageBrands.jsp"><i class="fa-solid fa-ring"></i><span
                style='display:inline-block; margin-left: 10px;'>Manage Brands</span></a>
        <a href="ManageCategories.jsp"><i class='fa-solid fa-store'></i><span
                style='display:inline-block; margin-left: 10px;'>Manage Category</span></a>
        <div class="selected-icon">
            <i class='fa-solid fa-people-roof' style="margin-left: 20px; margin-top: 30px"></i><span
                style='display:inline-block; margin-left: 10px; color: #ffffff;'>Manage Users</span>
        </div>
        <div class="bottom-icon">
            <a href="#" onclick="confirmLogout();"><i class='fa-solid fa-right-from-bracket'></i><span
                    style='display:inline-block; margin-left: 10px;'>Logout</span></a>
        </div>
    </div>
</div>
<div class="main-body">

    <div class="promo_card">
        <h2>Purchases & Loan Details</h2>
    </div>
    <div class="control-btn">
        <button class="back-view" onclick="window.location.href = 'ViewUsers.jsp'">Back to User Details</button>
    </div>
</div>
<div class="search_box">
    <input type="text" placeholder="Search Here" id="searchBox" oninput="searchTable()">
    <i class="fa-sharp fa-solid fa-magnifying-glass"></i>
</div>
<table>
    <thead>
    <tr class="border-bottom border-top">
        <th class="border-right">Purchase ID</th>
        <th class="border-right">Customer Username</th>
        <th class="border-right">Product ID</th>
        <th class="border-right">Product Name</th>
        <th class="border-right">Price</th>
        <th class="border-right">Loan Balance</th>
        <th class="border-right">Installment 1</th>
        <th class="border-right">Installment 2</th>
        <th class="border-right">Installment 3</th>
    </tr>
    </thead>
    <tbody id="purchaseTable"></tbody>
</table>

<script>

    function loadPurchases() {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var purchaseData = JSON.parse(this.responseText);
                var purchaseTable = document.getElementById("purchaseTable");
                purchaseTable.innerHTML = "";
                for (var i = 0; i < purchaseData.length; i++) {
                    var row = purchaseTable.insertRow(i);
                    var purchaseIdCell = row.insertCell(0);
                    var cusUsernameCell = row.insertCell(1);
                    var productIdCell = row.insertCell(2);
                    var productNameCell = row.insertCell(3);
                    var productPriceCell = row.insertCell(4);
                    var loanBalanceCell = row.insertCell(5);
                    var installmentOneCell = row.insertCell(6);
                    var installmentTwoCell = row.insertCell(7);
                    var installmentThreeCell = row.insertCell(8);
                    purchaseIdCell.innerHTML = purchaseData[i].purchase_id;
                    cusUsernameCell.innerHTML = purchaseData[i].cus_username;
                    productIdCell.innerHTML = purchaseData[i].product_id;
                    productNameCell.innerHTML = purchaseData[i].product_name;
                    productPriceCell.innerHTML = purchaseData[i].product_price;
                    loanBalanceCell.innerHTML = purchaseData[i].loan_balance;
                    installmentOneCell.innerHTML = purchaseData[i].installment_1;
                    installmentTwoCell.innerHTML = purchaseData[i].installment_2;
                    installmentThreeCell.innerHTML = purchaseData[i].installment_3;
                }
            }
        };
        xhttp.open("GET", "http://localhost:8080/BB_REST_APP-1.0-SNAPSHOT/api/purchases", true);
        xhttp.send();
    }

    function searchTable() {
        var input, filter, table, tr, td, i, txtValue;
        input = document.getElementById("searchBox");
        filter = input.value.toUpperCase();
        table = document.getElementById("purchaseTable");
        tr = table.getElementsByTagName("tr");
        for (i = 0; i < tr.length; i++) {
            var found = false;
            for (j = 0; j < tr[i].cells.length; j++) {
                td = tr[i].getElementsByTagName("td")[j];
                if (td) {
                    txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        found = true;
                        break;
                    }
                }
            }
            if (found) {
                tr[i].style.display = "";
            } else {
                tr[i].style.display = "none";
            }
        }
    }

    function confirmLogout() {
        var confirmed = confirm("Are you sure you want to exit?");
        if (confirmed) {
            window.location.href = "AdminLogin.jsp";
        }
    }

</script>
</body>
</html>
