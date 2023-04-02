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

@WebServlet("/editBrand")
public class EditBrandServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            String BrandId = request.getParameter("BrandId");
            String BrandName = request.getParameter("BrandName");

            JsonObject brandJson = new JsonObject();
            brandJson.addProperty("id", BrandId);
            brandJson.addProperty("name", BrandName);

            URL url = new URL("http://localhost:8080/BB_REST_APP-1.0-SNAPSHOT/api/brands/update/" + BrandId);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("PUT");
            conn.setRequestProperty("Content-Type", "application/json");
            conn.setDoOutput(true);

            try (OutputStream os = conn.getOutputStream()) {
                os.write(brandJson.toString().getBytes());
                os.flush();
            }

            // Check the response code to see if the Brand was Edited successfully
            int responseCode = conn.getResponseCode();
            if (responseCode == 201) {
                String message = "Brand Updated Successfully!";
                request.getSession().setAttribute("message", message);
                PrintWriter out = response.getWriter();
                out.println("<script>window.location.href='ManageCategories';</script>");
            } else {
                // Error occurred while adding category
                String errorMessage = "Failed to update Brand. HTTP error code: " + responseCode;
                request.setAttribute("message", errorMessage);
            }

            // Forward the request to the JSP page
            request.getRequestDispatcher("ManageBrands.jsp").forward(request, response);
        }
    }
