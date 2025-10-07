<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
<style >
.body {
    margin: 0;
    font-family: Arial, sans-serif;
}


.navbar {
    background-color: #2c3e50;
    overflow: hidden;
    padding: 10px;
}

.navbar a {
    float: left;
    color: white;
    text-align: center;
    padding: 12px 16px;
    text-decoration: none;
    font-size: 16px;
}

.navbar a:hover {
    background-color: #1abc9c;
    color: black;
        border-radius: 6px;
    
}

.wrapper {
    display: flex;
}

.sidebar {
    width: 220px;
    background-color: #34495e;
    color: white;
    height: 100vh;
    padding: 20px;
    box-sizing: border-box;
}

.sidebar h2 {
    font-size: 20px;
    margin-top: 0;
}

.sidebar ul {
    list-style-type: none;
    padding: 0;
    margin-top: 20px;
}

.sidebar ul li {
    margin: 15px 0;
}

.sidebar ul li a {
    color: white;
    text-decoration: none;
    display: block;
    font-size: 16px;
}

.sidebar ul li a:hover {
    background-color: #1abc9c;
    padding: 15px 15px;
    border-radius: 6px;
    color: black;
    font-weight:bold;
}

.main-content {
     text-align:center;
     font-size:30px;
    flex-grow: 1;
    padding: 30px;
    background-color: #f4f4f4;
}</style>
</head>
<body>

<div class="navbar">
    <a href="index1.jsp">HOME</a> 
    <a href="aboutus.jsp">ABOUT US</a>
    <a href="changepassword.jsp">CHANGE PASSWORD</a>
    <a href="index1.jsp">LOGOUT</a>
</div>

<div class="wrapper">
    <div class="sidebar">
        <h2>Admin Panel</h2><br><br><br>
        <ul>
            <li><a href="addemployee.jsp">Add Employee</a></li><br>
            <li><a href="viewemp">View Employee</a></li><br>
            <li><a href="viewleave">View Leave Report</a></li><br>
            <li><a href="admincontactlist.jsp">Contact Report</a></li><br>
            <li><a href="changepassword.jsp">Change Password</a></li><br>
            <li><a href="index1.jsp">Logout</a></li>
        </ul>
    </div>

    <div class="main-content">
        <h2>Welcome to Employee Management System</h2>
        <p>Select an action from the sidebar to manage the system.</p>
    </div>
</div>

</body>
</html>
