<%@ page import="java.util.*,Dao.ContactDao,Model.ContactModel,Utils.ContactUtils" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>CONTACT DETAILS</title>
    <link rel= "stylesheet" type="text/css" href="admincontact.css">
    
</head>
<body>
<a href="admin.jsp" class="back-btn"> Back</a>

<h2>Submitted Contact Messages</h2>
<table border="1">
    <tr>
        <th>First Name</th><th>Last Name</th><th>Phone</th><th>DOB</th><th>Address</th><th>Email</th>
    </tr>
  <%
  try {
            ContactDao dao = new ContactDao(ContactUtils.getConnection());
            List<ContactModel> contacts = dao.getAllContacts();
            for (ContactModel c : contacts) {
  %>
<tr>
    <td><%= c.getFirstName() %></td>
    <td><%= c.getLastName() %></td>
    <td><%= c.getPhone() %></td>
    <td><%= c.getDob() %></td>
    <td><%= c.getAddress() %></td>
    <td><%= c.getEmail() %></td>
</tr>
<%
        }
    } catch (Exception e) {
        out.println("<tr><td colspan='6'>Error: " + e.getMessage() + "</td></tr>");
    }
%>
</table>
<br><br>


