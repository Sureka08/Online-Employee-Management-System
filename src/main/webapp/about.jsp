<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Us - GKSV</title>
<style type="text/css">
@charset "UTF-8";
body {
    font-family: 'Inter', sans-serif;
    margin: 0;
    background-color: #f8f9fc;
    color: #333;
}

.navbar {
    background-color: #4f46e5;
    padding: 15px 30px;
    display: flex;
    gap: 20px;
    text-align:center;
}

.navbar a {
    color: white;
    text-decoration: none;
    font-weight: 500;
    padding: 8px 16px;
    border-radius: 6px;
    transition: background 0.3s;
        left:50px;
    
}

.navbar a:hover,
.navbar .active {
    background-color: #3730a3;
}

.about-container {
    max-width: 800px;
    margin: 40px auto;
    padding: 30px;
    background-color: #ffffff;
    border-radius: 12px;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.05);
}

.about-container h1 {
    font-size: 28px;
    margin-bottom: 20px;
    color: #1f2937;
}

.about-container h2 {
    margin-top: 30px;
    color: #374151;
}

.about-container p {
    font-size: 16px;
    line-height: 1.7;
    margin: 10px 0;
}

.about-container ul {
    margin-left: 20px;
    padding-left: 0;
}

.about-container li {
    margin: 8px 0;
}
</style>>
</head>
<body>
    <div class="navbar">
        <a href="index1.jsp">Home</a>
        <a href="aboutus.jsp" class="active">About Us</a>
        <a href="index1.jsp">Logout</a>
    </div>

    <div class="about-container">
        <h1>About Employee Management System</h1>
        <p>Employee Management System (EMS) is a trusted platform designed to simplify employee data, leave tracking, and administrative operations for modern businesses. We help companies focus on what matters — their people.</p>

        <h2>Our Mission</h2>
        <p>To provide a reliable, secure, and user-friendly system that empowers HR departments to manage employees with ease and accuracy.</p>

        <h2>Our Values</h2>
        <ul>
            <li><strong>Integrity:</strong> We prioritize transparency and trust in all our dealings.</li>
            <li><strong>Innovation:</strong> Continuously improving features for a better user experience.</li>
            <li><strong>Customer Focus:</strong> Ensuring every feature meets the real needs of our clients.</li>
        </ul>

        <h2>Why Choose Us?</h2>
        <p>With EMS, you get more than just a management tool — you gain a partner committed to streamlining HR operations and boosting workplace efficiency.</p>
    </div>
</body>
</html>
