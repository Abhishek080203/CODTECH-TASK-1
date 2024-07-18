<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String dbURL = "jdbc:mysql://localhost:3306/ecommerce_db";
    String dbUser = "root";
    String dbPassword = "abhi@11";

    try {
        // Load the JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish connection to the database
        Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

        // Prepare the SQL query
        String sql = "SELECT * FROM users WHERE username=? AND password=?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, username);
        pstmt.setString(2, password);

        // Execute the query
        ResultSet rs = pstmt.executeQuery();

        // Check if the user exists
        if (rs.next()) {
            // Login successful
            session.setAttribute("user", rs.getString("username"));
            
            response.sendRedirect("afterindex.jsp");
        } else {
            // Login failed
            out.println("<p style='color:red;'>Invalid login credentials</p>");
        }

        // Close the connection
        conn.close();
    } catch (SQLException e) {
        e.printStackTrace();
        out.println("<p style='color:red;'>Database connection error</p>");
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
        out.println("<p style='color:red;'>JDBC Driver not found</p>");
    }
%>