<%@ page import="java.util.List" %>
<%@ page import="Model.LeaveModel" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>VIEW LEAVE APPLICATION</title>
    <style>
        table { border-collapse: collapse; width: 100%; }
        th, td { border: 1px solid #ccc; padding: 8px; }
        th { background-color: #f2f2f2; }
        .back-btn {
  display: inline-block;
  padding: 8px 16px;
  background-color: #3498db;
  color: #fff;
  text-decoration: none;
  border-radius: 6px;
  font-weight: bold;
  transition: background-color 0.3s ease;
}

.back-btn:hover {
  background-color: #2980b9;
}
        
        
    </style>
</head>
<body>
<a href="admin.jsp" class="back-btn"> Back</a>

<h2>Leave Applications</h2>

<table>
<thead>
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Phone</th>
        <th>Email</th>
        <th>Reason</th>
        <th>Start Date</th>
        <th>End Date</th>
    </tr>
    </thead>
  <tbody>  
<%
  List<LeaveModel> leaveList = (List<LeaveModel>) request.getAttribute("leaveList");
      if (leaveList != null) {
          for (LeaveModel l : leaveList) {
  %>
    <tr>
        <td><%= l.getFirstName() %></td>
        <td><%= l.getLastName() %></td>
        <td><%= l.getPhone() %></td>
        <td><%= l.getEmail() %></td>
        <td><%= l.getReason() %></td>
        <td><%= l.getStartDate() %></td>
        <td><%= l.getEndDate() %></td>
    </tr>
<%
        }
    } else {
%>
    <tr><td colspan="7">No leave applications found.</td></tr>
<%
    }
%>
</tbody>
</table>

</body>
</html>
