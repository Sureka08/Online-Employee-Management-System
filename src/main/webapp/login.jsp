<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title> Login Here</title>
<link rel= "stylesheet" type="text/css" href="login.css">
       
</head>
<body>


<div class="container">

    <h2> LOGIN HERE</h2>

    <form action="loginc" method="post">
        
        <label for="username">Username</label>
        <input type="text" id="username" name="username" placeholder="Enter Username" required>

        <label for="password">Password</label>
        <input type="password" id="password" name="password" placeholder="Enter Password" required>
        
      

        <input type="submit" value="Login">

    </form>
<br>
    <form action="forgot.jsp" method="get">
        <button type="submit" class="forgot-button">Forgot Password?</button>
    </form>
    <br>

    <form action="signup.jsp" method="get">
        <button type="submit" class="link-button">Sign Up</button>
    </form>
</div>

</body>
</html>