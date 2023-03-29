<!DOCTYPE html>

<html lang="en">
<head>
    <script src="https://kit.fontawesome.com/e8fa2e31b4.js" crossorigin="anonymous"></script>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
            display: flex;
            align-items: center;
            margin: 0 24px;
        }
        .logo .menu-icon {
            color: #333;
            font-size: 24px;
            margin-right: 14px;
            cursor: pointer;
        }
        .logo .logo-name {
            color: #333;
            font-size: 22px;
            font-weight: 500;
        }

        .navbar-b{
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .dropdown{
            width: 130px;
            text-align: center;
            background-color: white;
            border-radius: 3px;
        }
        select{
            outline: none;
            border: none;
            background: none;
            padding: 7px 10px 7px 0px;
            color: #54B3B4;
            font-size: 18px;
            cursor: pointer;
        }
        select:hover{
            color: #333;
        }
        .search{
            width: 500px;
            background-color: white;
            height: 45px;
            border-radius: 45px;
            display: flex;
            margin-left: 200px;
            align-items: center;
            justify-content: space-between;
            padding: 15px;
        }
        .search input{
            width: 440px;
            border: none;
            outline: none;
            height: 40px;
        }
        .cart{
            display: flex;
            background-color: white;
            justify-content: space-between;
            margin-left: 350px;
            padding: 7px 10px;
            border-radius: 3px;
            width: 80px;
            font-size: 18px;
        }
        .cart p{
            height: 22px;
            width: 22px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 22px;
            background-color: #54B3B4;
            color: white;
        }

        nav .sidebar {
            position: fixed;
            top: 0;
            left: -100%;
            height: 100%;
            width: 260px;
            padding: 20px 0;
            background-color: #fff;
            box-shadow: 0 5px 1px rgba(0, 0, 0, 0.1);
            transition: all 0.4s ease;
        }
        nav.open .sidebar {
            left: 0;
        }
        .sidebar .sidebar-content {
            display: flex;
            height: 100%;
            flex-direction: column;
            justify-content: space-between;
            padding: 30px 16px;
        }
        .sidebar-content .list {
            list-style: none;
        }
        .list .nav-link {
            display: flex;
            align-items: center;
            margin: 8px 0;
            padding: 14px 12px;
            border-radius: 8px;
            text-decoration: none;
        }
        .lists .nav-link:hover {
            background-color: #DBF8F8;
        }
        .nav-link .icon {
            margin-right: 14px;
            font-size: 20px;
            color: #707070;
        }
        .nav-link .link {
            font-size: 16px;
            color: #707070;
            font-weight: 400;
        }
        .lists .nav-link:hover .icon,
        .lists .nav-link:hover .link {
            color: #fff;
        }
        .overlay {
            position: fixed;
            top: 0;
            left: -100%;
            height: 1000vh;
            width: 200%;
            opacity: 0;
            pointer-events: none;
            transition: all 0.4s ease;
            background: rgba(0, 0, 0, 0.3);
        }
        nav.open ~ .overlay {
            opacity: 1;
            left: 260px;
            pointer-events: auto;
        }




        :root{
            --bodyBack: #DBF8F8;
            --textColor: #1b2741;
            --starColor: #DBF8F8;
            --sectionBack: #f7f6f9;
        }
        *{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
            font-family: 'Raleway', sans-serif;
        }
        body{
            background-color:#DBF8F8;
            min-height: 100vh;
            display: grid;
            place-content: center;
        }
        .container{
            margin-left: 200px;
            width: 80vw;
            height:80vh;
            display: flex;
            flex-direction: column;
            justify-content: space-around;
        }
        .header{
            width: 100%;
            text-align: center;
        }
        .header h2{
            font-size: 2em;
            text-transform: uppercase;
            color: #0B9394;
        }
        .products{
            width: 100%;
            align-self: center;
            height: 70%;
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 40px;
        }
        .product{
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
        .product:hover{
            transform: translateY(-15px);
            box-shadow: 0 5px 10px rgba(0, 0, 0, .2);
        }
        .image{
            width:100%;
            height: 60%;
            display: grid;
            place-content: center;
        }
        .image img{
            width: 240px;
        }
        .namePrice{
            width: 100%;
            display: flex;
            justify-content: space-between;
        }
        .namePrice h3{
            font-size: 2em;
            text-transform: capitalize;
            color: #0B9394;
        }
        .namePrice span{
            font-size: 1.5em;
            color: #54B3B4;
        }
        .product p{
            font-size: 18px;
            line-height: 25px;
        }
        .stars svg{
            font-size: 1.3em;
            color: #DBF8F8;
        }
        .bay{
            position: absolute;
            bottom: 20px;
            right: 20px;
        }
        .bay button{
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
        .bay button:hover{
            transform: scale(1.1);
        }




    </style>
</head>
<body>
<nav>
    <div class="logo">
        <i class="bx bx-menu menu-icon"></i>
        <span class="logo-name">BumbleBee</span>
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
        <div class="cart"><i class="fa-solid fa-cart-shopping" style="color: #0b9394;"></i><p>0</p></div>
    </div>
    </div>

    <div class="sidebar">
        <div class="sidebar-content">
            <ul class="lists">
                <li class="list">
                    <a href="#" class="nav-link">
                        <i class="bx bx-home-alt icon"></i>
                        <span class="link">Dashboard</span>
                    </a>
                </li>
                <li class="list">
                    <a href="#" class="nav-link">
                        <i class="bx bx-bar-chart-alt-2 icon"></i>
                        <span class="link">Revenue</span>
                    </a>
                </li>
                <li class="list">
                    <a href="#" class="nav-link">
                        <i class="bx bx-bell icon"></i>
                        <span class="link">Notifications</span>
                    </a>
                </li>
                <li class="list">
                    <a href="#" class="nav-link">
                        <i class="bx bx-message-rounded icon"></i>
                        <span class="link">Messages</span>
                    </a>
                </li>
                <li class="list">
                    <a href="#" class="nav-link">
                        <i class="bx bx-pie-chart-alt-2 icon"></i>
                        <span class="link">Analytics</span>
                    </a>
                </li>
                <li class="list">
                    <a href="#" class="nav-link">
                        <i class="bx bx-heart icon"></i>
                        <span class="link">Likes</span>
                    </a>
                </li>
                <li class="list">
                    <a href="#" class="nav-link">
                        <i class="bx bx-folder-open icon"></i>
                        <span class="link">Files</span>
                    </a>
                </li>
            </ul>

            <div class="bottom-cotent">
                <li class="list">
                    <a href="#" class="nav-link">
                        <i class="bx bx-cog icon"></i>
                        <span class="link">Settings</span>
                    </a>
                </li>
                <li class="list">
                    <a href="#" class="nav-link">
                        <i class="bx bx-log-out icon"></i>
                        <span class="link">Logout</span>
                    </a>
                </li>
            </div>
        </div>
    </div>
</nav>

<div class="container">

    <div class="header">
        <h2>ALL ITEMS</h2>
    </div>

    <div class="products">

        <div class="product">
            <div class="image">
                <img src="Images/Products/product1.jpg" alt="product1">
            </div>
            <div class="namePrice">
                <h3>Headset</h3>
                <span>$ 15.99</span>
            </div>
            <p>Headphones Type Closed dynamic Driver Diameter 40 mm Frequency</p>
            <div class="stars">
                <i class="fa-solid fa-star" style="color:#54B3B4;"></i>
                <i class="fa-solid fa-star" style="color:#54B3B4;"></i>
                <i class="fa-solid fa-star" style="color:#54B3B4;"></i>
                <i class="fa-solid fa-star" style="color:#54B3B4;"></i>
                <i class="fa-regular fa-star" style="color:#54B3B4;"></i>
            </div>
            <div class="bay">
                <button>  Buy now </button>
            </div>
        </div>

        <div class="product">
            <div class="image">
                <img src="Images/Products/product2.jpg" alt="product2">
            </div>
            <div class="namePrice">
                <h3>Camera</h3>
                <span>$ 120.99</span>
            </div>
            <p>Integrated WiFi - control camera from smart device</p>
            <div class="stars">
                <i class="fa-solid fa-star" style="color:#54B3B4;"></i>
                <i class="fa-solid fa-star" style="color:#54B3B4;"></i>
                <i class="fa-solid fa-star" style="color:#54B3B4;"></i>
                <i class="fa-solid fa-star" style="color:#54B3B4;"></i>
                <i class="fa-regular fa-star" style="color:#54B3B4;"></i>
            </div>
            <div class="bay">
                <button> Buy now </button>
            </div>
        </div>

        <div class="product">
            <div class="image">
                <img src="Images/Products/product3.jpg" alt="product3">
            </div>
            <div class="namePrice">
                <h3>Mobile</h3>
                <span>$ 150.99</span>
            </div>
            <p>Galaxy Z Flip is equipped with 5G* and our fastest processor to date.</p>
            <div class="stars">
                <i class="fa-solid fa-star" style="color:#54B3B4;"></i>
                <i class="fa-solid fa-star" style="color:#54B3B4;"></i>
                <i class="fa-solid fa-star" style="color:#54B3B4;"></i>
                <i class="fa-solid fa-star" style="color:#54B3B4;"></i>
                <i class="fa-solid fa-star" style="color:#54B3B4;"></i>
            </div>
            <div class="bay">
                <button> Buy now </button>
            </div>
        </div>

        <div class="product">
            <div class="image">
                <img src="Images/Products/product4.jpg" alt="product4">
            </div>
            <div class="namePrice">
                <h3>Laptop</h3>
                <span>$ 20.99</span>
            </div>
            <p>Lenovo ThinkBook 15 G3 Ryzen 3 15.6" FHD Thin and Light Laptop </p>
            <div class="stars">
                <i class="fa-solid fa-star" style="color:#54B3B4;"></i>
                <i class="fa-solid fa-star" style="color:#54B3B4;"></i>
                <i class="fa-solid fa-star" style="color:#54B3B4;"></i>
                <i class="fa-solid fa-star" style="color:#54B3B4;"></i>
                <i class="fa-regular fa-star" style="color:#54B3B4;"></i>
            </div>
            <div class="bay">
                <button> Buy now </button>
            </div>
        </div>

        <div class="product">
            <div class="image">
                <img src="Images/Products/product1.jpg" alt="product1">
            </div>
            <div class="namePrice">
                <h3>Headset</h3>
                <span>$ 15.99</span>
            </div>
            <p>Headphones Type Closed dynamic Driver Diameter 40 mm Frequency</p>
            <div class="stars">
                <i class="fa-solid fa-star" style="color:#54B3B4;"></i>
                <i class="fa-solid fa-star" style="color:#54B3B4;"></i>
                <i class="fa-solid fa-star" style="color:#54B3B4;"></i>
                <i class="fa-solid fa-star" style="color:#54B3B4;"></i>
                <i class="fa-solid fa-star" style="color:#54B3B4;"></i>
            </div>
            <div class="bay">
                <button>  Buy now </button>
            </div>
        </div>

        <div class="product">
            <div class="image">
                <img src="Images/Products/product1.jpg" alt="product1">
            </div>
            <div class="namePrice">
                <h3>Headset</h3>
                <span>$ 15.99</span>
            </div>
            <p>Headphones Type Closed dynamic Driver Diameter 40 mm Frequency</p>
            <div class="stars">
                <i class="fa-solid fa-star" style="color:#54B3B4;"></i>
                <i class="fa-solid fa-star" style="color:#54B3B4;"></i>
                <i class="fa-solid fa-star" style="color:#54B3B4;"></i>
                <i class="fa-solid fa-star" style="color:#54B3B4;"></i>
                <i class="fa-solid fa-star" style="color:#54B3B4;"></i>
            </div>
            <div class="bay">
                <button>  Buy now </button>
            </div>
        </div>


    </div>
</div>



<section class="overlay"></section>

<script>
    const navBar = document.querySelector("nav"),
        menuBtns = document.querySelectorAll(".menu-icon"),
        overlay = document.querySelector(".overlay");

    menuBtns.forEach((menuBtn) => {
        menuBtn.addEventListener("click", () => {
            navBar.classList.toggle("open");
        });
    });

    overlay.addEventListener("click", () => {
        navBar.classList.remove("open");
    });
</script>
</body>
</html>

