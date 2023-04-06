<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manage Products</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
            width: 800px;
            margin-left: 950px;
            margin-top: -50px;
            display: flex;
            align-items: center;
        }

        .search_box input {
            padding: 9px;
            width: 250px;
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
            width: 210px;
            height: 80px;
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

        .add_product_btn {
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

        .add_product_btn:hover {
            background-color: #087576;
        }

        .main-body {
            margin-top: 50px;
            margin-left: 265px;
            width: 70%;
            padding: 1rem;
        }

        table {
            margin-left: 280px;
            margin-top: 10px;
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

        .del_product_btn {
            background-color: #CC0000;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 10px;
        }

        .del_product_btn:hover {
            background-color: #A30000;
        }

        .edit-btn {
            width: 90px;
            background-color: #8FCE00;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 10px;
        }

        .edit-btn:hover {
            background-color: #72A400;
        }

        .edit-form {
            width: 400px;
            margin-left: 1080px;
            margin-top: -530px;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
        }

        .edit-form label {
            margin-left: 30px;
        }

        .edit-form input {
            padding-left: 10px;
        }

        .edit-form h2 {
            margin-left: 30px;
        }

        .edit-form button {
            margin-bottom: 30px;
            border-radius: 10px;
            width: 80px;
            height: 40px;
            color: #ffffff;
            font-weight: bold;
            margin-top: 20px;
        }

        .save-btn {
            margin-left: 30px;
            background: #0b9394
        }

        .save-btn:hover {
            background: #087576
        }

        .cancel-btn {
            margin-left: 10px;
            background: #ABABAB;
            padding-left: -30px;
        }

        .cancel-btn:hover {
            background: #888888;
        }
    </style>
</head>

<body onload="loadProduct()">

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
        <div class="selected-icon">
            <i class='fa-solid fa-bag-shopping' style="margin-left: 15px; margin-top: 30px"></i><span
                style='display:inline-block; margin-left: 10px; margin-top: -100px; color: #ffffff;'>Manage Products</span>
        </div>
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
</div>

<div class="main-body">

    <div class="promo_card">
        <h1 style="margin-left:0px;">PRODUCT DETAILS</h1>
    </div>
    <div class="control-btn">
        <button class="add_product_btn" onclick="window.location.href = 'AddProduct.jsp'">Add New Product</button>

        <div class="search_box">
            <input type="text" placeholder="Search Here" id="searchBox" oninput="searchTable()">
            <i class="fa-sharp fa-solid fa-magnifying-glass"></i>
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
        <th class="border-right">Actions</th>
    </tr>
    </thead>
    <tbody id="productTable"></tbody>
</table>

<div class="edit-form" id="editProductModal" style="display:none">
    <h2 style="margin-bottom: 30px; padding-top: 30px">Edit Product</h2>
    <form id="editProductForm" action="${pageContext.request.contextPath}/editProduct" method="POST">

        <label for="productId">Product ID:</label>
        <input type="text" id="productId" name="productId"><br><br>

        <label for="productName" style="background: none; border: #959595;">Product Name:</label>
        <input type="text" id="productName" name="productName" style="border: 1px solid black; padding-left: 10px;">

        <label for="productPrice" style="background: none; border: #959595;">Product Price:</label>
        <input type="text" id="productPrice" name="productPrice" style="border: 1px solid black; padding-left: 10px;">

        <label for="productDescription" style="background: none; border: #959595;">Product Description:</label>
        <input type="text" id="productDescription" name="productDescription"
               style="border: 1px solid black; padding-left: 10px;">

        <label for="productCategory" style="background: none; border: #959595;">Category:</label>
        <input type="text" id="productCategory" name="productCategory"
               style="border: 1px solid black; padding-left: 10px;">

        <label for="productBrand" style="background: none; border: #959595;">Brand:</label>
        <input type="text" id="productBrand" name="productBrand" style="border: 1px solid black; padding-left: 10px;">

        <label for="productQuantity" style="background: none; border: #959595;">Quantity:</label>
        <input type="text" id="productQuantity" name="productQuantity"
               style="border: 1px solid black; padding-left: 10px;">

        <button type="submit" id="saveProductBtn" name="saveProductBtn" class="save-btn">Save</button>
        <button type="button" id="cancelProductBtn" class="cancel-btn">Cancel</button>
        <input type="hidden" name="message" value="${message}">
    </form>

</div>

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
                    actionsCell.innerHTML = '<div class="edit-btn"><a href="EditProducts.jsp?' + $.param(productData[i]) + '">Edit</a></div>  <button class="del_product_btn" data-id="' + productData[i].id + '">Delete</button>';

                }


                $(".del_product_btn").click(function () {
                    var id = $(this).data("id");
                    if (confirm("Are you sure you want to Delete this Product?")) {
                        $.ajax({
                            url: "http://localhost:8080/BB_REST_APP-1.0-SNAPSHOT/api/products/delete/" + id,
                            type: "DELETE",
                            success: function () {
                                // Remove the row from the table
                                $(this).closest("tr").remove();
                                // Reload the page
                                alert("Product Deleted.");
                                location.reload();
                            },
                            error: function () {
                                alert("Error Deleting Product.");
                            }
                        });
                    }
                });
            }

        };
        xhttp.open("GET", "http://localhost:8080/BB_REST_APP-1.0-SNAPSHOT/api/products", true);
        xhttp.send();
    }

    loadProduct();


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

    function confirmLogout() {
        var confirmed = confirm("Are you sure you want to exit?");
        if (confirmed) {
            window.location.href = "AdminLogin.jsp";
        }
    }
</script>

</body>
</html>
