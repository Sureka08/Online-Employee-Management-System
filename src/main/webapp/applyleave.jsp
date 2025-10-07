<%@ page import="java.sql.*, jakarta.servlet.http.*, jakarta.servlet.*" %>
<%
    HttpSession session1 = request.getSession(false);
    if (session1 == null || session1.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    String username = (String) session1.getAttribute("username");

    String firstName = "", lastName = "", email = "";
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "");
        PreparedStatement stmt = conn.prepareStatement("SELECT firstName, lastName, email FROM signupdb WHERE username=?");
        stmt.setString(1, username);
        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            firstName = rs.getString("firstName");
            lastName = rs.getString("lastName");
            email = rs.getString("email");
        }
        conn.close();
    } catch (Exception e) { out.println("Error: " + e.getMessage()); }
%>
<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    background: url('image/applyleave.jpg') no-repeat center center fixed;
	background-size: cover;
    padding: 0;
}

.form-container {
	left:20px;
    width: 400px;
    background-color: rgb(192, 192, 192);
    padding: 30px;
    margin: 80px auto;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
}

h2 {
    text-align: center;
    margin-bottom: 25px;
    color: #333;
}

.input-field {
    width: 100%;
    padding: 12px;
    margin: 10px 0;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 6px;
    font-size: 14px;
}

.input-field:focus {
    border-color: #007bff;
    outline: none;
}

.form-label {
    display: block;
    margin-top: 15px;
    margin-bottom: 5px;
    color: #555;
    font-weight: bold;
}

.submit-btn {
    width: 100%;
    padding: 12px;
    background-color: #007bff;
    color: white;
    border: none;
    border-radius: 6px;
    font-size: 16px;
    cursor: pointer;
    margin-top: 20px;
    transition: background-color 0.3s ease;
}

.submit-btn:hover {
    background-color: #0056b3;
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
<script src="applyleave.js"></script>

<form method="post" action="LeaveApplyController">
    <div class="form-container">
        <a href=employee.jsp class="back-btn"> Back</a>
    
        <h2>Leave Application Form</h2>
        <input type="text" name="firstName" value="<%=firstName%>" readonly class="input-field">
        <input type="text" name="lastName" value="<%=lastName%>" readonly class="input-field">
        <input type="email" name="email" value="<%=email%>" readonly class="input-field">
        <input type="tel" name="phone" placeholder="Phone" required class="input-field">
        
        <label class="form-label">Reason</label>
        <input type="text" name="reason" required class="input-field">
        
        <label class="form-label">Start Date</label>
         <input type="date" name="startDate" required class="input-field">
        
        <label class="form-label">End Date</label>
        <input type="date" name="endDate" required class="input-field">
        
        <input type="submit" value="Apply Leave" class="submit-btn">
    </div>
</form>
