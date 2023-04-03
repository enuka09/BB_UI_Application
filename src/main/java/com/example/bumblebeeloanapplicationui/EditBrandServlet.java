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

        String brandId = request.getParameter("brandId");
        String brandName = request.getParameter("brandName");

        JsonObject brandJson = new JsonObject();
        brandJson.addProperty("id", brandId);
        brandJson.addProperty("name", brandName);

        URL url = new URL("http://localhost:8080/BB_REST_APP-1.0-SNAPSHOT/api/brands/update/" + brandId);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("PUT");
        conn.setRequestProperty("Content-Type", "application/json");
        conn.setDoOutput(true);

        try (OutputStream os = conn.getOutputStream()) {
            os.write(brandJson.toString().getBytes());
            os.flush();
        }

        // Check the response code to see if the category was Edited successfully
        int responseCode = conn.getResponseCode();

        if (responseCode == 201) {
            String message = "Brand updated successfully!";
            request.getSession().setAttribute("message", message);
            PrintWriter out = response.getWriter();
            out.println("<script>window.location.href='ManageBrands.jsp';</script>");
        } else {
            // Error occurred while updating the brand
            String errorMessage = "Failed to update brand. HTTP error code: " + responseCode;
            request.setAttribute("message", errorMessage);
        }


        // Forward the request to the JSP page
        request.getRequestDispatcher("ManageBrands.jsp").forward(request, response);
    }
}
