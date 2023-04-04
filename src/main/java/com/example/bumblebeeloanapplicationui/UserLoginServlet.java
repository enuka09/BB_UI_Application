package com.example.bumblebeeloanapplicationui;

import com.google.gson.JsonObject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.stream.Collectors;

@WebServlet(name = "userlogin", value = "/user-login")
public class UserLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Validation for Blank fields in username and password
        if (username == null || username.trim().isEmpty()) {
            redirectToLoginWithError(response, "Please Enter your Username");
            return;
        }

        if (password == null || password.trim().isEmpty()) {
            redirectToLoginWithError(response, "Please Enter your Password");
            return;
        }

        // Create a JSON object containing the username and password
        JsonObject customerJson = new JsonObject();
        customerJson.addProperty("username", username);
        customerJson.addProperty("password", password);

        // Send a POST request to the backend resource file
        URL url = new URL("http://localhost:8080/BB_REST_APP-1.0-SNAPSHOT/api/auth");
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
        connection.setRequestMethod("POST");
        connection.setRequestProperty("Content-Type", "application/json");
        connection.setDoOutput(true);

        try (OutputStream os = connection.getOutputStream()) {
            os.write(customerJson.toString().getBytes());
            os.flush();
        }

        // Read the response from the backend resource file
        int responseCode = connection.getResponseCode();
        String responseBody = "";
        if (responseCode == HttpURLConnection.HTTP_OK) {
            // Success
            BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            responseBody = br.lines().collect(Collectors.joining("\n"));
            br.close();

            HttpSession session = request.getSession();
            session.setAttribute("username", username); // set session attribute
            Cookie emailCookie = new Cookie("customer_username", username);
            emailCookie.setMaxAge(24*60*60);
            response.addCookie(emailCookie);
            response.setHeader("Set-Cookie", connection.getHeaderField("Set-Cookie"));
            response.setHeader("session_token", (String)session.getAttribute("session_token"));
            response.setContentType("text/html");
            response.getWriter().println("<html><body>");
            response.getWriter().println("<script>alert('Login Successful');</script>");
            response.getWriter().println("<script>window.location.href='CustomerDashboard.jsp';</script>");
            response.getWriter().println("</body></html>");
        } else {
            // Error
            BufferedReader br = new BufferedReader(new InputStreamReader(connection.getErrorStream()));
            responseBody = br.lines().collect(Collectors.joining("\n"));
            br.close();
            redirectToLoginWithError(response, "Login Failed: " + responseBody);
        }
    }

    private void redirectToLoginWithError(HttpServletResponse response, String errorMessage) throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<script>alert('" + errorMessage + "');</script>");
        out.println("<script>window.location.href='UserLogin.jsp';</script>");
        out.println("</body></html>");
        out.close();
    }
}
