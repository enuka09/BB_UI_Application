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

@WebServlet("/editCategory")
public class EditCategoryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String categoryId = request.getParameter("categoryId");
        String categoryName = request.getParameter("categoryName");

        JsonObject categoryJson = new JsonObject();
        categoryJson.addProperty("id", categoryId);
        categoryJson.addProperty("name", categoryName);

        URL url = new URL("http://localhost:8080/BB_REST_APP-1.0-SNAPSHOT/api/categories/update/" + categoryId);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("PUT");
        conn.setRequestProperty("Content-Type", "application/json");
        conn.setDoOutput(true);

        try (OutputStream os = conn.getOutputStream()) {
            os.write(categoryJson.toString().getBytes());
            os.flush();
        }

        // Check the response code to see if the category was Edited successfully
        int responseCode = conn.getResponseCode();
        if (responseCode == 201) {
            String message = "Category Updated Successfully!";
            request.getSession().setAttribute("message", message);
            PrintWriter out = response.getWriter();
            out.println("<script>window.location.href='ManageCategories';</script>");
        } else {
            // Error occurred while adding category
            String errorMessage = "Failed to update category. HTTP error code: " + responseCode;
            request.setAttribute("message", errorMessage);
        }

        // Forward the request to the JSP page
        request.getRequestDispatcher("ManageCategories.jsp").forward(request, response);
    }
}


