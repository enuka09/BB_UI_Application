<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Manage Category</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
            margin-left: 480px;
            margin-top: -50px;
            display: flex;
            align-items: center;
        }
        .search_box input{
            padding: 9px;
            width: 250px;
            background: #ffffff;
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
            width: 210px;
            height: 80px;
        }

        .sidebarnew a:hover {
            border-radius: 10px;
            background: #EDFBFB;
            padding: 6px 4px 6px 12px;
        }

        .control-btn{
            margin-top: 20px;
            margin-left: -10px;
        }

        .add_category_btn {
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

        .add_category_btn:hover {
            background-color: #087576;
        }

        .main-body{
            margin-top: 50px;
            margin-left: 265px;
            width: 70%;
            padding: 1rem;
        }


        table {
            margin-left: 280px;
            margin-top: 10px;
            width: 50%;
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

        .del_category_btn {
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

        .del_category_btn:hover {
            background-color: #A30000;
        }

        .edit_category_btn {
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

        .edit_category_btn:hover {
            background-color: #72A400;
        }

        .edit-form{
            width: 400px;
            margin-left: 1080px;
            margin-top: -530px;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
        }

        .edit-form label{
            margin-left: 30px;
        }
        .edit-form input{
            padding-left: 10px;
        }

        .edit-form h2{
            margin-left: 30px;
        }

        .edit-form button{
            margin-bottom: 30px;
            border-radius: 10px;
            width: 80px;
            height: 40px;
            color: #ffffff;
            font-weight: bold;
            margin-top: 20px;
        }

        .save-btn{
            margin-left: 30px;
            background: #0b9394
        }

        .save-btn:hover{
            background: #087576
        }

        .cancel-btn{
            margin-left: 10px;
            background: #ABABAB;
            padding-left: -30px;
        }
        .cancel-btn:hover{
            background: #888888;
        }



    </style>
</head>
<body onload="loadCategory()">

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
        <a href="ManageProducts.jsp"><i class='fa-solid fa-bag-shopping'></i><span style='display:inline-block; margin-left: 10px;'>Manage Products</span></a>
        <a href="ManageBrands.jsp"><i class="fa-solid fa-ring"></i><span style='display:inline-block; margin-left: 10px;'>Manage Brands</span></a>
        <div class="selected-icon">
            <i class='fa-solid fa-store' style="margin-left: 15px; margin-top: 30px"></i><span style='display:inline-block; margin-left: 10px; margin-top: -100px; color: #ffffff;'>Manage Category</span>
        </div>
        <a href="ViewUsers.jsp"><i class='fa-solid fa-people-roof'></i><span style='display:inline-block; margin-left: 10px;'>Manage Users</span></a>


        <div class="bottom-icon">
            <a href="#profile"><i class="fa-solid fa-right-from-bracket"></i><span style='display:inline-block; margin-left: 10px;'>Logout</span></a>
        </div>
    </div>
</div>

<div class="main-body">

    <div class="promo_card">
        <h1 style="margin-left:0px;">CATEGORY DETAILS</h1>
    </div>
    <div class="control-btn">
        <button class="add_category_btn" onclick="window.location.href = 'AddCategory.jsp'">Add New Category</button>

        <div class="search_box">
            <input type="text" placeholder="Search Here">
            <i class="fa-sharp fa-solid fa-magnifying-glass"></i>
        </div>
    </div>
</div>

<table>
    <thead>
    <tr class="border-bottom border-top">
        <th class="border-right">Category ID</th>
        <th class="border-right">Category Name</th>
        <th class="border-right">Actions</th>
    </tr>
    </thead>
    <tbody id="categoryTable"></tbody>
</table>

<div class="edit-form" id="editCategoryModal" style="display:none">
    <h2 style="margin-bottom: 30px; padding-top: 30px">Edit Category</h2>
    <form id="editCategoryForm" action="${pageContext.request.contextPath}/editCategory" method="POST">
        <label for="categoryId">Category ID:</label>
        <input type="text" id="categoryId" name="categoryId"><br><br>
        <label for="categoryName" style="background: none; border: #959595;">Category Name:</label>
        <input type="text" id="categoryName" name="categoryName" style="border: 1px solid black; padding-left: 10px;">
        <button type="submit" id="saveCategoryBtn" name="saveCategoryBtn" class="save-btn">Save</button>
        <button type="button" id="cancelCategoryBtn" class="cancel-btn">Cancel</button>
    </form>
</div>

<script>
    function loadCategory() {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                var categoryData = JSON.parse(this.responseText);
                var categoryTable = document.getElementById("categoryTable");
                categoryTable.innerHTML = "";
                for (var i = 0; i < categoryData.length; i++) {
                    var row = categoryTable.insertRow(i);
                    var idCell = row.insertCell(0);
                    var nameCell = row.insertCell(1);
                    var actionsCell = row.insertCell(2);
                    idCell.innerHTML = categoryData[i].id;
                    nameCell.innerHTML = categoryData[i].name;
                    actionsCell.innerHTML = '<button class="edit_category_btn" data-id="' + categoryData[i].id + '">Edit</button> <button class="del_category_btn" data-id="' + categoryData[i].id + '">Delete</button>' ;
                }
                $(".edit_category_btn").click(function() {
                    var id = $(this).data("id");
                    var name = $(this).closest("tr").find("td:eq(1)").text();
                    $("#categoryId").val(id);
                    $("#categoryName").val(name);
                    $("#editCategoryModal").show();
                });

                $(".del_category_btn").click(function() {
                    var id = $(this).data("id");
                    if (confirm("Are you sure you want to Delete this Category?")) {
                        $.ajax({
                            url: "http://localhost:8080/BB_REST_APP-1.0-SNAPSHOT/api/categories/delete/" + id,
                            type: "DELETE",
                            success: function() {
                                // Remove the row from the table
                                $(this).closest("tr").remove();
                                // Reload the page
                                alert("Category Deleted.");
                                location.reload();
                            },
                            error: function() {
                                alert("Error Deleting category.");
                            }
                        });
                    }
                });
            }
        };
        xhttp.open("GET", "http://localhost:8080/BB_REST_APP-1.0-SNAPSHOT/api/categories", true);
        xhttp.send();
    }

    $("#cancelCategoryBtn").click(function() {
        $("#editCategoryModal").hide();
    });

</script>

</body>
</html>
