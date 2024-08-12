<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%
    HttpSession session = request.getSession(false);
    if (session == null || session.getAttribute("username") == null) {
        response.sendRedirect("login.html");
    } else {
        String username = (String) session.getAttribute("username");
%>
        <html>
        <head>
            <title>Welcome</title>
        </head>
        <body>
            <h1>Welcome, <%= username %>!</h1>
            <form action="logout" method="post">
                <input type="submit" value="Logout">
            </form>
        </body>
        </html>
<%
    }
%>