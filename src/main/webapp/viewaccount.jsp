<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Model.ViewAccountModel" %>
<%
ViewAccountModel user = (ViewAccountModel) request.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MY ACCOUNT</title>
    <link rel="stylesheet" href="viewaccount.css">
</head>
<body>
<div class="container">
<a href="employee.jsp" class="back-btn"> Back</a>

    <h2>My Account</h2>
    <form>
        <label>First Name:</label><br>
        <input type="text" value="<%= user.getFirstName() %>" readonly><br><br>

        <label>Last Name:</label><br>
        <input type="text" value="<%= user.getLastName() %>" readonly><br><br>

        <label>Email:</label><br>
        <input type="email" value="<%= user.getEmail() %>" readonly><br><br>

        <label>Username:</label><br>
        <input type="text" value="<%= user.getUsername() %>" readonly><br><br>

        <label>Password:</label><br>
        <input type="password" value="<%= user.getPassword() %>" readonly><br><br>

        <input type="button" value="Back" onclick="history.back()">
    </form>
</div>
</body>
</html>
