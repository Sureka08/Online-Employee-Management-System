9<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Leave Application</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 50%;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            font-size: 14px;
            margin-bottom: 5px;
            color: #555;
        }

        input[type="text"], input[type="date"] {
            padding: 10px;
            font-size: 14px;
            margin: 10px 0 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
            width: 100%;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
            padding: 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        .form-row {
            display: flex;
            justify-content: space-between;
        }

        .form-row input {
            width: 48%;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Update Leave Application</h2>
       <%@ page import="java.sql.*" %>
<%
int id = Integer.parseInt(request.getParameter("id"));
String phone = "", reason = "", startDate = "", endDate = "";

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "");
    PreparedStatement ps = conn.prepareStatement("SELECT * FROM leaveapply WHERE id=?");
    ps.setInt(1, id);
    ResultSet rs = ps.executeQuery();
    if(rs.next()) {
        phone = rs.getString("phone");
        reason = rs.getString("reason");
        startDate = rs.getString("startDate");
        endDate = rs.getString("endDate");
    }
    conn.close();
} catch(Exception e) {
    out.println(e);
}
%>
<form method="post" action="UpdateLeaveController">
    <input type="hidden" name="id" value="<%=id%>">
    <input type="text" name="phone" value="<%=phone%>">
    <input type="text" name="reason" value="<%=reason%>">
    <input type="date" name="startDate" value="<%=startDate%>">
    <input type="date" name="endDate" value="<%=endDate%>">
    <input type="submit" value="Update Leave">
</form>
        </div>

</body>
</html>
