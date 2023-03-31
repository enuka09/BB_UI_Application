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
            width: 200px;
            height: 150px;
            display: flex;

            margin: 0 35px;
        }


        .navbar-b{
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .dropdown{
            margin-left: 0px;
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
            color: #333;
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
            margin-left: 220px;
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
            margin-left: 290px;
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

        .sidebar {
            position: fixed;
            top: 70px;
            left: 0;
            height: 100%;
            width: 250px;
            background-color:#54B3B4;
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
            margin-left: 250px;
            width: 80vw;
            height:80vh;
            display: flex;
            flex-direction: column;
            justify-content: space-around;
        }
        .header{
            background-color: #54B3B4;
            width: 100%;

        }
        .header h2{
            font-size: 2em;
            text-transform: uppercase;
            text-align: center;
            color: #ffffff;
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
        <div class="cart"><i class="fa-solid fa-cart-shopping" style="color: #0b9394;"></i><p>0</p></div>
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
                        &nbsp<i class="fa-regular fa-user"></i>&nbsp&nbsp&nbsp&nbsp
                        <span class="link">Profile</span>
                    </a>
                </li>
                <li class="list">
                    <a href="#" class="nav-link">
                        <i class="bx bx-bar-chart-alt-2 icon"></i>
                        <span class="link">Purchases</span>
                    </a>
                </li>
                <li class="list">
                    <a href="#" class="nav-link">
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
                        <a href="#" class="nav-link">
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

    <div class="products">

        <div class="product">
            <div class="image">
                <img src="Images/Products/product1.jpg" alt="product1">
            </div>
            <div class="namePrice">
                <h3>Headset</h3>
                <span>LKR 6,000</span>
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
                <span>LKR 10,000</span>
            </div>
            <p>Integrated WiFi - control camera from smart device</p>
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
                <img src="Images/Products/product3.jpg" alt="product3">
            </div>
            <div class="namePrice">
                <h3>Helmet</h3>
                <span>LKR 5,500</span>
            </div>
            <p>Multi-Purpose Half Helmet for Men, Women (Sage Square)</p>
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
                <img src="Images/Products/product7.jpg" alt="product4">
            </div>
            <div class="namePrice">
                <h3>Mouse</h3>
                <span>LKR 3,000</span>
            </div>
            <p>Kensington Pro Fit Wireless Mobile Mouse. 2.4GHz wireless</p>
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
                <img src="Images/Products/product4.jpg" alt="product4">
            </div>
            <div class="namePrice">
                <h3>Ear Buds</h3>
                <span>LKR 11,000</span>
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
                <img src="Images/Products/product5.jpg" alt="product5">
            </div>
            <div class="namePrice">
                <h3>Watch</h3>
                <span>LKR 12,000</span>
            </div>
            <p>Series 6 44MM Gold Aluminum GPS, Pink Sand Sport Band</p>
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
                <img src="Images/Products/product6.jpg" alt="product6">
            </div>
            <div class="namePrice">
                <h3>Lamp</h3>
                <span>LKR 4,000</span>
            </div>
            <p>Moffatt 95040 Task Lamp Incandescent Type Quick Coupler</p>
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
                <img src="Images/Products/product9.jpg" alt="product5">
            </div>
            <div class="namePrice">
                <h3>Sunglass</h3>
                <span>LKR 9,000</span>
            </div>
            <p>Fossil Non-Polarized Round Female's Sunglasses (Gold)</p>
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
                <img src="Images/Products/product8.jpg" alt="product8">
            </div>
            <div class="namePrice">
                <h3>Mic</h3>
                <span>LKR 7,000</span>
            </div>
            <p>Designed for home audio recording, music and sound projects</p>
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

</body>
</html>

