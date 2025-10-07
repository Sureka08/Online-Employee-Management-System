<%@ page session="true" %>

<%@ page import="java.sql.*, jakarta.servlet.http.*, jakarta.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Leave Applications</title>
    <link rel="stylesheet" type="text/css" href="leavelist.css">
    
   
</head>
<body>

<h2 style="text-align: center; margin-top: 30px;">Leave Applications</h2>
<a href="employee.jsp" class="back-btn"> Back</a>

<table>

<tr><th>Name</th><th>Email</th><th>Reason</th><th>Dates</th><th>Actions</th></tr>

<%



    String loggedInUsername = null;
    if (session != null) {
        loggedInUsername = (String) session.getAttribute("username");
    }




    if (loggedInUsername != null) { // Ensure the user is logged in
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "");

            // Modify the query to join the users and leaveapply table
            String query = "SELECT la.*, s.username FROM leaveapply la " +
                           "JOIN signupdb s ON la.email = s.email WHERE s.username = ?";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, loggedInUsername);  // Set the username parameter
            ResultSet rs = pstmt.executeQuery();

            while(rs.next()) {
%>
<tr>
    <td><%=rs.getString("firstName")%> <%=rs.getString("lastName")%></td>
    <td><%=rs.getString("email")%></td>
    <td><%=rs.getString("reason")%></td>
    <td><%=rs.getString("startDate")%> to <%=rs.getString("endDate")%></td>
    <td class="actions">
        <a href="UpdateLeave.jsp?id=<%=rs.getInt("id")%>">Update</a> | 
        <a href="DeleteLeaveController?id=<%=rs.getInt("id")%>" onclick="return confirm('Are you sure you want to delete this leave application?')">Delete</a>
    </td>
</tr>
<%
            }
            conn.close();
        } catch(Exception e) {
            out.println("Error: " + e);
        }
    } else {
        out.println("<p>You must be logged in to view your leave applications.</p>");
    }
%>
</table>

</body>
</html>
