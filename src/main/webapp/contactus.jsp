<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>CONTACT US</title>
	<style type="text/css">
		body {
            font-family: Arial, sans-serif;
            background: url('image/contactus.jpg') no-repeat center center fixed;
            background-size:cover;
	
        }
        .form-container {
            left:30px;
            top:50px;
            width: 500px;
            margin: 40px auto;
            background: #D3D3D3;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 0 10px #ccc;
        }
        .form-container h2 {
            text-align: center;
        }
        label {
            font-weight: bold;
        }
        input, textarea {
            width: 100%;
            padding: 8px;
            margin: 10px 0 20px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }
        input[type="submit"] {
            background: #4CAF50;
            color: white;
            border: none;
            font-size: 16px;
        }
        .back-btn {
            display: inline-block;
            margin-bottom: 15px;
            padding: 8px 16px;
            background-color: #2196F3;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }

        .back-btn:hover {
            background-color: #0b7dda;
        }
        </style>
  </head>
<body>
<script src="contactus.js"></script>

<div class="form-container">
    <a href="index1.jsp" class="back-btn"> Back</a>

    <h2>Contact Us</h2>
    <form action="contactC" method="post">
        <label>First Name:</label>
        <input type="text" name="firstName" required>

        <label>Last Name:</label>
        <input type="text" name="lastName" required>

        <label>Phone Number:</label>
        <input type="text" name="phone" required  title="Enter a 10-digit phone number">

        <label>Date of Birth:</label>
        <input type="date" name="dob" required>

        <label>Address:</label>
        <textarea name="address"  required></textarea>

        <label>Email:</label>
        <input type="email" name="email" required>

        
        <input type="submit" value="Send Message">
    </form>

</div>
</body>
</html>
