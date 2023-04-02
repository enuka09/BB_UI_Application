package com.example.bumblebeeloanapplicationui;

import com.google.gson.JsonObject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

@WebServlet("/insertBrand")
public class AddBrandServlet extends HttpServlet {
        private static final long serialVersionUID = 1L;

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            // Get the values entered by the user in the form
            String brandId = request.getParameter("brandId");
            String brandName = request.getParameter("brandName");

            JsonObject brandJson = new JsonObject();
            brandJson.addProperty("id", brandId);
            brandJson.addProperty("name", brandName);

            // Set up an HTTP connection to the backend resource URL
            URL url = new URL("http://localhost:8080/BB_REST_APP-1.0-SNAPSHOT/api/brands");
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("POST");
            conn.setRequestProperty("Content-Type", "application/json");
            conn.setDoOutput(true);

            try (OutputStream os = conn.getOutputStream()) {
                os.write(brandJson.toString().getBytes());
                os.flush();
            }

            // Check the response code to see if the category was added successfully
            int responseCode = conn.getResponseCode();
            if (responseCode == 201) {
                String message = "Brand Added Successfully!";
                request.getSession().setAttribute("message", message);
            } else {
                // Error occurred while adding category
                String errorMessage = "Failed to add Brand. HTTP error code: " + responseCode;
                request.setAttribute("message", errorMessage);
            }

            // Forward the request to the JSP page
            request.getRequestDispatcher("AddBrand.jsp").forward(request, response);
        }
    }
