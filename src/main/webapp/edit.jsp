<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UPDATE HERE</title>
    <link rel= "stylesheet" type="text/css" href="addemployee.css">

</head>
<body>
<div class="container">
<a href="viewemp" class="back-btn"> Back</a>

    <h1>Update Form</h1>
    
<%@ page import="Model.AddEmpModel" %>
<%
AddEmpModel emp = (AddEmpModel) request.getAttribute("emp");
%>
<form action="updateemp" method="post">
<div class="form-section">
            <div class="form-title">Personal Details</div>
            
   		    <input type="hidden" name="id" value="<%= emp.getId() %>" />

            <label for="firstName">First Name *</label>
            <input type="text" id="firstName" name="firstName" value="<%= emp.getFirstName() %>">

          
            <label for="lastName">Last Name *</label>
            <input type="text" id="lastName" name="lastName" value="<%= emp.getLastName() %>">

            <label for="gender">Gender</label>
            <select name="gender" id="gender" >
                <option value="<%= emp.getGender() %>"><%= emp.getGender() %></option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>

            <label for="dob">Date of Birth</label>
            <input type="date" id="dob" name="dob" value="<%= emp.getDob() %>">
            <br>

            <label for="nationality">Nationality</label>
            <select name="nationality" id="nationality">
                <option value="<%= emp.getNationality() %>"><%= emp.getNationality() %></option>
                <option value="Indian">Indian</option>
                <option value="American">American</option>
                <option value="Australian">Australian</option>
                <option value="German">German</option>
                <option value="Japanese">Japanese</option>
                <option value="Canadian">Canadian</option>
                <option value="French">French</option>
                <option value="SriLankan">SriLankan</option>
                <option value="Chinese">Chinese</option>
                <option value="Russian">Russian</option>
                <option value="Italian">Italian</option>
                <option value="Other">Other</option>
            </select>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" value="<%= emp.getEmail() %>">

            
            <label for="mobile">Mobile</label>
            <input type="text" id="mobile" name="mobile" value="<%= emp.getMobile() %>">
            
             <label for="address">Address</label>
            <input type="text" id="address" name="address"  value="<%= emp.getAddress() %>">

    
    <input type="submit" value="Update">
    </div>
</form>
</div>

</body>
</html>