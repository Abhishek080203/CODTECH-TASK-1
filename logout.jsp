<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%
    if (session != null) {
        session.invalidate();
    }
    response.sendRedirect("index.html");
%>
