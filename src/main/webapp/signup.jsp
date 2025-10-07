<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SIGNUP HERE</title>
<link rel="stylesheet" type="text/css" href="signup.css">
</head>
<body>
<script src="signup.js"></script>

<div class="signup-container">
    <h2>Signup</h2>
    <form method="post" action="signupc" >
        <input type="text" name="firstname" placeholder="First Name" required>
        <input type="text" name="lastname" placeholder="Last Name" required>
        <input type="email" name="email" placeholder="Email" required>
        <input type="text" name="username" placeholder="Username" required>
        <input type="password" name="password" placeholder="Password" required>
        
        <input type="submit" name="submit" value="submit"><br>

    </form>
        <button><a href="login.jsp">Back</a></button>
    
</div>


</body>
</html>