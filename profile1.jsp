<%@ page import="javax.servlet.http.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page session="false" %>
<%
    HttpSession session = request.getSession(false);
    if (session == null || session.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    String username = (String) session.getAttribute("user");
%>
<div class="account-options">
    <span>Welcome, <%= username %>!</span>
    <a href="logout.jsp">Logout</a>
     
</div>