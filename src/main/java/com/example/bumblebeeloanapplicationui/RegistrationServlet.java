package com.example.bumblebeeloanapplicationui;

import java.time.LocalDate;
//import com.example.bumblebeeloanapplicationui.Customer;
//import com.example.bumblebeeloanapplicationui.DBHelper;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
    private static final  long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String cusFirstName = request.getParameter("CusFirstName");
        String cusLastName = request.getParameter("CusLastName");
        String cusUsername = request.getParameter("CusUsername");
        String cusPassword = request.getParameter("CusPassword");
        String cusNIC = request.getParameter("CusNIC");
        LocalDate cusDOB = LocalDate.parse(request.getParameter("CusDOB"));

       // Customer newCustomer = new Customer(cusFirstName, cusLastName, cusUsername, cusPassword, cusNIC, cusDOB);

        try {
          //  DBHelper dbHelper = new DBHelper();
          //  dbHelper.addCustomer(newCustomer);

            out.println("<script>alert('Registration Successful!')</script>");
            response.sendRedirect("login.jsp");
        } catch (Exception e) {
            out.println("<script>alert('Registration Failed!')</script>");
            e.printStackTrace();
        }

    }


}
