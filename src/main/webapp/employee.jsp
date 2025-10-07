<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EMPLOYEE HERE</title>
<style type="text/css">
@charset "UTF-8";

body {
    margin: 0;
    font-family: Arial, sans-serif;
    background: url('image/in.jpg') no-repeat center center fixed;
    background-size:cover;
}

/* Navigation bar styling */
.navbar {
    background-color: #2c3e50;
    overflow: hidden;
    display: flex;
    justify-content: center;
    padding: 10px 0;
}

.navbar a {
    color: white;
    padding: 14px 20px;
    text-decoration: none;
    text-align: center;
    font-weight: bold;
}

.navbar a:hover {
    background-color: #1abc9c;
    color: black;
    transition: 0.3s;
}

/* Container for the content */
.container {
    margin: 150px auto;
    max-width: 400px;
    background-color: white;
    padding: 45px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    text-align: center;
}

.container h2 {
    margin-bottom: 30px;
    color: #2c3e50;
}

/* Buttons inside the form */
.button {
    width: 100%;
    padding: 12px;
    margin: 10px 0;
    background-color: #3498db;
    color: white;
    border: none;
    border-radius: 8px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.button:hover {
    background-color: #2980b9;
}
</style>

</head>
<body>
<div class="navbar">
        <a href="index1.jsp">HOME</a>
        <a href="aboutus.jsp">ABOUT US</a>
        <a href="ViewAccountController">MY ACCOUNT</a>
        <a href="changepassword.jsp">CHANGE PASSWORD</a>
        <a href="index1.jsp">LOGOUT</a>
    </div>

    <div class="container">
        <h2>Welcome to Employee Management System</h2>
        
        <form action="">
            <button class="button" formaction="index1.jsp">Home</button><br>
            <button class="button" formaction="applyleave.jsp">Apply Leave</button><br>
            <button class="button" formaction=Leavelist.jsp>  Leave Report</button><br>
            <button class="button" formaction="changepassword.jsp"> Change Password</button><br>
            <button class="button" formaction="index1.jsp">Logout</button>
            
            
        </form>

       
    </div>
            
</body>
</html>