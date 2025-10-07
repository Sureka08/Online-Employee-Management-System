<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>CHANGE PASSWORD</title>
    <link rel="stylesheet"  type ="text/css" href="changep.css">
    <script>
        function validateForm() {
            var newPassword = document.forms["changeForm"]["newPassword"].value;
            var confirmPassword = document.forms["changeForm"]["confirmPassword"].value;
            if (newPassword !== confirmPassword) {
                alert("New passwords do not match!");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>

<div class="container">
        <input type="button" value="Back" class="back-btn" onclick="history.back()">

    <h2>Change Password</h2>
    <form name="changeForm" action="ChangePasswordController" method="post" onsubmit="return validateForm()">
        <label>Current Password:</label><br>
        <input type="password" name="currentPassword" required><br>

        <label>New Password:</label><br>
        <input type="password" name="newPassword" required><br>

        <label>Confirm New Password:</label><br>
        <input type="password" name="confirmPassword" required><br><br>

        <input type="submit" value="Change Password">
    </form>

    <% String msg = (String) request.getAttribute("message");
       if (msg != null) { %>
        <p style="color: red;"><%= msg %></p>
    <% } %>
    
</div>
</body>
</html>
