package com.example.bumblebeeloanapplicationui;

import com.google.gson.JsonObject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;

@WebServlet("/editProduct")
public class EditProductServlet extends HttpServlet{

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            String productId = request.getParameter("productId");
            String productName = request.getParameter("productName");
            double productPrice = Double.parseDouble(request.getParameter("productPrice"));
            String productDescription = request.getParameter("productDescription");
            String productCategory = request.getParameter("productCategory");
            String productBrand = request.getParameter("productBrand");
            int productQuantity = Integer.parseInt(request.getParameter("productQuantity"));

            JsonObject productJson = new JsonObject();
            productJson.addProperty("id", productId);
            productJson.addProperty("name", productName);
            productJson.addProperty("price", productPrice);
            productJson.addProperty("description", productDescription);
            productJson.addProperty("category", productCategory);
            productJson.addProperty("brand", productBrand);
            productJson.addProperty("quantity", productQuantity);

            URL url = new URL("http://localhost:8080/BB_REST_APP-1.0-SNAPSHOT/api/products/update/" + productId);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("PUT");
            conn.setRequestProperty("Content-Type", "application/json");
            conn.setDoOutput(true);

            try (OutputStream os = conn.getOutputStream()) {
                os.write(productJson.toString().getBytes());
                os.flush();
            }

            // Check the response code to see if the category was Edited successfully
            int responseCode = conn.getResponseCode();

            if (responseCode == 201) {
                String message = "Product updated successfully!";
                request.getSession().setAttribute("message", message);
                PrintWriter out = response.getWriter();
                out.println("<script>window.location.href='ManageProducts.jsp';</script>");
            } else {
                // Error occurred while updating the brand
                String errorMessage = "Failed to update product. HTTP error code: " + responseCode;
                request.setAttribute("message", errorMessage);
            }


            // Forward the request to the JSP page
            request.getRequestDispatcher("ManageProducts.jsp").forward(request, response);
        }
    }

