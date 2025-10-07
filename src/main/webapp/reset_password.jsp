<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>RESET PASSWORD</title>
    <link rel="stylesheet" type="text/css" href="changep.css">
    <script>
        function validateForm() {
            var newPassword = document.forms["resetForm"]["newPassword"].value;
            var confirmPassword = document.forms["resetForm"]["confirmPassword"].value;
            if (newPassword !== confirmPassword) {
                alert("Passwords do not match!");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
<div class="container">
    <h2>Reset Your Password</h2>
    <form name="resetForm" action="ResetPasswordController" method="post" onsubmit="return validateForm()">
        <label>New Password:</label><br>
        <input type="password" name="newPassword" required><br><br>

        <label>Confirm Password:</label><br>
        <input type="password" name="confirmPassword" required><br><br>

        <input type="submit" value="Reset">
    </form>
</div>
</body>
</html>
