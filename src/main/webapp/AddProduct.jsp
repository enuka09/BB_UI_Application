<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Add New Product</title>
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

    .main-body{
      margin-top: 50px;
      margin-left: 480px;
      width: 70%;
      padding: 1rem;
    }

    h1 {
      text-align: center;
      margin: 30px 0;
    }

    #errorMessage {
      margin-top: 30px;
      margin-left: 400px;
      border: 2px solid red;
      padding: 10px;
      margin-bottom: 20px;
      display: none;
      width: 50%;
      text-align: center;
      border-radius: 10px;
    }

    #errorMessage p {
      font-size: 16px;
      font-weight: bold;
      margin: 0;
    }

     .container2 {
       width: 35%;
       margin-left: 500px;
       padding: 20px;
       background-color: #fff;
       box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
       border-radius: 5px;
       margin-bottom: 30px;
     }
     .form{
       margin-left: 20px;
     }
    label {
      display: block;
      font-weight: bold;
      margin-bottom: 5px;
    }
    input[type="text"],
    select {
      display: block;
      width: 450px;
      padding: 5px;
      border-radius: 3px;
      border: 1px solid #ccc;
      margin-bottom: 10px;
    }
    .button-container {
      margin-top: 10px;  padding-bottom: 10px;
      text-align: justify;
    }
    .button-container button,
    .button-container input[type="submit"] {
      padding: 10px;
      border-radius: 5px;
      border: none;
      width: 220px;
      background-color: #4CAF50;
      color: #fff;
      cursor: pointer;
      margin-bottom: -30px;
    }

    .back-button{
      margin-top: 30px;
    }

    .add-button{
      margin-right: 10px;
    }

    .add-button:hover{
      /*background-color: #138922;*/
      background-color: #A30000;
    }

    .button-container button.back-button {
      background-color: #f44336;
    }
    .button-container button.back-button:hover{
      background-color: #A30000;
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
    <h2>Add New Product</h2>
  </div>
</div>

<div class="container2">
  <form class="form" action="${pageContext.request.contextPath}/insertProduct" method="post" onsubmit="return validateForm()">
    <label for="productId">Product ID:</label>
    <input type="text" id="productId" name="productId"><br>

    <label for="productName">Product Name:</label>
    <input type="text" id="productName" name="productName"><br>

    <label for="productPrice">Price:</label>
    <input type="text" id="productPrice" name="productPrice"><br>

    <label for="productDescription">Product Description:</label>
    <input type="text" id="productDescription" name="productDescription"><br>

    <label for="productCategory">Category:</label>
    <select id="productCategory" name="productCategory"></select><br>

    <label for="productBrand">Brand:</label>
    <select id="productBrand" name="productBrand"></select><br>

    <label for="productQuantity">Quantity:</label>
    <input type="text" id="productQuantity" name="productQuantity">

    <div class="button-container">
      <input class="add-button" type="submit" value="Insert Product">
      <button class="back-button" onclick="window.location.href = 'ManageProducts.jsp'; return false;">Back</button>
    </div>
    <input type="hidden" name="message" value="${message}">
  </form>
</div>
<div id="errorMessage" style="display:none;">
  <p>Please fill in all fields.</p>
</div>
<script>
  function validateForm() {
    var productId = document.getElementById("productId").value;
    var productName = document.getElementById("productName").value;
    if (productId == "" || productName == "" ) {
      var errorMessage = document.getElementById("errorMessage");
      errorMessage.style.display = "block";
      return false;
    } else {
      document.getElementById("errorMessage").style.display = "none";
      return true;
    }
  }
  window.onload = function() {
    var message = "${message}";
    if (message) {
      alert(message);
    }
  }

  const productCategoryDropdown = document.getElementById('productCategory');

  fetch('http://localhost:8080/BB_REST_APP-1.0-SNAPSHOT/api/categories')
          .then(response => response.json())
          .then(data => {
            data.forEach(category => {
              const option = document.createElement('option');
              option.value = category.name;
              option.text = category.name;
              productCategoryDropdown.appendChild(option);
            });
          });

  const productBrandDropdown = document.getElementById('productBrand');

  fetch('http://localhost:8080/BB_REST_APP-1.0-SNAPSHOT/api/brands')
          .then(response => response.json())
          .then(data => {
            data.forEach(brand => {
              const option = document.createElement('option');
              option.value = brand.name;
              option.text = brand.name;
              productBrandDropdown.appendChild(option);
            });
          });

</script>
</body>
</html>
