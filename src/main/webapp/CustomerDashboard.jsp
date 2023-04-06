<!DOCTYPE html>
<html lang="en">
<head>
    <title>Home Page</title>
    <script src="https://kit.fontawesome.com/e8fa2e31b4.js" crossorigin="anonymous"></script>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"/>

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

        .product-card {
            background: #F4FCFC;
            border: none;
            box-shadow: 0px 0px 10px #cccccc;
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 50px;

        }

        .product-card:hover {
            transform: translateY(-15px);
            box-shadow: 0 5px 10px rgba(0, 0, 0, .2);
        }

        .price {
            font-weight: bold;
            color: #54B3B4;
            margin-top: 10px;
        }

        .buy-button {
            background-color: #0B9394;
            color: #fff;
            border: none;
            padding: 5px 30px;
            margin-top: 10px;
            border-radius: 5px;
            cursor: pointer;
            width: 100px;
            height: 40px;
        }

        .buy-button:hover {
            background-color: #087576;
            transform: scale(1.1);

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

        .dropdown {
            margin-left: 0px;
            width: 130px;
            text-align: center;
            background-color: white;
            border-radius: 3px;
        }

        select {
            outline: none;
            border: none;
            background: none;
            padding: 7px 10px 7px 0px;
            color: #333;
            font-size: 18px;
            cursor: pointer;
        }

        select:hover {
            color: #333;
        }

        .search {
            width: 500px;
            background-color: white;
            height: 45px;
            border-radius: 45px;
            display: flex;
            margin-left: 220px;
            align-items: center;
            justify-content: space-between;
            padding: 15px;
        }

        .search input {
            width: 440px;
            border: none;
            outline: none;
            height: 40px;
        }

        .profile {
            display: flex;
            justify-content: space-between;
            margin-left: 250px;
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
            margin-left: 150px;

        }

        .header h2 {
            font-size: 2em;
            text-transform: uppercase;
            text-align: center;
            color: #ffffff;
        }

        .products {
            width: 100%;
            align-self: center;
            height: 70%;
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 40px;
        }

        .product {
            position: relative;
            background-color: #fff;
            width: 350px;
            height: 100%;
            box-shadow: 0 5px 20px rgba(0, 0, 0, .3);
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            padding: 20px 20px 40px;
            border-radius: 10px;
            transition: .3s;
        }

        .product:hover {
            transform: translateY(-15px);
            box-shadow: 0 5px 10px rgba(0, 0, 0, .2);
        }

        .image {
            width: 100%;
            height: 60%;
            display: grid;
            place-content: center;
        }

        .image img {
            width: 240px;
        }

        .namePrice {
            width: 100%;
            display: flex;
            justify-content: space-between;
        }

        .namePrice h3 {
            font-size: 2em;
            text-transform: capitalize;
            color: #0B9394;
        }

        .namePrice span {
            font-size: 1.5em;
            color: #54B3B4;
        }

        .product p {
            font-size: 18px;
            line-height: 25px;
        }

        .stars svg {
            font-size: 1.3em;
            color: #DBF8F8;
        }

        .bay {
            position: absolute;
            bottom: 20px;
            right: 20px;
        }

        .bay button {
            padding: 10px 20px;
            border-radius: 7px;
            border: none;
            background-color: #0B9394;
            color: var(--sectionBack);
            font-size: 18px;
            text-transform: capitalize;
            cursor: pointer;
            transition: .5s;
        }
    </style>
</head>
<body>
<nav>
    <div class="logo">
        <img src="Images/logo-front.png">
    </div>

    <div class="navbar-b">
        <div class="dropdown">
            <select name="">
                <option value="1">Categories</option>
                <option value="2">New</option>
                <option value="3">Imported</option>
                <option value="4">Local</option>
            </select>
        </div>
        <div class="search">
            <input type="search" placeholder="Search...">
            <i class="fa-solid fa-magnifying-glass" style="color: #0b9394;"></i>
        </div>
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
                    <a href="#" class="nav-link">
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
                <li class="list">
                    <a href="CustomerLoanDetails.jsp" class="nav-link">
                        &nbsp<i class="fa-solid fa-dollar-sign"></i>&nbsp&nbsp&nbsp&nbsp
                        <span class="link">Loan Details</span>
                    </a>
                </li>
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
        <h2>ALL ITEMS</h2>
    </div>
</div>

<div class="grid-container">
    <!-- Repeat this product card for each product in your dataset -->
    <div class="product-cards left"></div>
    <div class="product-cards right"></div>
</div>

<div id="buyModal" style="display:none;">
    <p>Are you sure you want to buy this?</p>
</div>

<script>

    function loadProducts() {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var productData = JSON.parse(this.responseText);
                var productCardsLeftContainer = document.querySelector(".product-cards.left");
                var productCardsRightContainer = document.querySelector(".product-cards.right");

                for (var i = 0; i < productData.length; i++) {
                    var productCard = document.createElement("div");
                    '<product-code>'
                    productCard.className = "product-card";
                    productCard.style.margin = "10px";
                    productCard.innerHTML = '<h2>' + productData[i].name + '</h2>' +
                        '<p>' + productData[i].description + '</p>' +
                        '<p class="price">LKR&nbsp;' + productData[i].price + '</p>' +
                        '<p style="margin-top: 10px;">In stock:' + productData[i].quantity + '</p>' +
                        '<p style="display: none; margin-top: 10px;" class="id">' + productData[i].id + '</p>' +
                        '<button class="buy-button" data-name="' + productData[i].name + '" data-price="' + productData[i].price + '" data-quantity="' + productData[i].quantity + '" data-id="' + productData[i].id + '" onclick="showBuyModal(this)">Buy</button>';

                    if (i % 2 == 0) {
                        productCardsLeftContainer.appendChild(productCard);
                    } else {
                        productCardsRightContainer.appendChild(productCard);
                    }
                }
            }
        };
        xhttp.open("GET", "http://localhost:8080/BB_REST_APP-1.0-SNAPSHOT/api/products", true);
        xhttp.send();
    }

    loadProducts();

    var username = "<%=session.getAttribute("username")%>";
   alert("Welcome, " + username + "!");

    function showBuyModal(button) {
        var product_id = button.getAttribute('data-id');
        var product_name = button.getAttribute('data-name');
        var product_price = button.getAttribute('data-price');
        var loan_balance = 15000 - product_price;
        var installment_1 = product_price / 3;
        var installment_2 = product_price / 3;
        var installment_3 = product_price / 3;
        var buyModal = document.getElementById('buyModal');
        buyModal.style.display = 'block';
        // Prompt the user to confirm purchase
        var confirmPurchase = confirm("Purchase can be done using the Loan");
        if (confirmPurchase) {
            // Call the backend resource with the retrieved data and the username
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function () {
                if (this.readyState == 4 && this.status == 201) {
                    // The purchase was successfully added to the database
                    alert('Product is Purchased');
                }
            };
            xhttp.open('POST', 'http://localhost:8080/BB_REST_APP-1.0-SNAPSHOT/api/purchases', true);
            xhttp.setRequestHeader('Content-Type', 'application/json');
            var purchase = {
                product_id: product_id,
                cus_username: username,
                product_name: product_name,
                product_price: product_price,
                loan_balance: loan_balance,
                installment_1: installment_1,
                installment_2: installment_2,
                installment_3: installment_3
            };
            xhttp.send(JSON.stringify(purchase));
        }
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