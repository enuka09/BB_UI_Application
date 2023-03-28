<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Admin Dashboard | By Code Info</title>
  <link rel="stylesheet" href="adminstyle.css" />
  <!-- Font Awesome Cdn Link -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />
</head>
<body>
<header class="header">
  <div class="logo">
    <img src="Images/logo.png">
    <div class="search_box">
      <input type="text" placeholder="Search EasyPay">
      <i class="fa-sharp fa-solid fa-magnifying-glass"></i>
    </div>
  </div>

  <div class="header-icons">
    <span style='color: #0B9394;'><i class="fas fa-bell"></i></span>
    <div class="account">
      <img src="b" alt="">
      <h4>Jhon Viek</h4>
    </div>
  </div>
</header>
<div class="container">
  <div class="sidebarnew">
    <span>Menu</span>
    <a href="#home"><i class='fa fa-home'></i><span style='display:inline-block; margin-left: 10px;'>Home</span></a>
    <a href="#profile"><i class='fa-solid fa-address-card'></i><span style='display:inline-block; margin-left: 10px;'>Profile</span></a>
    <a href="#product"><i class='fa-solid fa-bag-shopping'></i><span style='display:inline-block; margin-left: 10px;'>Manage Products</span></a>
    <a href="#category"><i class='fa-solid fa-store'></i><span style='display:inline-block; margin-left: 10px;'>Manage Category</span></a>
    <a href="#customer"><i class='fa-solid fa-people-roof'></i><span style='display:inline-block; margin-left: 10px;'>Manage Users</span></a>
  </div>

  <div class="main-body">
    <h2>DASHBOARD</h2>
    <div class="promo_card">
      <h1>WELCOME TO BUMBLE BEE</h1>
      <span>Buy First | Pay Later</span>
      <button>Learn More</button>
    </div>

    <div class="history_lists">
      <div class="list1">
        <div class="row">
          <h4>History</h4>
          <a href="#">See all</a>
        </div>
        <table>
          <thead>
          <tr>
            <th>#</th>
            <th>Dates</th>
            <th>Name</th>
            <th>Type</th>
            <th>Ammount</th>
          </tr>
          </thead>
          <tbody>
          <tr>
            <td>1</td>
            <td>2, Aug, 2022</td>
            <td>Sam Tonny</td>
            <td>Premimum</td>
            <td>$2000.00</td>
          </tr>
          <tr>
            <td>2</td>
            <td>29, July, 2022</td>

            <td>Code Info</td>
            <td>Silver</td>
            <td>$5,000.00</td>
          </tr>
          <tr>
            <td>3</td>
            <td>15, July, 2022</td>

            <td>Jhon David</td>
            <td>Startup</td>
            <td>$3000.00</td>
          </tr>
          <tr>
            <td>4</td>
            <td>5, July, 2022</td>
            <td>Salina Gomiz</td>
            <td>Premimum</td>
            <td>$7000.00</td>
          </tr>
          <tr>
            <td>5</td>
            <td>29, June, 2022</td>
            <td>Gomiz</td>
            <td>Gold</td>
            <td>$4000.00</td>
          </tr>
          <tr>
            <td>6</td>
            <td>28, June, 2022</td>
            <td>Elyana Jhon</td>
            <td>Premimum</td>
            <td>$2000.00</td>
          </tr>
          </tbody>
        </table>
      </div>

      <div class="list2">
        <div class="row">
          <h4>Documnets</h4>
          <a href="#">Upload</a>
        </div>
        <table>
          <thead>
          <tr>
            <th>#</th>
            <th>Title</th>
            <th>Type</th>
            <th>Uplaoded</th>
          </tr>
          </thead>
          <tbody>
          <tr>
            <td>1</td>
            <td>CNIC</td>
            <td>PDF</td>
            <td>20</td>
          </tr>
          <tr>
            <td>2</td>
            <td>Passport</td>
            <td>PDF</td>
            <td>12</td>
          </tr>
          <tr>
            <td>3</td>
            <td>Licence</td>
            <td>PDF</td>
            <td>9</td>
          </tr>
          <tr>
            <td>4</td>
            <td>Pic</td>
            <td>Jpg</td>
            <td>22</td>
          </tr>
          <tr>
            <td>5</td>
            <td>CNIC</td>
            <td>Jpg</td>
            <td>22</td>
          </tr>
          <tr>
            <td>6</td>
            <td>Docx</td>
            <td>Word</td>
            <td>22</td>
          </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>
</body>
</html>

