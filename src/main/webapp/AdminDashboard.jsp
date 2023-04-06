<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>Admin Dashboard</title>
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
            margin-left: 110px;
            display: flex;
            align-items: center;
        }

        .search_box input {
            padding: 9px;
            width: 250px;
            background: #DBF8F8;
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

        .selected-icon {
            color: #ffffff;
            background: #0b9394;
            margin-left: 10px;
            border-radius: 10px;
            width: 200px;
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

        .sidebarnew a:hover {
            background: #EDFBFB;
            padding: 6px 4px 6px 12px;
            border-radius: 10px;
        }

        .main-body {
            margin-left: 250px;
            width: 70%;
            padding: 1rem;
        }

        .promo_card {
            width: 1200px;
            color: #fff;
            margin-top: 10px;
            border-radius: 8px;
            padding: 0.5rem 1rem 1rem 3rem;
            background: #0B9394;
        }

        .promo_card h1, .promo_card span, button {
            margin: 5px;
        }

        .promo_card button {
            margin-top: 10px;
            display: block;
            padding: 6px 12px;
            border-radius: 5px;
            cursor: pointer;
        }

        table {
            margin-left: 270px;
            width: 1200px;
            background: #fff;
            padding: 1rem;
            margin-top: 50px;
            text-align: left;
            border-radius: 10px;
        }

        table td, th {
            padding: 0.2rem 0.8rem;
        }

        table th {
            font-size: 15px;
        }

        table td {
            font-size: 13px;
            color: #0B9394;
        }
    </style>
</head>
<body>
<header class="header">
    <div class="logo">
        <img src="Images/logo.png" alt="logo">
        <div class="search_box">
            <input type="text" placeholder="Search Here" id="searchBox" oninput="searchTable()">
            <i class="fa-sharp fa-solid fa-magnifying-glass"></i>
        </div>
    </div>

    <div class="header-icons">
        <span style='color: #0B9394;'><i class="fas fa-bell"></i></span>
        <div class="account">
            <a href="AdminProfile.jsp"> <img src="Images/admin-profile.jpg" alt="admin-img"></a>
            <h4><%=session.getAttribute("username")%>
            </h4>
        </div>
    </div>
</header>
<div class="container">
    <div class="sidebarnew">
        <span style="color: #9DD3D4">Menu</span>
        <div class="selected-icon">
            <i class='fa fa-home' style="margin-left: 20px; margin-top: 30px"></i><span
                style='display:inline-block; margin-left: 10px; color: #ffffff;'>Home</span>
        </div>
        <a href="ManageProducts.jsp"><i class='fa-solid fa-bag-shopping'></i><span
                style='display:inline-block; margin-left: 10px;'>Manage Products</span></a>
        <a href="ManageBrands.jsp"><i class="fa-solid fa-ring"></i><span
                style='display:inline-block; margin-left: 10px;'>Manage Brands</span></a>
        <a href="ManageCategories.jsp"><i class='fa-solid fa-store'></i><span
                style='display:inline-block; margin-left: 10px;'>Manage Category</span></a>
        <a href="ViewUsers.jsp"><i class='fa-solid fa-people-roof'></i><span
                style='display:inline-block; margin-left: 10px;'>Manage Users</span></a>

        <div class="bottom-icon">
            <a href="#" onclick="confirmLogout();"><i class='fa-solid fa-right-from-bracket'></i><span
                    style='display:inline-block; margin-left: 10px;'>Logout</span></a>
        </div>
    </div>

    <div class="main-body">
        <h2>DASHBOARD</h2>
        <div class="promo_card">
            <h1>WELCOME TO BUMBLE BEE</h1>
            <span>Buy First | Pay Later</span>
            <button>Learn More</button>
        </div>
    </div>
</div>
<table>
    <thead>
    <tr class="border-bottom border-top">
        <th class="border-right">ID</th>
        <th class="border-right">Name</th>
        <th class="border-right">Price</th>
        <th class="border-right">Description</th>
        <th class="border-right">Category</th>
        <th class="border-right">Brand</th>
        <th class="border-right">Quantity</th>
    </tr>
    </thead>
    <tbody id="productTable"></tbody>
</table>


<script>

    function loadProduct() {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var productData = JSON.parse(this.responseText);
                var productTable = document.getElementById("productTable");
                productTable.innerHTML = "";
                for (var i = 0; i < productData.length; i++) {
                    var row = productTable.insertRow(i);
                    var idCell = row.insertCell(0);
                    var nameCell = row.insertCell(1);
                    var priceCell = row.insertCell(2);
                    var descriptionCell = row.insertCell(3);
                    var categoryCell = row.insertCell(4);
                    var brandCell = row.insertCell(5);
                    var quantityCell = row.insertCell(6);
                    var actionsCell = row.insertCell(7);
                    idCell.innerHTML = productData[i].id;
                    nameCell.innerHTML = productData[i].name;
                    priceCell.innerHTML = productData[i].price;
                    descriptionCell.innerHTML = productData[i].description;
                    categoryCell.innerHTML = productData[i].category;
                    brandCell.innerHTML = productData[i].brand;
                    quantityCell.innerHTML = productData[i].quantity;

                }


            }

        };
        xhttp.open("GET", "http://localhost:8080/BB_REST_APP-1.0-SNAPSHOT/api/products", true);
        xhttp.send();
    }

    loadProduct();


    const url = 'http://localhost:8080/BB_REST_APP-1.0-SNAPSHOT/api/customer';
    const customerData = document.getElementById('customerData');
    const loadButton = document.getElementById('idLoad');

    var username = "<%=session.getAttribute("username")%>";
    alert("Welcome, " + username + "!");

    loadButton.addEventListener('click', function () {
        fetch(url)
            .then(response => response.json())
            .then(data => {
                try {
                    customerData.value = JSON.stringify(data);
                    document.getElementById('customerForm').submit();
                } catch (error) {
                    console.error(error);
                }
            })
            .catch(error => console.error(error));
    });

    var username = "<%=session.getAttribute("username")%>";
    alert("Welcome, " + username + "!");


    function confirmLogout() {
        var confirmed = confirm("Are you sure you want to exit?");
        if (confirmed) {
            window.location.href = "AdminLogin.jsp";
        }
    }

    function searchTable() {
        var input, filter, table, tr, td, i, txtValue;
        input = document.getElementById("searchBox");
        filter = input.value.toUpperCase();
        table = document.getElementById("productTable");
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
</script>


</body>
</html>

