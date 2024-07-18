<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <div class="container">
            <h1>E-Commerce Website</h1>
        </div>
    </header>
    <section id="registration">
        <div class="container">
            <h2>Registration</h2>
            <c:if test="${not empty errorMessage}">
                <p style="color: red;">${errorMessage}</p>
            </c:if>
            <c:if test="${not empty successMessage}">
                <p style="color: green;">${successMessage}</p>
            </c:if>
            
            <form action="signup.jsp" method="post">
                <label for="username">Username:</label><br>
                <input type="text" id="username" name="username" required><br><br>
                
                <label for="password">Password:</label><br>
                <input type="password" id="password" name="password" required><br><br>
                
                <label for="fullName">Full Name:</label><br>
                <input type="text" id="fullName" name="full_name" required><br><br>
                
                <label for="email">Email:</label><br>
                <input type="email" id="email" name="email" required><br><br>
                
                <label for="address">Address:</label><br>
                <textarea id="address" name="address" rows="4" required></textarea><br><br>
                
                <input type="submit" value="Register">
            </form>
            
            <p>Already have an account? <a href="login.html">Log In</a></p>
        </div>
    </section>
    <footer>
        <div class="container">
            <p>&copy; 2024 E-Commerce Website. All rights reserved.</p>
        </div>
    </footer>
    
    <%-- Database Connection and Registration Logic --%>
    <%@ page import="java.sql.*" %>
    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String fullName = request.getParameter("full_name");
        String email = request.getParameter("email");
        String address = request.getParameter("address");

        // Validate and process the form data
        if (username != null && !username.isEmpty() &&
            password != null && !password.isEmpty() &&
            fullName != null && !fullName.isEmpty() &&
            email != null && !email.isEmpty() &&
            address != null && !address.isEmpty()) {

            // Database connection parameters
            String jdbcUrl = "jdbc:mysql://localhost:3306/ecommerce_db";
            String dbUsername = "root";
            String dbPassword = "abhi@11";

            Connection conn = null;
            PreparedStatement statement = null;
            
            try {
                // Load MySQL JDBC driver
                Class.forName("com.mysql.jdbc.Driver");
                
                // Establish connection to MySQL
                conn = DriverManager.getConnection(jdbcUrl, dbUsername, dbPassword);
                
                // SQL query to insert user data
                String sql = "INSERT INTO users (username, password, full_name, email, address) VALUES (?, ?, ?, ?, ?)";
                statement = conn.prepareStatement(sql);
                statement.setString(1, username);
                statement.setString(2, password);
                statement.setString(3, fullName);
                statement.setString(4, email);
                statement.setString(5, address);

                
                
                // Execute the query
                int rowsInserted = statement.executeUpdate();
                
                if (rowsInserted > 0) {
                    // Registration successful, redirect to login page
                    response.sendRedirect("login.html");
                } else {
                    // Registration failed, set error message
                    request.setAttribute("errorMessage", "Failed to register user. Please try again.");
                }
            } catch (ClassNotFoundException | SQLException e) {
                // Handle any exceptions
                out.println("<p style='color:red;'>An error occurred: " + e.getMessage() + "</p>");
            } finally {
                // Close resources
                try {
                    if (statement != null) statement.close();
                    if (conn != null) conn.close();
                } catch (SQLException e) {
                    out.println("<p style='color:red;'>Error closing database resources: " + e.getMessage() + "</p>");
                }
            }
        } else {
            // Invalid form submission, set error message
            request.setAttribute("errorMessage", "Please fill out all fields.");
        }
    %>
</body>
</html>
