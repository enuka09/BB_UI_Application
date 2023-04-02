<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Add New Brand</title>
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
      margin-top: 100px;
      margin-left: 380px;
      width: 70%;
      padding: 1rem;
    }


    table {
      margin-left: 295px;
      margin-top: 10px;
      width: 70%;
      border-collapse: collapse;
      border-radius: 10px;
      overflow: hidden;
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
      margin-bottom: 20px;
      text-align: left;
    }

    th:first-child, td:first-child {
      text-align: left;
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

    h1 {
      text-align: center;
      margin: 30px 0;
    }

    form {
      background: #F4FCFC;
      display: flex;
      flex-direction: column;
      margin-top: 20px;
      margin-left: 400px;
      width: 50%;
      padding: 20px;
      /*border: 2px solid #ddd;*/
      border-radius: 10px;
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
    }

    label {

      font-size: 18px;
      font-weight: bold;
      margin-bottom: 10px;
    }

    input[type=text] {
      font-size: 16px;
      padding: 10px;
      /*box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);*/
      border-radius: 5px;
      margin-bottom: 20px;
      width: 100%;
      background: #DBF8F8;
    }

    input[type=submit] {
      font-size: 18px;
      font-weight: bold;
      padding: 10px 20px;
      background-color: #4CAF50;
      color: #fff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      margin-bottom: 20px;
    }

    input[type=submit]:hover {
      background-color: #3e8e41;
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

    .button-container {
      margin-top: 30px;
      display: inline-block;
    }

    .back-button {
      padding: 10px 20px;
      background-color: #0B9394;
      color: white;
      text-align: center;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-size: 18px;
      font-weight: bold;
      margin-left: 20px;
    }

    .back-button:hover {
      background-color: #087576;
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
      <a href="ManageProducts.jsp"><i class='fa-solid fa-bag-shopping'></i><span style='display:inline-block; margin-left: 10px;'>Manage Products</span></a>
      <div class="selected-icon">
          <i class='fa-solid fa-ring' style="margin-left: 15px; margin-top: 30px"></i><span style='display:inline-block; margin-left: 10px; margin-top: -100px; color: #ffffff;'>Manage Brands</span>
      </div>
      <a href="ManageCategories.jsp"><i class="fa-solid fa-store"></i><span style='display:inline-block; margin-left: 10px;'>Manage Category</span></a>

      <a href="ViewUsers.jsp"><i class='fa-solid fa-people-roof'></i><span style='display:inline-block; margin-left: 10px;'>Manage Users</span></a>

      <div class="bottom-icon">
      <a href="#profile"><i class="fa-solid fa-right-from-bracket"></i><span style='display:inline-block; margin-left: 10px;'>Logout</span></a>
    </div>
  </div>
</div>


<div class="main-body">

  <div class="promo_card">
    <h2>Add New Brand</h2>
  </div>
</div>

<form class="form" action="${pageContext.request.contextPath}/insertBrand" method="post" onsubmit="return validateForm()">
  <label for="brandId">Brand ID:</label>
  <input type="text" id="brandId" name="brandId">
  <label for="brandName">Brand Name:</label>
  <input type="text" id="brandName" name="brandName">
  <div class="button-container">
    <input type="submit" value="Insert Brand">
    <button class="back-button" onclick="window.location.href = 'ManageBrands.jsp'; return false;">Back</button>
  </div>
  <input type="hidden" name="message" value="${message}">
</form>
<div id="errorMessage" style="display:none;">
  <p>Please fill in all fields.</p>
</div>
<script>
  function validateForm() {
    var brandId = document.getElementById("brandId").value;
    var brandName = document.getElementById("brandName").value;
    if (brandId == "" || brandName == "") {
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
</script>
</body>
</html>
