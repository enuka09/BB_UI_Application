<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Manage Products</title>
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

    ---

    body {
      background-color: #f2f2f2;
      font-family: Arial, sans-serif;
    }

    .main-body{
      margin-top: 100px;
      margin-left: 550px;
    }

    .container2 {
      /*margin: 30px auto;*/
      margin-left: 550px;
      margin-top: 50px;
      max-width: 600px;
      padding: 20px;
      background-color: #ffffff;
      border-radius: 5px;
      box-shadow: 0px 0px 10px #cccccc;
    }

    .data-item{
      padding-top: 30px;
      padding-left: 30px;
    }

    label {
      display: inline-block;
      width: 150px;
      margin-bottom: 10px;
      font-weight: bold;
    }
    input[type="text"] {
      display: inline-block;
      width: 300px;
      padding: 5px;
      margin-bottom: 10px;
      border-radius: 5px;
      border: 1px solid #cccccc;
      box-sizing: border-box;
    }
    .save-btn, .cancel-btn {
      display: inline-block;
      padding: 10px;
      background-color: #4CAF50;
      color: #ffffff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      margin-top: 10px;
      margin-right: 10px;
      width: 100px;

    }
    .cancel-btn {
      background-color: #f44336;
    }
    .save-btn:hover, .cancel-btn:hover {
      opacity: 0.8;
    }
  </style>
</head>
<body>
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
      <i class='fa-solid fa-bag-shopping' style="margin-left: 15px; margin-top: 30px"></i><span style='display:inline-block; margin-left: 10px; margin-top: -100px; color: #ffffff;'>Manage Products</span>
    </div>
    <a href="ManageBrands.jsp"><i class="fa-solid fa-ring"></i><span style='display:inline-block; margin-left: 10px;'>Manage Brands</span></a>
    <a href="ManageCategories.jsp"><i class='fa-solid fa-store'></i><span style='display:inline-block; margin-left: 10px;'>Manage Category</span></a>
    <a href="ViewUsers.jsp"><i class='fa-solid fa-people-roof'></i><span style='display:inline-block; margin-left: 10px;'>Manage Users</span></a>
    <div class="bottom-icon">
      <a href="#profile"><i class="fa-solid fa-right-from-bracket"></i><span style='display:inline-block; margin-left: 10px;'>Logout</span></a>
    </div>
  </div>
</div>

<div class="main-body">
  <div class="promo_card">
    <h2>Edit Product</h2>
  </div>
</div>
<div class="container2">

  <form id="editCategoryForm" action="${pageContext.request.contextPath}/editProduct" method="POST">
    <div class="data-item">
      <label for="productId">Product ID:</label>
      <input type="text" id="productId" name="productId" value="${param.id}" readonly style="background: #E4E4E4";><br><br>

      <label for="productName">Product Name:</label>
      <input type="text" id="productName" name="productName" value="${param.name}">

      <label for="productPrice">Price:</label>
      <input type="text" id="productPrice" name="productPrice" value="${param.price}">

      <label for="productDescription">Description:</label>
      <input type="text" id="productDescription" name="productDescription" value="${param.description}">

      <label for="productCategory">Category:</label>
      <input type="text" id="productCategory" name="productCategory" value="${param.category}">

      <label for="productBrand">Brand:</label>
      <input type="text" id="productBrand" name="productBrand" value="${param.brand}">

      <label for="productQuantity">Quantity:</label>
      <input type="text" id="productQuantity" name="productQuantity" value="${param.quantity}"><br><br>

      <button type="submit" id="saveCategoryBtn" name="saveCategoryBtn" class="save-btn">Save</button>
      <button type="button" id="cancelProductBtn" class="cancel-btn">Cancel</button>
      <input type="hidden" name="message" value="${message}">
    </div>
  </form>
</div>

<script>
  $("#cancelProductBtn").click(function() {
    window.history.back();
  });
</script>
</body>
</html>
