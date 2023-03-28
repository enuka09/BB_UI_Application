package com.example.bumblebeeloanapplicationui;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.time.LocalDate;
import com.google.gson.JsonObject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String cusFirstName = request.getParameter("CusFirstName");
        String cusLastName = request.getParameter("CusLastName");
        String cusUsername = request.getParameter("CusUsername");
        String cusPassword = request.getParameter("CusPassword");
        String cusNIC = request.getParameter("CusNIC");
        LocalDate cusDOB = LocalDate.parse(request.getParameter("CusDOB"));

        JsonObject customerJson = new JsonObject();
        customerJson.addProperty("firstName", cusFirstName);
        customerJson.addProperty("lastName", cusLastName);
        customerJson.addProperty("username", cusUsername);
        customerJson.addProperty("password", cusPassword);
        customerJson.addProperty("nic", cusNIC);
        customerJson.addProperty("dob", String.valueOf(cusDOB));

        URL url = new URL("http://localhost:8080/BB_REST_APP-1.0-SNAPSHOT/api/customer");
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
        connection.setRequestMethod("POST");
        connection.setRequestProperty("Content-Type", "application/json");
        connection.setDoOutput(true);

        OutputStream os = connection.getOutputStream();
        os.write(customerJson.toString().getBytes());
        os.flush();

        // Read the response from the backend resource file
        int responseCode = connection.getResponseCode();
        String responseBody = "";
        if (responseCode == HttpURLConnection.HTTP_OK) {
            // Success
            BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            String line;
            while ((line = br.readLine()) != null) {
                responseBody += line;
            }
            br.close();
        } else {
            // Error
            BufferedReader br = new BufferedReader(new InputStreamReader(connection.getErrorStream()));
            String line;
            while ((line = br.readLine()) != null) {
                responseBody += line;
            }
            br.close();
        }
    }
}



