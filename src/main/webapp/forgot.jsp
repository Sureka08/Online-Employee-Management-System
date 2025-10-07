<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>FORGOT PASSWORD</title>
    <link rel="stylesheet" type="text/css" href="forgot.css">
    
</head>
<body>
<div class="container">
        <input type="button" value="Back" class="back-btn" onclick="history.back()" >

    <h2>Forgot Password</h2>
    <form action="ForgotPasswordController" method="post">
        <label>Enter your username:</label><br>
        <input type="text" name="username" required>
        <br><br>
        <input type="submit" value="Submit">
    </form>
    </div>
</body>
</html>
