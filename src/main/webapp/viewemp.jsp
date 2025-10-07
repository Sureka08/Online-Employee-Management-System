<%@ page import="java.util.List" %>
<%@ page import="Model.AddEmpModel" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>EMPLOYEE LIST</title>
<link rel= "stylesheet" type="text/css" href="viewemp.css">
</head>
<body>

<a href="admin.jsp" class="back-btn"> Back</a>

<h2>Employee Details</h2>

<div class="search-box">
    <input type="text" id="searchInput" onkeyup="searchTable()" placeholder="Search for employees...">
</div>

<table id="empTable">
    <thead>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Gender</th>
            <th>DOB</th>
            <th>Nationality</th>
            <th>Email</th>
            <th>Mobile</th>
            <th>Address</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <%
        List<AddEmpModel> empList = (List<AddEmpModel>) request.getAttribute("empList");
                    if (empList != null) {
                        for (AddEmpModel emp : empList) {
        %>
        <tr>
            <td><%= emp.getFirstName() %></td>
            <td><%= emp.getLastName() %></td>
            <td><%= emp.getGender() %></td>
            <td><%= emp.getDob() %></td>
            <td><%= emp.getNationality() %></td>
            <td><%= emp.getEmail() %></td>
            <td><%= emp.getMobile() %></td>
            <td><%= emp.getAddress() %></td>
            <td>
               
    			<a href="editemp?id=<%= emp.getId() %>" class="btn">Edit</a>
   			    <a href="deleteempC?id=<%= emp.getId() %>" class="btn" onclick="return confirm('Are you sure?');">Delete</a>

            </td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="9">No employees found.</td>
        </tr>
        <% } %>
    </tbody>
</table>

<script>
    function searchTable() {
        var input = document.getElementById("searchInput");
        var filter = input.value.toUpperCase();
        var table = document.getElementById("empTable");
        var tr = table.getElementsByTagName("tr");

        for (var i = 1; i < tr.length; i++) {
            var found = false;
            var td = tr[i].getElementsByTagName("td");
            for (var j = 0; j < td.length; j++) {
                if (td[j] && td[j].innerText.toUpperCase().indexOf(filter) > -1) {
                    found = true;
                    break;
                }
            }
            tr[i].style.display = found ? "" : "none";
        }
    }
</script>

</body>
</html>
