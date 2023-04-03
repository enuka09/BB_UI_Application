<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Manage Products</title>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
</head>

<body onload="loadProduct()">

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
    <input type="text" id="productDescription" name="productDescription" style="border: 1px solid black; padding-left: 10px;">

    <label for="productCategory" style="background: none; border: #959595;">Category:</label>
    <input type="text" id="productCategory" name="productCategory" style="border: 1px solid black; padding-left: 10px;">

    <label for="productBrand" style="background: none; border: #959595;">Brand:</label>
    <input type="text" id="productBrand" name="productBrand" style="border: 1px solid black; padding-left: 10px;">

    <label for="productQuantity" style="background: none; border: #959595;">Quantity:</label>
    <input type="text" id="productQuantity" name="productQuantity" style="border: 1px solid black; padding-left: 10px;">

    <button type="submit" id="saveProductBtn" name="saveProductBtn" class="save-btn">Save</button>
    <button type="button" id="cancelProductBtn" class="cancel-btn">Cancel</button>
    <input type="hidden" name="message" value="${message}">
  </form>

</div>

<script>
  function loadProduct() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
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
          actionsCell.innerHTML = '<button class="edit_product_btn" data-id="' + productData[i].id + '">Edit</button> <button class="del_product_btn" data-id="' + productData[i].id + '">Delete</button>' ;
        }
        $(".edit_product_btn").click(function() {
          var id = $(this).data("id");
          var name = $(this).closest("tr").find("td:eq(1)").text();
          var price = $(this).closest("tr").find("td:eq(2)").text();
          var description = $(this).closest("tr").find("td:eq(3)").text();
          var category = $(this).closest("tr").find("td:eq(4)").text();
          var brand = $(this).closest("tr").find("td:eq(5)").text();
          var quantity = $(this).closest("tr").find("td:eq(6)").text();
          $("#productId").val(id);
          $("#productName").val(name);
          $("#productPrice").val(price);
          $("#productDescription").val(description);
          $("#productCategory").val(category);
          $("#productBrand").val(brand);
          $("#productQuantity").val(quantity);
          $("#editProductModal").show();
        });
      }
    };
    xhttp.open("GET", "http://localhost:8080/BB_REST_APP-1.0-SNAPSHOT/api/products", true);
    xhttp.send();
  }

  $("#cancelProductBtn").click(function() {
    $("#editProductModal").hide();
  });

</script>
</body>
</html>
